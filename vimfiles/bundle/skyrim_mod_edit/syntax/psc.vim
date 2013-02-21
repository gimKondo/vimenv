" Vim syntax file
" Maintainer:	gim_kondo <dkondo0731@msd.biglobe.ne.jp>
" Create: 	2013 Feb 11
" Last Change: 2013 Feb 21
"   add various keyword from CK Wiki
" Bugs:

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" API
syn keyword pscApi abs acos Activate Add AddAchievement
syn keyword pscApi AddDependentAnimatedObjectReference AddForm
syn keyword pscApi AddHavokBallAndSocketConstraint AddInventoryEventFilter AddItem
syn keyword pscApi AddPerk AddShout AddSpell AddToFaction AddToMap AdvanceSkill
syn keyword pscApi AllowBleedoutDialogue AllowPCDialogue Apply ApplyCrossFade
syn keyword pscApi ApplyHavokImpulse asin atan AttachAshPile BlockActivation
syn keyword pscApi CalculateEncounterLevel CalculateFavorCost CanFastTravelToMarker
syn keyword pscApi CanPayCrimeGold CaptureFrameRate Cast Ceiling CenterOnCell
syn keyword pscApi CenterOnCellAndWait Clear ClearArrested ClearDestruction
syn keyword pscApi ClearExtraArrows ClearForcedMovement ClearKeepOffsetFromActor
syn keyword pscApi ClearLookAt ClearPrison ClearTempEffects CloseUserLog
syn keyword pscApi CompleteAllObjectives CompleteQuest cos CreateDetectionEvent
syn keyword pscApi DamageActorValue DamageAV DamageObject DBSendPlayerPosition
syn keyword pscApi DebugChannelNotify DegreesToRadians Delete DeleteWhenAble Disable
syn keyword pscApi DisableNoWait DisablePlayerControls Dispel DispelAllSpells
syn keyword pscApi DispelSpell DoCombatSpellApply DropObject DumpAliasData Enable
syn keyword pscApi EnableAI EnableFastTravel EnableFastTravel EnableNoWait
syn keyword pscApi EnablePlayerControls EndFrameRateCapture EquipItem EquipShout
syn keyword pscApi EquipSpell EvaluatePackage FadeOutGame FailAllObjectives
syn keyword pscApi FastTravel FindClosestActor FindClosestReferenceOfAnyTypeInList
syn keyword pscApi FindClosestReferenceOfType FindRandomActor
syn keyword pscApi FindRandomReferenceOfAnyTypeInList FindRandomReferenceOfType
syn keyword pscApi FindWeather Fire Floor ForceActive ForceActorValue
syn keyword pscApi ForceAddRagdollToWorld ForceAV ForceFirstPerson ForceLocationTo
syn keyword pscApi ForceMovementDirection ForceMovementDirectionRamp
syn keyword pscApi ForceMovementRotationSpeed ForceMovementRotationSpeedRamp
syn keyword pscApi ForceMovementSpeed ForceMovementSpeedRamp ForceRefTo
syn keyword pscApi ForceRemoveRagdollFromWorld ForceStart ForceTargetAngle
syn keyword pscApi ForceTargetDirection ForceTargetSpeed ForceThirdPerson
syn keyword pscApi GameTimeToString Get GetActorBase GetActorOwner GetActorReference
syn keyword pscApi GetActorValue GetActorValuePercentage GetAlias GetAngleX GetAngleY
syn keyword pscApi GetAngleZ GetAnimationVariableBool GetAnimationVariableFloat
syn keyword pscApi GetAnimationVariableInt GetAssociatedSkill GetAt GetAV
syn keyword pscApi GetAverageFrameRate GetAVPercentage GetBaseActorValue GetBaseAV
syn keyword pscApi GetBaseObject GetBribeAmount GetBudgetCount GetBudgetName
syn keyword pscApi GetCasterActor GetClass GetClassification GetCombatState
syn keyword pscApi GetCombatTarget GetConfigName GetCrimeFaction GetCrimeGold
syn keyword pscApi GetCrimeGoldNonViolent GetCrimeGoldViolent GetCurrentBudget
syn keyword pscApi GetCurrentDestructionStage GetCurrentGameTime GetCurrentLocation
syn keyword pscApi GetCurrentMemory GetCurrentPackage GetCurrentRealTime
syn keyword pscApi GetCurrentScene GetCurrentStageID GetCurrentWeather
syn keyword pscApi GetCurrentWeatherTransition GetDeadCount GetDialogueTarget
syn keyword pscApi GetDistance GetEditorLocation GetEquippedItemType
syn keyword pscApi GetEquippedShield GetEquippedShout GetEquippedSpell
syn keyword pscApi GetEquippedWeapon GetFactionOwner GetFactionRank
syn keyword pscApi GetFactionReaction GetFavorPoints GetFlyingState
syn keyword pscApi GetForcedLandingMarker GetForm GetFormID GetGameSettingFloat
syn keyword pscApi GetGameSettingInt GetGameSettingString GetGiftFilter GetGoldAmount
syn keyword pscApi GetGoldValue GetHeadingAngle GetHeight GetHigestRelationshipRank
syn keyword pscApi GetHighestRelationshipRank GetInfamy GetInfamyNonViolent
syn keyword pscApi GetInfamyViolent GetItemCount GetItemHealthPercent GetKey
syn keyword pscApi GetKeywordData GetKiller GetLength GetLevel GetLeveledActorBase
syn keyword pscApi GetLightLevel GetLinkedRef GetLocation GetLockLevel
syn keyword pscApi GetLowestRelationshipRank GetMass GetMaxFrameRate GetMinFrameRate
syn keyword pscApi GetNoBleedoutRecovery GetNthLinkedRef GetOpenState
syn keyword pscApi GetOutgoingWeather GetOwningQuest GetParentCell GetPlatformName
syn keyword pscApi GetPlayer GetPlayerControls GetPlayerGrabbedRef
syn keyword pscApi GetPlayersLastRiddenHorse GetPositionX GetPositionY GetPositionZ
syn keyword pscApi GetRace GetReaction GetRealHoursPassed GetReference
syn keyword pscApi GetRefTypeAliveCount GetRefTypeDeadCount GetRegard
syn keyword pscApi GetRelationshipRank GetReputation GetScale GetSex GetSitState
syn keyword pscApi GetSize GetSkyMode GetSleepState GetStage GetStageDone GetState
syn keyword pscApi GetStolenItemValueCrime GetStolenItemValueNoCrime GetTargetActor
syn keyword pscApi GetTemplate GetTriggerObjectCount GetValue GetVersionNumber
syn keyword pscApi GetVoiceRecoveryTime GetVoiceType GetWidth GetWorldSpace GoToState
syn keyword pscApi GtLockLevel HasAssociation HasCommonParent HasEffectKeyword
syn keyword pscApi HasFamilyRelationship HasForm HasKeyword HasLOS HasMagicEffect
syn keyword pscApi HasMagicEffectWithKeyword HasNode HasParentRelationship HasPerk
syn keyword pscApi HasRefType HasSpell HideTitleSequenceMenu IgnoreFriendlyHits
syn keyword pscApi IncrementSkill IncrementSkillBy IncrementStat InterruptCast
syn keyword pscApi Is3DLoaded IsActionComplete IsActivateChild
syn keyword pscApi IsActivateControlsEnabled IsActivationBlocked IsActive IsAlarmed
syn keyword pscApi IsAlerted IsAllowedToFly IsArrested IsArrestingTarget IsAttached
syn keyword pscApi IsBleedingOut IsBribed IsCamSwitchControlsEnabled IsChild
syn keyword pscApi IsCleared IsCommandedActor IsCompleted IsDead IsDetectedBy
syn keyword pscApi IsDisabled IsDoingFavor IsEquipped IsEssential IsEuiped
syn keyword pscApi IsFactionInCrimeGroup IsFastTravelEnabled
syn keyword pscApi IsFightingControlsEnabled IsFlying IsFurnitureInUse
syn keyword pscApi IsFurnitureMarkerInUse IsGhost IsGuard IsHostile IsHostileToActor
syn keyword pscApi IsIgnoringFriendlyHits IsInCombat IsInDialogueWithPlayer
syn keyword pscApi IsInFaction IsInInterior IsInKillMove IsInMenuMode IsInterior
syn keyword pscApi IsIntimidated IsInvulnerable IsJournalControlsEnabled IsLoaded
syn keyword pscApi IsLockBroken IsLocked IsLookingControlsEnabled IsMapMarkerVisible
syn keyword pscApi IsMenuControlsEnabled IsMovementControlsEnabled
syn keyword pscApi IsObjectiveCompleted IsObjectiveDisplayed IsObjectiveFailed
syn keyword pscApi IsPlayerExpelled IsPlayersLastRiddenHorse IsPlayerTeammate
syn keyword pscApi IsPlaying IsProtected IsRunning IsSameLocation IsSneaking
syn keyword pscApi IsSneakingControlsEnabled IsSprinting IsStageDone IsStartin
syn keyword pscApi IsStarting IsStopped IsStopping IsTrespassing IsUnconscious
syn keyword pscApi IsUnique IsWeaponDrawn IsWordUnlocked KeepOffsetFromActor Kill
syn keyword pscApi KillSilent KnockAreaEffect LearnAllEffects LearnEffect
syn keyword pscApi LearnNextEffect Lock MessageBox ModActorValue ModAV ModCrimeGold
syn keyword pscApi ModFactionRank ModFavorPoints ModFavorPointsWithGlobal ModReaction
syn keyword pscApi ModRegard MoveTo MoveToInteractionLocation MoveToMyEditorLocation
syn keyword pscApi MoveToNode MoveToPackageLocation MoveToWhenUnloaded Mute
syn keyword pscApi Notification OpenInventory OpenUserLog OverBudget PathToReference
syn keyword pscApi Pause PlaceActorAtMe PlaceAtMe Play PlayAndWait PlayAnimation
syn keyword pscApi PlayAnimationAndWait PlayerKnows PlayerMoveToAndWait
syn keyword pscApi PlayerPayCrimeGold PlayGamebryoAnimation PlayIdle
syn keyword pscApi PlayIdleWithTarget PlayImpactEffect PlaySubGraphAnimation
syn keyword pscApi PlaySyncedAnimationAndWaitSS PlaySyncedAnimationSS
syn keyword pscApi PlayTerrainEffect PopTo pow PrecacheCharGen PrecacheCharGenClear
syn keyword pscApi ProcessTrapHit PushActorAway QueryStat QuitGame QuitToMainMenu
syn keyword pscApi RadiansToDegrees RandomFloat RandomInt RegisterForAnimationEvent
syn keyword pscApi RegisterForLOS RegisterForSingleLOSGain RegisterForSingleLOSLost
syn keyword pscApi RegisterForSingleUpdate RegisterForSingleUpdateGameTime
syn keyword pscApi RegisterForSleep RegisterForTrackedStatsEvent RegisterForUpdate
syn keyword pscApi RegisterForUpdateGameTime ReleaseOverride RemoteCast Remove
syn keyword pscApi RemoveAddedForm RemoveAllInventoryEventFilters RemoveAllItems
syn keyword pscApi RemoveCrossFade RemoveDependentAnimatedObjectReference
syn keyword pscApi RemoveFromAllFactions RemoveFromFaction RemoveHavokConstraints
syn keyword pscApi RemoveInventoryEventFilter RemoveItem RemovePerk RemoveShout
syn keyword pscApi RemoveSpell RequestAutoSave RequestModel RequestSave Reset
syn keyword pscApi ResetHealthAndLimbs ResetHelpMessage RestoreActorValue RestoreAV
syn keyword pscApi Resurrect Revert Say SendAnimationEvent SendAssaultAlarm
syn keyword pscApi SendPlayerToJail SendStealAlarm SendStoryEvent
syn keyword pscApi SendStoryEventAndWait SendTrespassAlarm SendWereWolfTransformation
syn keyword pscApi ServeTime Set SetActive SetActorCause SetActorOwner SetActorValue
syn keyword pscApi SetAlert SetAllowFlying SetAlly SetAlpha SetAngle
syn keyword pscApi SetAnimationVariableBool SetAnimationVariableFloat
syn keyword pscApi SetAnimationVariableInt SetAttackActorOnSight SetAV SetBeastForm
syn keyword pscApi SetBribed SetCameraTarget SetCleared SetCrimeFaction SetCrimeGold
syn keyword pscApi SetCrimeGoldViolent SetCriticalStage SetCurrentStageID
syn keyword pscApi SetDestroyed SetDoingFavor SetEnemy SetEssential SetFactionOwner
syn keyword pscApi SetFactionRank SetFogPlanes SetFogPower SetFootIK
syn keyword pscApi SetForcedLandingMarker SetFrequency SetGhost SetGodMode
syn keyword pscApi SetHeadTracking SetHudCartMode SetInChargen SetINIBool SetINIFloat
syn keyword pscApi SetINIInt SetINIString SetInstanceVolume SetIntimidated
syn keyword pscApi SetInvulnerable SetKeywordData SetLockLevel SetLookAt
syn keyword pscApi SetMotionType SetNoBleedoutRecovery SetNoFavorAllowed
syn keyword pscApi SetNotShowOnStealthMeter SetObjectiveCompleted
syn keyword pscApi SetObjectiveDisplayed SetObjectiveFailed SetOpen SetOutfit
syn keyword pscApi SetPlayerAIDriven SetPlayerControls SetPlayerEnemy
syn keyword pscApi SetPlayerExpelled SetPlayerReportCrime SetPlayerResistingArrest
syn keyword pscApi SetPlayerTeammate SetPosition SetProtected SetPublic SetRace
syn keyword pscApi SetRaction SetReaction SetRelationshipRank SetRestrained SetScale
syn keyword pscApi SetSittingRotation SetStage SetUnconscious SetValue SetVehicle
syn keyword pscApi SetVoiceRecoveryTime SetVolume ShakeCamera ShakeController Show
syn keyword pscApi ShowAsHelpMessage ShowBarterMenu ShowFirstPersonGeometry
syn keyword pscApi ShowGiftMenu ShowRaceMenu ShowRefPosition ShowTitleSequenceMenu
syn keyword pscApi ShowTrainingMenu sin SplineTranslateTo SplineTranslateToRefNode
syn keyword pscApi sqrt Start StartCannibal StartCombat StartFrameRateCapture
syn keyword pscApi StartObjectProfiling StartScriptProfiling StartStackProfiling
syn keyword pscApi StartTitleSequence StartVampireFeed Stop StopCombat
syn keyword pscApi StopCombatAlarm StopInstance StopObjectProfiling
syn keyword pscApi StopScriptProfiling StopStackProfiling StopTranslation
syn keyword pscApi TakeScreenshot tan TeachWord TetherToHorse ToggleAI
syn keyword pscApi ToggleCollisions ToggleMenus Trace TraceConditional TraceStack
syn keyword pscApi TraceUser TranslateTo TrapSoul TriggerScreenBlood TryoEnable
syn keyword pscApi TryToAddToFaction TryToDisable TryToKill TryToMoveTo
syn keyword pscApi TryToRemoveFromFaction TryToReset TryToStopCombat UnequipAll
syn keyword pscApi UnEquipItem UnequipItem UnequipShout UnequipSpell
syn keyword pscApi UnLockOwnedDoorsInCell UnlockWord UnMute UnPause
syn keyword pscApi UnregisterForAnimationEvent UnregisterForLOS UnregisterForSleep
syn keyword pscApi UnregisterForTrackedStatsEvent UnregisterForUpdate
syn keyword pscApi UnregisterForUpdateGameTime UpdateCurrentInstanceGlobal
syn keyword pscApi UsingGamepad Wait WaitForAnimationEvent WaitGameTime WaitMenuMode
syn keyword pscApi WillIntimidateSucceed WornHasKeyword

