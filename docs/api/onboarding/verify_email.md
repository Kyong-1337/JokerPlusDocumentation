
# Verify Email


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [MAIN API URL]/Member/VerifyEmail             |
| Request Method | POST                                          |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name   | Data Type | Mandatory | Length                                             | Description |
| :--------- | :-------- | :-------- | -------------------------------------------------- | :---------- |
| Email      | String    | YES       |                                                    |             |
| VerifyCode | String    | YES       | Verify Code                                        |             |
| Hash       | String    | YES       | SHA256(`Email` + `VerifyCode` + `SHA256 Salt Key`) |             |


## Response

???+ Response

    ```json
    {
        "ResponseCode": "Int",
        "ResponseMsg": "String",
        "ResponseData": {
            "EmailVerifyId": "Int"
        }
    }
    ```


## Response Code & Message


| ResponseCode | ReponseMessage                                |
| ------------ | --------------------------------------------- |
| 3            | Verify code no match                          |
| 2            | Exceed request, code expired                  |
| 1            | No verify request found, please request again |
| 0            | Success                                       |
| -1           | Invalid Access                                |
| -2           | Internal server error                         |
| -4           | Error when try verify email                   |