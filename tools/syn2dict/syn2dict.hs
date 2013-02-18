import System

{---------------------------------------------------------------
 <summary>
   Create dictionary file from syntax file for vim.
   Judge syntax keywords as words to contain in dictionary.
 <args>
   arg1 : syntax file as source
   arg2 : dictionary file as destination
 ---------------------------------------------------------------}
main = do
    args <- getArgs
    src <- readFile $ getSynPath args
    let keywords = unlines $ extractKeywords src
    putStrLn keywords -- for confirming
    writeFile (getDictPath args) keywords

----------------------------------
-- Main
----------------------------------
extractKeywords :: String -> [String] 
extractKeywords src = foldl (++) [] (map extractKeywordsFromLine (map words (lines src)))


extractKeywordsFromLine :: [String] -> [String]
extractKeywordsFromLine ("syntax":"keyword":_:rest) = rest
extractKeywordsFromLine ("syn":"keyword":_:rest) = rest
extractKeywordsFromLine otherwise = []

getSynPath :: [String] -> String
-- getSynPath [] = "./io.vim" -- for debug
getSynPath (h:t) = h

getDictPath :: [String] -> String
-- getDictPath [] = "./io.dict" -- for debug
-- getDictPath (f:[]) = "./io.dict" -- for debug
getDictPath (f:s) = head s