" event handler
syn keyword pscHandler OnActivate OnAnimationEvent OnAttachedToCell
syn keyword pscHandler OnBeginState OnCellAttach OnCellDetach OnCellLoad OnClose
syn keyword pscHandler OnCombatStateChanged OnContainerChanged OnDeath OnDying
syn keyword pscHandler OnDestructionStageChanged OnDetachedFromCell OnEffectFinish
syn keyword pscHandler OnEffectStart OnEndState OnEnterBleedout OnEquipped OnGainLOS
syn keyword pscHandler OnGetUp OnGrab OnHit OnInit OnItemAdded OnItemRemoved OnLoad
syn keyword pscHandler OnLocationChange OnLockStateChanged OnLostLOS OnMagicEffectApply
syn keyword pscHandler OnObjectEquipped OnObjectUnequipped OnOpen OnPackageChange
syn keyword pscHandler OnPackageEnd OnPackageStart OnRaceSwitchComplete OnRead OnRelease
syn keyword pscHandler OnReset OnSell OnSleepStart OnSleepStop OnStoryActivateActor
syn keyword pscHandler OnStoryAddToPlayer OnStoryArrest OnStoryAssaultActor
syn keyword pscHandler OnStoryBribeNPC OnStoryCastMagic OnStoryChangeLocation
syn keyword pscHandler OnStoryCraftItem OnStoryCrimeGold OnStoryCure OnStoryDialogue
syn keyword pscHandler OnStoryDiscoverDeadBody OnStoryEscapeJail OnStoryFlatterNPC
syn keyword pscHandler OnStoryHello OnStoryIncreaseLevel OnStoryIncreaseSkill
syn keyword pscHandler OnStoryInfection OnStoryIntimidateNPC OnStoryJail OnStoryKillActor
syn keyword pscHandler OnStoryNewVoicePower OnStoryPayFine OnStoryPickLock
syn keyword pscHandler OnStoryPlayerGetsFavor OnStoryRelationshipChange
syn keyword pscHandler OnStoryRemoveFromPlayer OnStoryScript OnStoryServedTime
syn keyword pscHandler OnStoryTrespass OnTrackedStatsEvent OnTranslationAlmostComplete
syn keyword pscHandler OnTranslationComplete OnTranslationFailed OnTrapHit OnTrapHitStart
syn keyword pscHandler OnTrapHitStop OnTrigger OnTriggerEnter OnTriggerLeave OnUnequipped
syn keyword pscHandler OnUnload OnUpdate OnUpdateGameTime OnWardHit

