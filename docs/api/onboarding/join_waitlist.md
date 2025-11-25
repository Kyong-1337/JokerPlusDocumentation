
# join Waitlist


## Requests

| PARAM          | VALUE                                         |
| :------------- | :-------------------------------------------- |
| URL            | [MAIN API URL] API URL                        |
| URL            | [LOCAL API URL] API URL                       |
| Request Method | POST                                          |
| Request Method | GET                                           |
| Body Param     | AES_Encrypt([JSON Object], [AES Secret Key]); |


## Parameters

| Key Name | Data Type | Mandatory | Length | Description |
| :------- | :-------- | :-------- | ------ | :---------- |
|          |           |           |        |             |


## Return

| Key Name | Data Type | Mandatory | Length | Description |
| :------- | :-------- | :-------- | :----- | :---------- |
|          |           |           |        |             |


## Response

???+ Response

    ```json
    {
        "Comment": "json here"
    }
    ```


## Response Code & Message


| ResponseCode | ReponseMessage        |
| ------------ | --------------------- |
| 2            |                       |
| 1            |                       |
| 0            | Success               |
| -1           | Invalid Access        |
| -2           | Internal server error |
| -3           | Unexpected error      |