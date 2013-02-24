import System.Environment
import Data.List

{---------------------------------------------------------------
 <summary>
   Create syntax highlight file from tags file for vim.
 <args>
   arg1 : tags file as source
   arg2 : rule file for matching tags to syn
   arg3 : syntax highlight file as destination
 ---------------------------------------------------------------}
main = do
	args <- getArgs
	src <- readFile $ getTagsPath args
	ruleSrc <- readFile $ getRulePath args
	let keywords = extractKeywordMap $ lines src
	let rules = interpretRule ruleSrc
	print keywords
	print rules
	print $ makeKeywordTypeMap keywords rules
	print $ makeSynSentence $ makeKeywordTypeMap keywords rules
	print $ makeKeywordHighlightSentence rules
	let dstPath = getSynPath args
	writeFile dstPath $ makeSynSentence $ makeKeywordTypeMap keywords rules
	appendFile dstPath "\n"
	appendFile dstPath $ makeKeywordHighlightSentence rules

----------------------------------
-- Body
----------------------------------
-- make keyword highlight sentence
makeKeywordHighlightSentence :: [(String,String)] -> String
makeKeywordHighlightSentence rs = unlines $ map (\j -> "hi link " ++ (snd j) ++ " Keyword") rs


-- make syntax highlight sentence
makeSynSentence :: [(String,[String])] -> String
makeSynSentence keyMap = unlines $ map makeSynSentenceSub keyMap

makeSynSentenceSub :: (String,[String]) -> String
makeSynSentenceSub keyVals = ("syn keyword " ++ fst keyVals) ++ " " ++ (unwords $ snd keyVals) 

-- make keyword-type map
makeKeywordTypeMap :: [(String,String)] -> [(String,String)] -> [(String,[String])]
makeKeywordTypeMap ks rs = filter ((/=) 0 . length . snd) $ map (makeKeywordTypeMapSub ks) rs

makeKeywordTypeMapSub :: [(String,String)] -> (String,String) -> (String,[String])
makeKeywordTypeMapSub keys rule = (snd rule, nub $ map fst $ filter ((==) (fst rule) . snd) keys)

-- return type-keyword mapping list
extractKeywordMap :: [String] -> [(String, String)]
extractKeywordMap [] = []
extractKeywordMap src = map extractKeywordMapSub $ filter (not . isHeaderLine) src

extractKeywordMapSub :: String -> (String, String)
extractKeywordMapSub src = (head wrds, last wrds)
	where
		wrds = words src

isHeaderLine ('!':_) = True
isHeaderLine otherwise = False

-- interpret rule
interpretRule :: String -> [(String, String)]
interpretRule src = map (\j -> (head j, head $ tail j)) $ map words $ lines src

-- get tags file path from args
getTagsPath :: [String] -> String
getTagsPath [] = "./tags" -- for debug
getTagsPath (h:t) = h

-- get rule file path from args
getRulePath :: [String] -> String
getRulePath [] = "./rule" -- for debug
-- getRulePath (f:[]) = "./rule" -- for debug
getRulePath (h:t) = head t

-- get syntax highlight file path from args
getSynPath :: [String] -> String
getSynPath [] = "./bd.vim" -- for debug
-- getSynPath (f:[]) = "./bd.vim" -- for debug
getSynPath (a:b:c) = head c

