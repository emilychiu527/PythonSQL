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
	日期 DATE NOT NULL,
	站點編號 INT,
	進站人數 INT DEFAULT 0,
	出站人數 INT DEFAULT 0,
	PRIMARY KEY(id),
	FOREIGN KEY(站點編號) REFERENCES stations(編號)
	ON DELETE SET NULL
	ON UPDATE CASCADE
);
