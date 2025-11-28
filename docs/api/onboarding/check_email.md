
# Check Email
**Application**: Check available email 

## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [Main API URL]/Member/CheckEmail              |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Description                     |
| :------- | :-------- | :-------- | :------------------------------ |
| Email    | String    | YES       |                                 |
| Hash     | String    | YES       | SHA256(Email + MemberSecretKey) |


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
| 2            | This email already taken |
| 1            | Invalid email            |
| 0            | Success                  |
| -1           | Invalid Access           |
| -2           | Internal Server Error    |
| -3           | Unexpected error         |
| -4           | Haven't join waitlist    |