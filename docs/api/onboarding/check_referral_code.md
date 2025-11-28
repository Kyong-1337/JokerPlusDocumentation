
# Check Refferal Code


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [Main API URL]/Member/CheckReferralCode       |
| Request Method | POST                                          |
| Body Params    | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name     | Data Type | Mandatory | Description                            |
| :----------- | :-------- | :-------- | :------------------------------------- |
| ReferralCode | String    | YES       |                                        |
| Hash         | String    | YES       | SHA256(ReferralCode + SHA256 Salt Key) |



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


| ResponseCode | ReponseMessage                     |
| ------------ | ---------------------------------- |
| 1            | Invalid referral code              |
| 0            | Valid referral code                |
| -1           | Invalid Access                     |
| -2           | Internal Server Error              |
| -4           | Error when try check referral code |