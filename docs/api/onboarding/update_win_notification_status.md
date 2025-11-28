
# Update Win Notification Status


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [LOCAL API URL]/Member/UpdateWinNoticeStatus  |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name    | Data Type | Mandatory | Description                                            |
| :---------- | :-------- | :-------- | ------------------------------------------------------ |
| MemberId    | Int       | YES       |                                                        |
| WinNoticeId | Int       | YES       |                                                        |
| Hash        | String    | YES       | SHA256(`MemberId` + `WinNoticeId` + `MemberSecretKey`) |


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


| ResponseCode | ReponseMessage |
| ------------ | -------------- |
| 0            | Success        |