" Built-in class
syn keyword pscClass Action Activator ActiveMagicEffect Actor
syn keyword pscClass ActorBase Alias Ammo Apparatus Armor AssociationType Book Cell
syn keyword pscClass Class ConstructibleObject Container Debug Door EffectShader
syn keyword pscClass Enchantment EncounterZone Explosion Faction Flora Form FormList
syn keyword pscClass Furniture Game GlobalVariable Hazard Idle ImageSpaceModifier
syn keyword pscClass ImpactDataSet Ingredient Key Keyword LeveledActor LeveledItem
syn keyword pscClass LeveledSpell Light Location LocationAlias LocationRefType
syn keyword pscClass MagicEffect Math Message MiscObject MusicType ObjectReference
syn keyword pscClass Outfit Package Perk Potion Projectile Quest Race ReferenceAlias
syn keyword pscClass Scene Scroll Shout SoulGem Sound SoundCategory Spell Static String
syn keyword pscClass TalkingActivator Topic TopicInfo Utility VisualEffect VoiceType
syn keyword pscClass Weapon Weather WordOfPower WorldSpace
syn keyword pscStaticClass Debug Game Global Utility

" Built-in Type
syn keyword pscType bool float int
" keyword
syn keyword pscKeyword as auto autoreadonly conditional else elseif endevent endif endproperty
syn keyword pscKeyword extends event false syntax keyword pscKeyword hidden if import length
syn keyword pscKeyword native new none parent property return scriptname self true

syntax region pscOperator start='[*/>=+-]' end='[ 0-9]'he=e-1
syntax region pscString start=/"/ skip=/\\./ end=/"/
syn match   pscNumber	"\<\d\+[lLjJ]\=\>" display
syn match   pscFloat	"\.\d\+\([eE][+-]\=\d\+\)\=[jJ]\=\>" display
syn match   pscFloat	"\<\d\+[eE][+-]\=\d\+[jJ]\=\>" display
syn match   pscFloat	"\<\d\+\.\d*\([eE][+-]\=\d\+\)\=[jJ]\=" display

syntax region pscComment start=/{/ end=/}/
syntax region pscComment start=';' end='$' keepend

highlight link pscApi Function
highlight link pscHandler Define
highlight link pscClass Type
highlight link pscStaticClass Type
highlight link pscType Keyword
highlight link pscKeyword Keyword
highlight link pscString String
highlight link pscComment Comment
highlight link pscOperator Operator

highlight link pscNumber Number
highlight link pscFloat Float

let b:current_syntax = "psc"

