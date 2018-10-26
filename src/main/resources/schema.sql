DROP SCHEMA IF EXISTS 給与;
CREATE SCHEMA 給与;

DROP TABLE IF EXISTS 給与.USERS;
CREATE TABLE 給与.USERS (
  USER_ID  VARCHAR(255) PRIMARY KEY,
  NAME VARCHAR(40) NOT NULL,
  PHONE_NUMBER VARCHAR(13) NOT NULL,
  DATE_OF_BIRTH DATE NOT NULL,
  GENDER CHAR(2) NOT NULL
);

COMMENT ON TABLE 給与.USERS IS '利用者';
COMMENT ON COLUMN 給与.USERS.USER_ID IS '利用者ID';
COMMENT ON COLUMN 給与.USERS.NAME IS '利用者名';
COMMENT ON COLUMN 給与.USERS.PHONE_NUMBER IS '電話番号';
COMMENT ON COLUMN 給与.USERS.DATE_OF_BIRTH IS '生年月日';
COMMENT ON COLUMN 給与.USERS.GENDER IS '性別';

DROP TABLE IF EXISTS 給与.USERS_MAIL_ADDRESS;
CREATE TABLE 給与.USERS_MAIL_ADDRESS (
  USER_ID  VARCHAR(255) NOT NULL,
  REGISTER_DATE TIMESTAMP NOT NULL,
  MAIL_ADDRESS VARCHAR(255) NOT NULL,
    PRIMARY KEY(USER_ID, REGISTER_DATE)
);

COMMENT ON COLUMN 給与.USERS_MAIL_ADDRESS.USER_ID IS 'ユーザーID';
COMMENT ON COLUMN 給与.USERS_MAIL_ADDRESS.REGISTER_DATE IS '登録日時';
COMMENT ON COLUMN 給与.USERS_MAIL_ADDRESS.MAIL_ADDRESS IS 'メールアドレス';
