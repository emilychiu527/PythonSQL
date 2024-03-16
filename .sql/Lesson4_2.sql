-- Table: public.gate_count

-- DROP TABLE IF EXISTS public.gate_count;

CREATE TABLE IF NOT EXISTS public.gate_count
(
    id integer NOT NULL DEFAULT nextval('gate_count_id_seq'::regclass),
    trnopdate date NOT NULL,
    stacode integer,
    gateincomingcnt integer DEFAULT 0,
    gateoutgoingcnt integer DEFAULT 0,
    CONSTRAINT gate_count_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.gate_count

SELECT * FROM stations;

