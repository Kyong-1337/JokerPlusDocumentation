
# join Waitlist


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [Main API URL]/Member/JoinWaitlist            |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Description                         |
| :------- | :-------- | :-------- | :---------------------------------- |
| Email    | String    | YES       |                                     |
| Hash     | String    | YES       | SHA256(`Email` + `MemberSecretKey`) |


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

| ResponseCode | ReponseMessage        |
| ------------ | --------------------- |
| 0            | Success               |
| -1           | Invalid Access        |
| -2           | Internal Server Error |
| -3           | Unexpected error      |
| -4           | Already in waitlist   |