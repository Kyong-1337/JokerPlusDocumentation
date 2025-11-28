
# Save Member Interest
Application: Choose Interest

## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [LOCAL API URL]/Member/MemberSaveInterest     |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |

## Parameters

| Key Name      | Data Type | Mandatory | Description                            |
| :------------ | :-------- | :-------- | :------------------------------------- |
| MemberId      | Int       | YES       |                                        |
| InterestArrId | Int[]     | YES       | Array of Interest Id                   |
| Hash          | String    | YES       | SHA256(`MemberId` + `MemberSecretKey`) |



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
| 1            | No interest data      |
| 0            | Success               |
| -1           | Invalid Access        |
| -2           | Internal Server Error |
| -3           | Unexpected error      |