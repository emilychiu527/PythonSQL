CREATE TABLE IF NOT EXISTS public.stations
(
    "編號" integer NOT NULL,
    "名稱" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "英文名稱" character varying(50) COLLATE pg_catalog."default",
    "地名" character varying(20) COLLATE pg_catalog."default",
    "英文地名" character varying(50) COLLATE pg_catalog."default",
    "地址" character varying(255) COLLATE pg_catalog."default",
    "英文地址" character varying(255) COLLATE pg_catalog."default",
    "電話" character varying(20) COLLATE pg_catalog."default",
    gps character varying(50) COLLATE pg_catalog."default",
    youbike boolean,
    CONSTRAINT stations_pkey PRIMARY KEY ("編號")
)

CREATE TABLE IF NOT EXISTS gate_count(
 id SERIAL,
 trnOpDate DATE NOT NULL,
 staCode INT,
 gateInComingCnt INT DEFAULT 0,
 gateOutGoingCnt INT DEFAULT 0,
 PRIMARY KEY(id)
);
