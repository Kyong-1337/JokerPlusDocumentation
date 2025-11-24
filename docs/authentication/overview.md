# Authentication and Encryption Overview
## API Base URL
Before a user logs in, the system will use the <span class="text-green">MAIN API URL</span> to communicate. Once the user logs in, the system will generate a special link called <span class="text-red">LOCAL API URL</span> in the ResponseData. After the user logs in, most of the operations will be performed using this <span class="text-red">LOCAL API URL</span> for communication with the API.

*Development*

| Name | Url |
|------|-----|
| <span class="text-green">MAIN API URL</span> | https://joker5api231.com/JokerPlus/Main/v6 | 
| <span class="text-red">LOCAL API URL</span> | *Get from ResponseData.LocalAPIURL        |


*Production*

| Name | Url |
|------|-----|
| <span class="text-green">MAIN API URL</span> | https://main.jokerplus.com/api             | 
| <span class="text-red">LOCAL API URL</span> | *Get from ResponseData.LocalAPIURL        |


## HTTP Request Headers

| Header| value|
|-------| -----|
| Authorization | Key=###################################### |
| Content-Type |  text/plain |
| Accept | application/json |

## API Key Information
| Key | Value|
|-----| -----|
| Access Token | Key=###################################### |
| SHA256 Salt Key | ###################################### |
| AES Secret Key | ####################################### |
| MemberSecretKey | *Get from ResponseData.MemberSecretKey |