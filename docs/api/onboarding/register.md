
# Register

## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [MAIN API URL]/Member/Register                |
| Request Method | POST                                          |
| Request Method | GET                                           |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name          | Data Type | Mandatory | Length | Description                                                                                                   |
| :---------------- | :-------- | :-------- | ------ | :------------------------------------------------------------------------------------------------------------ |
| Username          | String    | YES       | 6 - 30 | Accept A-Z, a-z, 0-9, no symbol allow                                                                         |
| Name              | String    | YES       | 6 - 30 | Accept A-Z,a-z no symbol allow                                                                                |
| RegisterType      | Int       | YES       |        | Refer to [Register Type](../../reference/reference_codes.md#register-type)                                    |
| RegisterUID       | String    | Optional  |        | If Register type = 1,2,3 , then mandatory. Social ID                                                          |
| Email             | String    | YES       |        |                                                                                                               |
| Password          | String    | YES       | 8 - 16 |                                                                                                               |
| Pin               | String    | YES       | 4      |                                                                                                               |
| PhoneNumber       | String    | YES       |        | Format 61xxxxxxxxx (Only Digit allow)                                                                         |
| TACCode           | String    | YES       |        | Tac code register                                                                                             |
| ReferralBy        | String    | Optional  |        | Upline Member Code                                                                                            |
| NotificationToken | String    | YES       |        | Firebase Token or other notification token                                                                    |
| OSVersion         | String    | YES       |        |                                                                                                               |
| Platform          | Int       | YES       |        | Refer to [Platform](../../reference/reference_codes.md#platform)                                              |
| PhoneBrand        | String    | YES       |        | Phone Brand, exp : Samsung, OPPO …                                                                            |
| PhoneModel        | String    | YES       |        | Phone Model                                                                                                   |
| PhoneImei         | String    | YES       |        | Phone Imei                                                                                                    |
| LineBrand         | String    | YES       |        | Network Brand                                                                                                 |
| LineCountry       | String    | YES       |        | Network Brand Country                                                                                         |
| AppVersion        | String    | YES       |        | Joker Plus App Version                                                                                        |
| Language          | Int       | Optional  |        | 1: EN 2:CN 3:MS …….. Language Code                                                                            |
| EmailVerifyId     | Int       | Yes       |        | ID that get from email verification                                                                           |
| Hash              | String    | YES       |        | "SHA256( Name + Username + Password + Pin + Email + PhoneNumber + TACCode + EmailVerifyId + SHA256 Salt Key)" |

## Return

| Key Name              | Data Type | Mandatory | Length | Description                                                                                   |
| :-------------------- | :-------- | :-------- | :----- | :-------------------------------------------------------------------------------------------- |
| Id                    | Int       | YES       |        |                                                                                               |
| Name                  | String    | YES       |        |                                                                                               |
| UserName              | String    | YES       |        |                                                                                               |
| Email                 | String    | YES       |        |                                                                                               |
| MemberReferralCode    | String    | Yes       | 10-12  |                                                                                               |
| ImageUrl              | String    | YES       |        |                                                                                               |
| Phone                 | String    | YES       |        |                                                                                               |
| ReferralBy            | String    | YES       |        |                                                                                               |
| Point                 | Decimal   | YES       |        |                                                                                               |
| CreateDate            | String    | YES       |        | We return the time in Universal Time format. Please convert to your local time (like UTC+10). |
| WalletCash            | Decimal   | YES       |        |                                                                                               |
| QuitPageFlag          | String    | YES       |        |                                                                                               |
| WithdawBankId         | Int       | YES       |        |                                                                                               |
| WithdrawBankAccName   | String    | YES       |        |                                                                                               |
| WithdrawBankAccNumber | String    | YES       |        |                                                                                               |

**WithdrawBankAccountList**

| Key Name      | Data Type | Mandatory | Length | Description                                              |
| :------------ | :-------- | :-------- | :----- | :------------------------------------------------------- |
| Id            | Int       | YES       |        | Link to some related table                               |
| BankId        | Int       | YES       |        | Refer to [Bank](../../reference/reference_codes.md#bank) |
| AccountName   | String    | YES       |        |                                                          |
| AccountNumber | String    | YES       |        |                                                          |
| IsDefault     | Bool      | YES       |        |                                                          |

**DepositBankList**

| Key Name        | Data Type | Mandatory | Length | Description                |
| :-------------- | :-------- | :-------- | :----- | :------------------------- |
| Id              | Int       | YES       |        | Link to some related table |
| BankId          | Int       | YES       |        | Refer to 7.9 Bank          |
| AccountName     | String    | YES       |        |                            |
| AccountNumber   | String    | YES       |        |                            |
| MemberSecretKey | String    | YES       |        |                            |

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
|                  |           |           |        |                                                                                               |
| LocalAPIURL      | String    | YES       |        |                                                                                               |
| LoginFacebook    | String    | YES       |        |                                                                                               |
| LoginGoogle      | String    | YES       |        |                                                                                               |
| LoginApple       | String    | YES       |        |                                                                                               |
| LinkDateFacebook | String    | YES       |        | We return the time in Universal Time format. Please convert to your local time (like UTC+10). |
| LinkDateGoogle   | String    | YES       |        | We return the time in Universal Time format. Please convert to your local time (like UTC+10). |
| LinkDateApple    | String    | YES       |        | We return the time in Universal Time format. Please convert to your local time (like UTC+10). |
| Language         | Int       | YES       |        | Refer to [Language](../../reference/reference_codes.md#language)                              |

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
            "Language": "Int"
        }
    }

    ```


## Response Code & Message


| ResponseCode | ReponseMessage                                |
| ------------ | --------------------------------------------- |
| 12           | Your referral code is incorrect               |
| 11           | Fail to verify email                          |
| 10           | Invalid referral code                         |
| 9            | This email already taken please try again     |
| 8            | This username already taken please try again  |
| 7            | Account already register, please try to login |
| 6            | Invalid password                              |
| 5            | Invalid phone number                          |
| 4            | Invalid pin                                   |
| 3            | Invalid username                              |
| 2            | Invalid email                                 |
| 1            | Invalid name                                  |
| 0            | Success                                       |
| -1           | Invalid Access                                |
| -2           | Internal server error                         |
| -3           | Unexpected error                              |
| -4           | Invalid social media platform uid             |
| -5           | Invalid register type                         |
| -6           | Member code duplicate                         |
| -7           | Can't find verify email record                |
| -8           | Member code lock please try again later       |
| -9           | Haven't join waitlist                         |