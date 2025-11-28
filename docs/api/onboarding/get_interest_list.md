
# Get Interest List
Application: Choose Interest

## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [LOCAL API URL]/Member/GetInterestList        |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |

## Parameters

| Key Name | Data Type | Mandatory | Description                            |
| :------- | :-------- | :-------- | :------------------------------------- |
| MemberId | Int       | YES       |                                        |
| Hash     | String    | YES       | SHA256(`MemberId` + `MemberSecretKey`) |


## Response

???+ Response

    ```json
    {
        "ResponseCode": "Int",
        "ResponseMsg": "String",
        "ResponseData": [
            {
                "Id": "Int",
                "Name": "String"
            }
        ]
    }
    ```


## Response Code & Message


| ResponseCode | ReponseMessage          |
| ------------ | ----------------------- |
| 0            | Success                 |
| -1           | Invalid Access          |
| -2           | Internal Server Error   |
| -3           | Unexpected error        |
| -4           | Interest list not found |