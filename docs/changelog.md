# Changelog

All notable changes to JokerPlus API will be documented in this file.

---

## [Unreleased]

### Added
- New features in development

### Changed
- Improvements in progress

---

## [6.38] - 2025-11-25

### Changed
-  **Soccer API**: Updated `DeleteSoccerFavourite` parameter from "FavouriteId" to "LeagueId", "TeamId"

---

## [6.37] - 2025-11-24

### Added
-  **Soccer API**: `GetLeagueMatches`
-  **Soccer API**: `GetLeagueInfo`
-  **Soccer API**: `GetLeagueStanding`
-  **Soccer API**: `GenerateTokenForSoccerWeb`

### Fixed
-  **Soccer API**: Fixed `GetOnboardingStatus`
-  **Soccer API**: Fixed `SetOnboardingStatus` (now only accepts "IsFinished" as true)

---

## [6.36] - 2025-11-21

### Changed
-  **Soccer API**: Updated `GetSoccerBetHistory` response with data Total, Page, Size, SoccerBetHistory
-  Enhanced paging data for APIs

---

## [6.35] - 2025-11-20

### Changed
-  **Soccer API**: Updated `SoccerBet` to return grouped bet type and summary

---

## [6.34] - 2025-11-19

### Changed
-  **Soccer API**: Updated `UpdateSoccerBetSlip` (only updates bet amount)
-  **Soccer API**: Updated `GetSoccerBetSlip` (returns data based on Match with bet slip list and paging)
-  **Soccer API**: Updated `GetSoccerBetHistory` (returns grouped bet type with paging feature)

---

## [6.33] - 2025-11-18

### Changed
-  **Soccer API**: Updated `DeleteSoccerBetSlip` to support batch delete

---

## [6.32] - 2025-11-17

### Added
-  **Soccer API**: `GetOnboardingStatus`
-  **Soccer API**: `SetOnboardingStatus`
-  **Soccer API**: `GetTeamList`

### Changed
-  **Soccer API**: Updated `GetLeagueList`
-  **Soccer API**: Updated `GetMatchInfo`
-  **Soccer API**: Updated `GetMatchList`

---

## [6.31] - 2025-11-10

### Added
-  **Soccer API**: `AddSoccerFavourite`
-  **Soccer API**: `DeleteSoccerFavourite`
-  **Soccer API**: `GetSoccerFavouriteData`
-  **Soccer API**: `GetSoccerFavouriteList`

---

## [6.30] - 2025-10-31

### Added
-  **Soccer API**: BetSlip API (Get, Add, Update, Delete)
-  **Soccer API**: `MatchList`
-  **Soccer API**: `Odds`

---

## [6.29] - 2025-10-30

### Added
-  **Soccer API**: `SoccerBet`
-  **Soccer API**: `GetSoccerBetHistory`

---

## [6.28] - 2025-10-22

### Added
-  **Soccer API**: `GetMatchInfo`
-  **Soccer API**: `GetLeagueList`
-  **Soccer API**: `GetSeasonStanding`
-  **Soccer API**: `GetTeamInfo`

---

## [6.27] - 2025-10-22

### Changed
-  **Slot & Casino**: Modified `TransferCreditToGame` API to auto withdraw last 3rd party game balance when transferring to other games

---

## [6.26] - 2025-10-21

### Added
-  **Slot API**: `GetSlotRoomList` (PRAGMATIC)

---

## [6.25] - 2025-10-17

### Added
-  **Slot API**: `TransferCreditToGame`
-  **Slot API**: `TransferCreditFromGame`

### Changed
-  **Slot & Casino**: Updated `GetSlotGameList` [Pragmatic] JSON response

---

## [6.24] - 2025-09-30

### Added
-  **Slot & Casino API**: `GetSlotGameList`
-  **Slot & Casino API**: `GetLiveCasinoList`

---

## [6.23] - 2025-09-22

### Added
-  **SBO**: SBO login API

---

## [6.22] - 2025-09-18

### Added
-  **Casino API**: `TransferCreditToGame`
-  **Casino API**: `TransferCreditFromGame`

---

## [6.21] - 2025-09-10

### Added
-  **Lucky7**: Added sold out features for Lucky7Bet (LuckyBall, MissMatch, ThreeBall, OddsEvens)
-  **Lucky7**: Auto-handle bet limits (when limit is 2 and user amount is 3, allows buying 2 only)
-  **Lucky7**: Added SoldOutAmount value and special message for sold out scenarios

### Changed
-  **Lucky7**: Updated `GetBetHistory` to include SoldOutAmount for LuckyBall, MissMatch, ThreeBall, OddsEvens

---

## [6.20] - 2025-09-12

### Added
-  **Login API**: Added WinRecordList Data to LoginBySocialApp, LoginByUsername, LoginPin
-  **Member API**: `UpdateWinNoticeStatus`

