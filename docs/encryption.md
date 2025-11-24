# Encryption
Below are examples on how to do encryptions

---

## JAVA
### SHA-256

```java
public static String SHA256(final String strText) {
    String strResult = null;
    if (strText != null && strText.length() > 0) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(strText.getBytes("UTF-8"));
            byte byteBuffer[] = messageDigest.digest();
            StringBuffer strHexString = new StringBuffer();
            for (int i = 0; i < byteBuffer.length; i++) {
                String hex = Integer.toHexString(0xff & byteBuffer[i]);
                if (hex.length() == 1) {
                    strHexString.append('0');
                }
                strHexString.append(hex);
            }
            strResult = strHexString.toString();
        } catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
    return strResult;
}
```

---

### AES

```java
public static String AES_Encrypt(String plainText, String key)
        throws UnsupportedEncodingException,
        InvalidKeyException,
        NoSuchAlgorithmException,
        NoSuchPaddingException,
        InvalidAlgorithmParameterException,
        IllegalBlockSizeException,
        BadPaddingException {
    byte[] plainTextbytes = plainText.getBytes("UTF-8");
    byte[] keyBytes = getKeyBytes(key);
    return Base64.encodeToString(encrypt(plainTextbytes, keyBytes, keyBytes), Base64.NO_WRAP);
}


private static byte[] getKeyBytes(String key)
        throws UnsupportedEncodingException {
    byte[] keyBytes = new byte[16];
    byte[] parameterKeyBytes = key.getBytes("UTF-8");
    System.arraycopy(parameterKeyBytes, 0, keyBytes, 0, Math.min(parameterKeyBytes.length, keyBytes.length));
    return keyBytes;
}
```

---

### Generate Encrypted string for http request body parameters

```java
String sha256_salt = "qfYJpO87gm7MY7D1";
String aes_secret_key = "uNeQvp5Q76YMfQdx";
JSONObject obj = new JSONObject();
obj.put("Username","user001");
obj.put("Password","123456");
obj.put("Hash", SHA256("user001" + "123456" + sha256_salt)); 
String bodyParams = AES_Encrypt(String.valueOf(obj), aes_secret_key);
System.out.println(bodyParams);
```