-- Todo before running the script
-- Create the user myappuser
-- Create a role



CREATE DATABASE myappdb
  WITH OWNER = myappuser
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.UTF-8'
       LC_CTYPE = 'en_US.UTF-8'
       CONNECTION LIMIT = -1;

CREATE SEQUENCE quote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE quote_id_seq OWNER TO myappuser;


CREATE TABLE quote (
    id integer DEFAULT nextval('quote_id_seq'::regclass) NOT NULL,
    title character varying(40),
    quotetext character varying(2000),
    author character varying(40),
    source character varying(1000)
);


ALTER TABLE quote OWNER TO myappuser;


Insert into quote (id, title, quotetext, author, source) values (1,'QOTD-Moment','Argue for your limitations, and surely they’re yours.','Richard Bach','Moment-plugin');


SELECT pg_catalog.setval('quote_id_seq', 1, true);


--
-- TOC entry 1888 (class 2606 OID 16403)
-- Name: quote_key; Type: CONSTRAINT; Schema: public; Owner: myappuser
--

ALTER TABLE ONLY quote
    ADD CONSTRAINT quote_key PRIMARY KEY (id);