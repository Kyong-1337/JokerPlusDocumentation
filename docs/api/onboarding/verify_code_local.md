
# Verify Code (Local)


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [LOCAL API URL]/Member/VerifyCode             |
| Request Method | POST                                          |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name   | Data Type | Mandatory | Description                                                                        |
| :--------- | :-------- | :-------- | :--------------------------------------------------------------------------------- |
| MemberId   | Int       | YES       |                                                                                    |
| Action     | Int       | YES       | Refer to [Member Action](../../reference/reference_codes.md#member-action)         |
| Type       | Int       | YES       | Refer to [Send Message Type](../../reference/reference_codes.md#send-message-type) |
| Contact    | String    | YES       | Email or phone Format 61xxxxxxxxx (phone Only Digit allow)                         |
| VerifyCode | String    | YES       | Verify Code                                                                        |
| Hash       | String    | YES       | SHA256( `Action` + `Type` + `Contact` + `VerifyCode` + `MemberSecretKey`)          |


## Response

???+ Response

    ```json
    {
        "ResponseCode": "Int",
        "ResponseMsg": "String",
        "ResponseData": null
    }
    ```


## Response Code & Message


| ResponseCode | ReponseMessage               |
| ------------ | ---------------------------- |
| 3            | Code not match               |
| 2            | Exceed request, code expired |
| 1            | Invalid code request         |
| 0            | Success                      |
| -1           | Invalid Access               |
| -2           | Internal server error        |
| -3           | Unexpected error             |