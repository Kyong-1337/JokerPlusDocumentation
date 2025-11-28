
# Reset Pin
PINReset_confirmation

## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [LOCAL API URL]/Member/ResetPin               |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Length | Description                                    |
| :------- | :-------- | :-------- | ------ | :--------------------------------------------- |
| MemberId | Int       | YES       |        |                                                |
| Pin      | String    | YES       | 4      |                                                |
| Hash     | String    | YES       |        | SHA256(`MemberId` + `Pin` + `MemberSecretKey`) |


## Return



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
| -2           | Internal server error |
| -3           | Unexpected error      |