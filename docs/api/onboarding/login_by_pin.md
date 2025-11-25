
# Login By Pin

## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [LOCAL API URL]/Member/LoginByPin             |
| Request Method | POST                                          |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name          | Data Type | Mandatory | Length | Description                                                             |
| :---------------- | :-------- | :-------- | ------ | :---------------------------------------------------------------------- |
| MemberId          | int       | YES       |        |                                                                         |
| Pin               | String    | YES       | 4      |                                                                         |
| NotificationToken | String    | YES       |        | Firebase Token or other notification token                              |
| OSVersion         | String    | YES       |        |                                                                         |
| Platform          | Int       | YES       |        | Refer to [Platform](../../reference/reference_codes.md#platform)        |
| PhoneBrand        | String    | YES       |        | Phone Brand, exp : Samsung, OPPO …                                      |
| PhoneModel        | String    | YES       |        | Phone Model                                                             |
| PhoneImei         | String    | YES       |        | Phone Imei                                                              |
| LineBrand         | String    | YES       |        | Network Brand                                                           |
| LineCountry       | String    | YES       |        | Network Brand Country                                                   |
| AppVersion        | String    | YES       |        | Joker Plus App Version                                                  |
| Hash              | String    | YES       |        | SHA256(SocialAppType + SocialUID + NotificationToken + SHA256 Salt Key) |


## Return

| Key Name               | Data Type | Mandatory | Length | Description                                                                                   |
| :--------------------- | :-------- | :-------- | :----- | :-------------------------------------------------------------------------------------------- |
| Id                     | Int       | YES       |        |                                                                                               |
| Name                   | String    | YES       |        |                                                                                               |
| UserName               | String    | YES       |        |                                                                                               |
| Email                  | String    | YES       |        |                                                                                               |
| MemberReferralCode     | String    | Yes       | 10-12  |                                                                                               |
| ImageUrl               | String    | YES       |        |                                                                                               |
| Phone                  | String    | YES       |        |                                                                                               |
| ReferralBy             | Int       | YES       |        |                                                                                               |
| Point                  | Decimal   | YES       |        |                                                                                               |
| CreateDate             | String    | YES       |        | We return the time in Universal Time format. Please convert to your local time (like UTC+10). |
| WalletCash             | Decimal   | YES       |        |                                                                                               |
| QuitPageFlag           | String    | YES       |        |                                                                                               |
| WithdawBankId          | Int       | YES       |        |                                                                                               |
| WithdrawBankAccName    | String    | YES       |        |                                                                                               |
| WithdrawBankAccNumber  | String    | YES       |        |                                                                                               |

*WithdrawBankAccountList*
 
| Key Name      | Data Type | Mandatory | Length | Description                                              |
| :------------ | :-------- | :-------- | :----- | :------------------------------------------------------- |
| Id            | Int       | YES       |        | Link to some related table                               |
| BankId        | Int       | YES       |        | Refer to [Bank](../../reference/reference_codes.md#bank) |
| AccountName   | String    | YES       |        |                                                          |
| AccountNumber | String    | YES       |        |                                                          |
| IsDefault     | Bool      | YES       |        |                                                          |

**DepositBankList**

| Key Name        | Data Type | Mandatory | Length | Description                                              |
| :-------------- | :-------- | :-------- | :----- | :------------------------------------------------------- |
| Id              | Int       | YES       |        | Link to some related table                               |
| BankId          | Int       | YES       |        | Refer to [Bank](../../reference/reference_codes.md#bank) |
| AccountName     | String    | YES       |        |                                                          |
| AccountNumber   | String    | YES       |        |                                                          |
| MemberSecretKey | String    | YES       |        |                                                          |

**InterestList**

| Key Name | Data Type | Mandatory | Length | Description |
| :------- | :-------- | :-------- | :----- | :---------- |
| Id       | Int       | YES       |        |             |
| Name     | String    | YES       |        |             |

**CreditCardList**

| Key Name         | Data Type | Mandatory | Length | Description                                                                                   |
| :--------------- | :-------- | :-------- | :----- | :-------------------------------------------------------------------------------------------- |
| Id               | Int       | YES       |        |                                                                                               |
| Company          | Int       | YES       |        | Refer to [Credit Card Company](../../reference/reference_codes.md#credit-card-company)        |
| CardNumber       | String    | YES       |        |                                                                                               |
| CardHolderName   | String    | YES       |        |                                                                                               |
| ExpiryDate       | String    | YES       |        |                                                                                               |
| IsDefault        | Bool      | YES       |        |                                                                                               |
| LocalAPIURL      | String    | YES       |        |                                                                                               |
| LoginFacebook    | String    | YES       |        |                                                                                               |
| LoginGoogle      | String    | YES       |        |                                                                                               |
| LoginApple       | String    | YES       |        |                                                                                               |
| LinkDateFacebook | String    | YES       |        | We return the time in Universal Time format. Please convert to your local time (like UTC+10). |
| LinkDateGoogle   | String    | YES       |        | We return the time in Universal Time format. Please convert to your local time (like UTC+10). |
| LinkDateApple    | String    | YES       |        | We return the time in Universal Time format. Please convert to your local time (like UTC+10). |
| Language         | Int       | YES       |        | 1: EN 2:CN 3:MS …….. Language Code                                                            |

**Win Record List**

| Key Name         | Data Type | Mandatory | Length | Description                                                                    |
| :--------------- | :-------- | :-------- | :----- | :----------------------------------------------------------------------------- |
| WinNoticeId      | Int       | YES       |        | Notification ID                                                                |
| ReceiptId        | Int       | YES       |        | Win receipt Id for lucky7 (return 0 for GameType = 1)                          |
| GameType         | Int       | YES       |        | Refer to [GameType](../../reference/reference_codes.md#game-type-alternative)  |
| Lucky7BetStyleId | Int       | YES       |        | Refer to [Lucky7BetStyle](../../reference/reference_codes.md#lucky7-bet-style) |
| OrderId          | int       | YES       |        | OrderId for GameType = 1, return 0 for GameType = 2"                           |


## Response

???+ Response

    ```json
    {
    "ResponseCode": "Int",
    "ResponseMsg": "String",
    "ResponseData": {
        "Id": "Int",
        "Name": "String",
        "UserName": "String",
        "Email": "String",
        "MemberReferralCode": "String",
        "ImageUrl": "String",
        "Phone": "String",
        "ReferralBy": "Int",
        "Point": "Decimal",
        "CreateDate": "String",
        "WalletCash": "Decimal",
        "QuitPageFlag": "string",
        "WithdrawBankId": "Int",
        "WithdrawBankAccName": "String",
        "WithdrawBankAccNumber": "String",
        "WithdrawBankAccountList": [
            {
                "Id": "Int",
                "BankId": "Int",
                "AccountName": "String",
                "AccountNumber": "String",
                "IsDefault": "Bool"
            }
        ],
        "DepositBankList": [
            {
                "Id": "Int",
                "BankId": "Int",
                "AccountName": "String",
                "AccountNumber": "String"
            }
        ],
        "MemberSecretKey": "String",
        "InterestList": [
            {
                "Id": "Int",
                "Name": "String"
            }
        ],
        "CreditCardList": [
            {
                "Id": "Int",
                "Company": "Int",
                "CardNumber": "String",
                "CardHolderName": "String",
                "ExpiryDate": "String",
                "IsDefault": "Bool"
            }
        ],
        "LocalAPIURL": "String",
        "LoginFacebook": "String",
        "LoginGoogle": "String",
        "LoginApple": "String",
        "LinkDateFacebook": "String",
        "LinkDateGoogle": "String",
        "LinkDateApple": "String",
        "Language": "Int",
        "WinRecordList": [
                    {
                        "WinNoticeId": int,
                        "ReceiptId": int,
                        "GameType": int,
                        "Lucky7BetStyleId": int
                        "OrderId": int


                    }
                ]
            }
        }

    ```


## Respose Message & Code


| ResponseCode | ReponseMessage                                                                                      |
| ------------ | --------------------------------------------------------------------------------------------------- |
| 5            | Incorrect password                                                                                  |
| 4            | Invalid Password                                                                                    |
| 3            | Invalid Username                                                                                    |
| 2            | You have reach maximun invalid password access, please contact customer service for unlock account. |
| 1            | Account blocked, please contact customer service.                                                   |
| 0            | Success                                                                                             |
| -1           | Invalid Access                                                                                      |
| -2           | Internal server error                                                                               |
| -3           | Unexpected error                                                                                    |
| -4           | Member not found                                                                                    |