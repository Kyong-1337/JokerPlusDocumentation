
# Check Username


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [MAIN API URL]/Member/CheckUsername           |
| Request Method | POST                                          |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Length | Description                            |
| :------- | :-------- | :-------- | ------ | :------------------------------------- |
| Username | String    | YES       | 6 - 30 | Accept A-Z, a-z, 0-9, no symbol allow  |
| Hash     | String    | YES       |        | SHA256(`Username` + `SHA256 Salt Key`) |


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
| 2            | Username exist        |
| 1            | Invalid username      |
| 0            | Success               |
| -1           | Invalid Access        |
| -2           | Internal server error |
| -3           | Unexpected error      |