---

## [6.19] - 2025-10-02

### Added
-  **Aus4D**: Added odds value support [2d, 3d, 4d] in `GetGameOdds`

### Changed
-  **Aus4D**: Updated `Aus4dBet` request parameter "Odds (decimal)" to check latest odds

---

## [6.18] - 2025-09-26

### Changed
-  **Lucky Seven**: `GetResult` API changed from DrawDate to FromDate, ToDate parameters

---

## [6.17] - 2025-09-20

### Added
-  **Beta Mission**: Added Clear Mission Status functionality

---

## [6.16] - 2025-09-18

### Changed
-  **Beta Mission**: Modified `GetMissionStatus`, `CompleteMission`, `SubmitFeedback` - removed betaMissionStatusId return
-  **Beta Mission**: Modified `CompleteMission`, `SubmitFeedback` - added BetaMissionId return

---

## [6.15] - 2025-09-13

### Added
-  **Beta Mission**: Added betaMissionStatusId return to `GetMissionStatus`

### Fixed
-  **Beta Mission**: Fixed return reward ID in `GetMissionStatus`
-  **Beta Mission**: Added betaMissionStatusId return to `SubmitFeedback`

---

## [6.14] - 2025-09-11

### Changed
-  **Beta Mission**: Modified GetMissionStatus, SubmitMissionFeedBack, CompleteMission, CheckHasUnclaimedMission, ClaimMissionPoint
-  **Beta Mission**: Beta Mission ID modified (refer to reference table)

---

## [6.13] - 2025-09-05

### Added
-  **Lucky7**: Added RedLimit to all Lucky7 Bet operations

### Fixed
-  **Lucky7**: Fixed result issue
-  **Security**: Password length validation updated to 6-16 characters

---

## [6.12] - 2025-08-01

### Added
-  **Security**: Local VerifyCode API

### Changed
-  **Security**: Updated local ResetPIN request parameter and response message

---

## [6.11] - 2025-07-30

### Added
-  **Security**: `SendVerifyCodeForResetPIN` API

### Changed
-  **Security**: Updated ResetPIN request parameter and response message

---

## [6.10] - 2025-07-29

### Changed
-  **Beta Mission**: Updated CompleteMission response

---

## [6.09] - 2025-07-22

### Added
-  **Member API**: `RecoverUsernameByEmail`

---

## [6.08] - 2025-06-24

### Changed
-  **BREAKING**: `Get4DCompanyList V2` and `SelectBettingCompany V2` new structure
-  **BREAKING**: API link changed to [LOCAL API URL]/Lottery2/[API NAME]
-  **Important**: Pass CompanyId when placing bets, not CompanyMainId

---

## [6.07] - 2025-06-25

### Changed
-  **Lucky7**: Updated GetResult response

---

## [6.06] - 2025-06-24

### Added
-  **Lucky7**: `GetResult` API

### Changed
-  **Support**: Updated SubmitChatTicket API response code and message

---

## [6.05] - 2025-06-20

### Added
-  **Member API**: `SendSmsVerifyForUpdateEmail`

### Changed
-  **Member API**: Updated Member Action
-  **Member API**: Updated UpdateEmail API request and response

---

## [6.04] - 2025-06-19

### Changed
-  **Beta Mission**: Updated response in GetMissionStatus

---

## [6.03] - 2025-06-13

### Added
-  **Wallet API**: `GetMemberWalletBalance()`
-  **Aus4D**: Added GameTypeId

### Changed
-  **Lucky7**: Updated response data for all bet styles (added IsFav, ReceiptId, OrderId)
-  **Lucky7**: Updated GetBetHistory request parameters and response data
-  **Lucky7**: Updated GetGameOdds response data
-  **Lottery4D**: Timestamp converted to UTC-0
-  **Lottery4D**: Get Single Bet Company changed to GD lotto

### Fixed
-  **Lottery4D**: If company closed, response JSON result will be different and receipt will not be generated

---

## [6.02] - 2025-06-11

### Changed
-  **Beta Mission**: Updated SubmitMissionFeedbackAndClaimReward response

---

## [6.01] - 2025-06-10

### Added
-  **Lucky7**: `GetLucky7Company` API

### Changed
-  **BREAKING**: GetAus4dBetNextDrawTime CompanyId and CompanyName changed to Id and Name
-  **Removed**: TimeSlot removed from GetAus4dBetNextDrawTime
-  **Performance**: GetTransactionHistory linked to SQL

---

## [6.0] - 2025-06-07

### Added
-  **Lucky7 API**: Complete Lucky7 API implementation
-  **Timezone**: Aus4D timestamp converted to UTC-0

### Changed
-  **Temporary**: AUS4D timestamp values temporarily returned in UTC+8 instead of UTC+0 (now fixed)

---



