USE sportproducts;

CREATE FUNCTION mycms_encode (surname CHAR(48))
RETURNS TINYBLOB
RETURN AES_ENCRYPT(surname, 'key-key');

CREATE FUNCTION mycms_decode (surname TINYBLOB)
RETURNS CHAR(48)
RETURN AES_DECRYPT(surname, 'key-key');
