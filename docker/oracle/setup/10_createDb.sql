-- CDB(ルートDB)からPDB(プラガブルDB)に切り替える
ALTER SESSION SET CONTAINER=XEPDB1;

-- PDB配下にユーザを追加する
CREATE USER nextgenuser IDENTIFIED BY abcde DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP;

-- ユーザに権限を付与する
GRANT CONNECT, CREATE SESSION, RESOURCE, UNLIMITED TABLESPACE TO nextgenuser;

-- パスワードを無期限とする
ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;