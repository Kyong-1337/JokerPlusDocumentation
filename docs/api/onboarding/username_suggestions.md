
# Username Suggestion


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [MAIN API URL]/Member/UsernameSuggestions     |
| Request Method | POST                                          |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Length | Description               |
| :------- | :-------- | :-------- | ------ | :------------------------ |
| HASH     | String    | YES       |        | SHA256(`SHA256 Salt Key`) |

## Response

???+ Response

    ```json
    {
        "ResponseCode": "Int",
        "ResponseMsg": “string”   
        "ResponseData": [
            "String"
        ]
    }
    ```


## Response Code & Message


| ResponseCode | ReponseMessage        |
| ------------ | --------------------- |
| 0            | Success               |
