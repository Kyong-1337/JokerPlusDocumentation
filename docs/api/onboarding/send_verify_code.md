
# Send Verify Code
Application: EnterPhoneNumber, ForgotPassword, ResetPIN

## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [MAIN API URL]/Member/SendVerifyCode          |
| Request Method | POST                                          |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Description                                                                         |
| :------- | :-------- | :-------- | ----------------------------------------------------------------------------------- |
| Action   | Int       | YES       | Refer to [Member Action](../../reference/reference_codes.md#member-action)          |
| Type     | Int       | YES       | Refer to  [Send Message Type](../../reference/reference_codes.md#send-message-type) |
| Contact  | String    | YES       | Email or phone Format 61xxxxxxxxx (phone Only Digit allow)                          |
| Hash     | String    | YES       | SHA256(`Action` + `Type` + `Contact` + `SHA256 Salt Key`)                           |

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
| 3            | Fail send sms/email          |
| 2            | User not found               |
| 1            | Contact been used (register) |
| 0            | Success                      |
| -1           | Invalid Access               |
| -2           | Internal server error        |
| -3           | Unexpected error             |