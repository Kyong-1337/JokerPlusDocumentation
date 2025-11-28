# Send Verify Code For Reset PIN


# Reset Password


## Requests

| PARAM          | VALUE                                            |
| :------------- | :----------------------------------------------- |
| URL            | [LOCAL API URL]/Member/SendVerifyCodeForResetPIN |
| Request Method | POST                                             |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]);    |

## Parameters

| Key Name | Data Type | Mandatory | Length | Description                                                  |
| :------- | :-------- | :-------- | ------ | :----------------------------------------------------------- |
| MemberId | Int       | YES       |        |                                                              |
| Type     | Int       | YES       |        | Refer to 7.5 Send Message Type                               |
| Contact  | String    | YES       |        | Email or phone Format 61xxxxxxxxx (phone Only Digit allow)   |
| Hash     | String    | YES       |        | SHA256(`MemberId` + `Type`  + `Contact` + `MemberSecretKey`) |



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


| ResponseCode | ReponseMessage           |
| ------------ | ------------------------ |
| 0            | Success                  |
| -1           | Invalid Access           |
| -2           | Internal server error    |
| -3           | Unexpected error         |
| -4           | Fail To Send Verify Code |