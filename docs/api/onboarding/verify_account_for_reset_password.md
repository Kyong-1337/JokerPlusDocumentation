
# Verify Account For Reset Password
Application: Forgot Password, Sign in Manually_PasswordDoesn'tMatch

## Requests

| PARAM          | VALUE                                               |
| :------------- | :-------------------------------------------------- |
| URL            | [MAIN API URL]/Member/VerifyAccountForResetPassword |
| Request Method | POST                                                |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]);       |


## Parameters

| Key Name   | Data Type | Mandatory | Description                                                                                                      |
| :--------- | :-------- | :-------- | :--------------------------------------------------------------------------------------------------------------- |
| Type       | Int       | YES       | Refer to [Send Message Type](../../reference/reference_codes.md#send-message-type)                               |
| VerifyType | Int       | YES       | Refer to [Verify Type](../../reference/reference_codes.md#verify-type)                                           |
| Contact    | String    | YES       | If VerifyType  = 0, give username </br> If VerifyType = 1, give phone number </br> If VerifyType = 2, give Email |
| Hash       | String    | YES       | "SHA256(`Type` + `VerifyType` + `Contact` + `SHA256 Salt Key` )"                                                 |

## Response

???+ Response

    ```json
    {
        "ResponseCode": "Int",
        "ResponseMsg": "String",
        "ResponseData": {
            "Phone": "String",
            "PhoneMask": "String",
            "EmailMask": "String"
        }
    }
    ```


## Response Code & Message


| ResponseCode | ReponseMessage            |
| ------------ | ------------------------- |
| 6            | This email haven't verify |
| 5            | Can't get user contact    |
| 4            | Can't find user           |
| 3            | Invalid email             |
| 2            | Invalid phone             |
| 1            | Invalid username          |
| 0            | Success                   |
| -1           | Invalid Access            |
| -2           | Internal Server Error     |
| -3           | Unexpected error          |