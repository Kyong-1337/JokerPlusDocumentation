
# Recover Username By Email


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [Main API URL]/Member/RecoverUsernameByEmail  |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Length                              | Description |
| :------- | :-------- | :-------- | ----------------------------------- | :---------- |
| Email    | String    | YES       |                                     |             |
| Hash     | String    | YES       | SHA256(`Email` + `MemberSecretKey`) |             |




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


| ResponseCode | ReponseMessage              |
| ------------ | --------------------------- |
| 0            | Username is sended to email |
| -1           | Invalid Access              |
| -2           | Internal Server Error       |
| -3           | Unexpected error            |
| -4           | Invalid email               |
| -5           | User not found              |
| -6           | Fail to send email          |