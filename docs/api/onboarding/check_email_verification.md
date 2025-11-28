
# Check Email Verification


## Requests

| PARAM          | VALUE                                              |
| :------------- | :------------------------------------------------- |
| URL            | [Main API URL]/Member/CheckEmailVerificationStatus |
| Request Method | POST                                               |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]);      |


## Parameters

| Key Name | Data Type | Mandatory | Description                         |
| :------- | :-------- | :-------- | :---------------------------------- |
| Email    | String    | YES       |                                     |
| Hash     | String    | YES       | SHA256(`Email` + `SHA256 Salt Key`) |




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


| ResponseCode | ReponseMessage         |
| ------------ | ---------------------- |
| 1            | Invalid email          |
| 0            | Email verified         |
| -1           | Invalid Access         |
| -2           | Internal Server Error  |
| -4           | Email not yet verified |