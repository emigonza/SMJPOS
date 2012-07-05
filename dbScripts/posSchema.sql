--﻿CREATE SEQUENCE TICKET_AUDIT_myid_seq;
--﻿CREATE TABLE TICKET_AUDIT ( 
--﻿	ID integer NOT NULL,
--﻿	PRODUCT_ID varchar(255) NOT NULL,
--﻿	REASON varchar(255) NOT NULL,
--﻿	AFECTS_STOCK boolean NOT NULL,
--﻿    	REASON_TIMESTAMP timestamp NOT NULL,
--﻿        PEOPLE_ID varchar(255) NOT NULL,
--﻿        TICKET_ID varchar(255) NOT NULL
--﻿)
--﻿;

        
--CREATE TABLE units (
--   id character varying NOT NULL,
--    code character varying NOT NULL,
--    name character varying NOT NULL,
--    costing_precision double precision NOT NULL DEFAULT 0,
--    type character varying,
--    std_precision double precision NOT NULL DEFAULT 0
--);
--ALTER TABLE units ADD CONSTRAINT units_pk PRIMARY KEY("id");


CREATE TABLE additional_prices_for_products (
    id character varying NOT NULL,
    unit_id character varying NOT NULL,
    unit_to_id character varying NOT NULL,
    divide_rate double precision NOT NULL DEFAULT 0,
    multiply_rate double precision NOT NULL DEFAULT 0,
    product_id character varying NOT NULL,
    priceList double precision NOT NULL DEFAULT 0,
    priceSTD double precision NOT NULL DEFAULT 0,
    priceLimit double precision NOT NULL DEFAULT 0
);

ALTER TABLE additional_prices_for_products ADD CONSTRAINT additional_prices_for_products_pk PRIMARY KEY("id");


CREATE TABLE country (
id character varying NOT NULL,
currency_id character varying,
country_code character varying,
description character varying,
name character varying,
region_name character varying
) ;
ALTER TABLE country ADD CONSTRAINT "COUNTRY_pk" PRIMARY KEY("id");

CREATE TABLE region (
id character varying,
country_id character varying,
description character varying,
name character varying
) ;
ALTER TABLE region ADD CONSTRAINT "REGION_pk" PRIMARY KEY("id");

CREATE TABLE city (
id character varying NOT NULL,
country_id character varying,
region_id character varying,
name character varying,
postal character varying
);
ALTER TABLE city ADD CONSTRAINT "CITY_pk" PRIMARY KEY("id");
