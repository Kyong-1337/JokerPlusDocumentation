
# Get Match Trend


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [LOCAL API URL] API URL                       |
| Request Method | POST                                          |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Length | Description                                 |
| :------- | :-------- | :-------- | ------ | :------------------------------------------ |
| MatchId  | int       | YES       |        |                                             |
| MemberId | int       | YES       |        |                                             |
| Hash     | string    | YES       |        | SHA256 (memberId + matchId + memberHashKey) |

## Return

| Key Name  | Data Type         | Mandatory | Length | Description |
| :-------- | :---------------- | :-------- | :----- | :---------- |
| MatchId   | int               | YES       |        |             |
| HalfTime  | int               | YES       |        |             |
| HalfCount | int               | YES       |        |             |
| TrendData | Array[Array[int]] | YES       |        |             |


## Response

???+ Response

    ```json
    {
        "ResponseCode": 0,
        "ResponseData": {
            "MatchId": 0,
            "HalfTime": 45,
            "HalfCount": 2,
            "TrendData": [[ 100, 12, 56, 12, 14, -86, -32, -20, 6, 12, 28, 20, 10, 16, -100, -16, 38, 74, 64, -24, 86, 2, -20, 38, -58, 44, 12, 84, -100, -100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],[ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
        },
        "ResponseMsg": "success"
    }
    ```


## Response Code & Message


| ResponseCode | ReponseMessage        |
| ------------ | --------------------- |
| 1            | No data               |
| 0            | Success               |
| -1           | Invalid Access        |
| -2           | Internal server error |
| -3           | Unexpected error      |