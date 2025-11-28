
# Check Balance

!!! warning
    This endpoint may not reflect the latest update

## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [Main API URL]/Member/CheckEmail              |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Description                           |
| :------- | :-------- | :-------- | :------------------------------------ |
| MemberId | Int       | YES       |                                       |
| Hash     | String    | YES       | SHA256(`MemberId`+ `MemberSecretKey`) |



## Response

???+ Response

    ```json
    {
        "ResponseCode": "Int",
        "ResponseMsg": "String",
        "ResponseData": "String"
    }
    ```


## Response Code & Message


| ResponseCode | ReponseMessage        |
| ------------ | --------------------- |
| 0            | Success               |
| -1           | Invalid Access        |
| -2           | Internal server error |