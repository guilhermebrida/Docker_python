CREATE SCHEMA copilotos;
CREATE TABLE IF NOT EXISTS copilotos.vozes
(
    "IMEI" text COLLATE pg_catalog."default" NOT NULL,
    "SN" text COLLATE pg_catalog."default" NOT NULL,
    "VOZES" bigint);
INSERT INTO copilotos.vozes ("IMEI","SN","VOZES") VALUES ('teste','teste1',22);
