
# Reset Password


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [MAIN API URL]/Member/ResetPassword           |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |

## Parameters

| Key Name   | Data Type | Mandatory | Length | Description                                                                           |
| :--------- | :-------- | :-------- | ------ | :------------------------------------------------------------------------------------ |
| Action     | Int       | YES       |        | Refer to [Member Action](../../reference/reference_codes.md#member-action)            |
| Type       | Int       | YES       |        | Refer to [Send Message Type](../../reference/reference_codes.md#send-message-type)    |
| Contact    | String    | YES       |        | Email or phone Format 61xxxxxxxxx (phone Only Digit allow)                            |
| VerifyCode | String    | YES       |        | Verify Code                                                                           |
| Password   | String    | YES       | 8 - 16 |                                                                                       |
| Hash       | String    | YES       |        | SHA256(`Action` + `Type` + `Contact` + `VerifyCode` + `Password` + `SHA256 Salt Key`) |


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


| ResponseCode | ReponseMessage                      |
| ------------ | ----------------------------------- |
| 1            | Invalid password                    |
| 0            | Success                             |
| -1           | Invalid Access                      |
| -2           | Internal server error               |
| -3           | Unexpected error                    |
| -4           | Invalid verify code                 |
| -5           | Verify code not match, code expired |
| -6           | User not found                      |