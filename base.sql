--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: inputs_back; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_back (
    id bigint NOT NULL,
    file text NOT NULL
);


ALTER TABLE public.inputs_back OWNER TO django;

--
-- Name: inputs_back_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_back_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_back_id_seq OWNER TO django;

--
-- Name: inputs_back_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_back_id_seq OWNED BY public.inputs_back.id;


--
-- Name: inputs_buffer; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_buffer (
    id bigint NOT NULL,
    number text NOT NULL,
    proveedor text NOT NULL,
    "Origin" character varying(20) NOT NULL,
    carrier text NOT NULL,
    cntr integer NOT NULL,
    bknumber text NOT NULL,
    "ETD" character varying(10) NOT NULL,
    "ETA" character varying(10) NOT NULL,
    comment text NOT NULL
);


ALTER TABLE public.inputs_buffer OWNER TO django;

--
-- Name: inputs_buffer_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_buffer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_buffer_id_seq OWNER TO django;

--
-- Name: inputs_buffer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_buffer_id_seq OWNED BY public.inputs_buffer.id;


--
-- Name: inputs_claims; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_claims (
    id bigint NOT NULL,
    date character varying(20) NOT NULL,
    bl text NOT NULL,
    reason text NOT NULL,
    comment text NOT NULL,
    currency character varying(20) NOT NULL,
    amount numeric(10,2) NOT NULL,
    photos text NOT NULL,
    forwarder text NOT NULL,
    carrier text NOT NULL,
    "picCust" boolean NOT NULL,
    "picVipa" boolean NOT NULL,
    "Sent" boolean NOT NULL,
    settlement boolean NOT NULL,
    cntrs integer NOT NULL,
    tons numeric(10,2) NOT NULL,
    cn boolean NOT NULL,
    cn_currency character varying(20) NOT NULL,
    cn_amount numeric(10,2) NOT NULL,
    dn boolean NOT NULL,
    dn_currency character varying(20) NOT NULL,
    dn_amount numeric(10,2) NOT NULL,
    settlement_date character varying(20) NOT NULL,
    profit numeric(10,2) NOT NULL,
    rate numeric(10,2) NOT NULL,
    "Monthly_id" bigint NOT NULL
);


ALTER TABLE public.inputs_claims OWNER TO django;

--
-- Name: inputs_claims_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_claims_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_claims_id_seq OWNER TO django;

--
-- Name: inputs_claims_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_claims_id_seq OWNED BY public.inputs_claims.id;


--
-- Name: inputs_claimsukr; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_claimsukr (
    id bigint NOT NULL,
    humidper numeric(10,2) NOT NULL,
    humidton numeric(10,2) NOT NULL,
    impur numeric(10,2) NOT NULL,
    docs boolean NOT NULL,
    claimsupp numeric(10,2) NOT NULL,
    set character varying(20) NOT NULL,
    monthly_id bigint NOT NULL
);


ALTER TABLE public.inputs_claimsukr OWNER TO django;

--
-- Name: inputs_claimsukr_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_claimsukr_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_claimsukr_id_seq OWNER TO django;

--
-- Name: inputs_claimsukr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_claimsukr_id_seq OWNED BY public.inputs_claimsukr.id;


--
-- Name: inputs_containers; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_containers (
    id bigint NOT NULL,
    number text NOT NULL,
    seal text NOT NULL,
    bales integer NOT NULL,
    gross numeric(10,2) NOT NULL,
    tara numeric(10,2) NOT NULL,
    vgm numeric(10,2) NOT NULL,
    shipment_id bigint NOT NULL,
    us_id integer NOT NULL
);


ALTER TABLE public.inputs_containers OWNER TO django;

--
-- Name: inputs_containers_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_containers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_containers_id_seq OWNER TO django;

--
-- Name: inputs_containers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_containers_id_seq OWNED BY public.inputs_containers.id;


--
-- Name: inputs_costs; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_costs (
    id bigint NOT NULL,
    name text NOT NULL,
    volume integer NOT NULL,
    currency character varying(20) NOT NULL,
    shipment_id bigint NOT NULL
);


ALTER TABLE public.inputs_costs OWNER TO django;

--
-- Name: inputs_costs_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_costs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_costs_id_seq OWNER TO django;

--
-- Name: inputs_costs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_costs_id_seq OWNED BY public.inputs_costs.id;


--
-- Name: inputs_counter; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_counter (
    id bigint NOT NULL,
    name text NOT NULL,
    volume integer NOT NULL
);


ALTER TABLE public.inputs_counter OWNER TO django;

--
-- Name: inputs_counter_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_counter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_counter_id_seq OWNER TO django;

--
-- Name: inputs_counter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_counter_id_seq OWNED BY public.inputs_counter.id;


--
-- Name: inputs_counterupd; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_counterupd (
    id bigint NOT NULL,
    index character varying(20) NOT NULL,
    st boolean NOT NULL
);


ALTER TABLE public.inputs_counterupd OWNER TO django;

--
-- Name: inputs_counterupd_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_counterupd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_counterupd_id_seq OWNER TO django;

--
-- Name: inputs_counterupd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_counterupd_id_seq OWNED BY public.inputs_counterupd.id;


--
-- Name: inputs_empresa; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_empresa (
    id bigint NOT NULL,
    name text NOT NULL,
    trader text NOT NULL
);


ALTER TABLE public.inputs_empresa OWNER TO django;

--
-- Name: inputs_empresa_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_empresa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_empresa_id_seq OWNER TO django;

--
-- Name: inputs_empresa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_empresa_id_seq OWNED BY public.inputs_empresa.id;


--
-- Name: inputs_existing; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_existing (
    id bigint NOT NULL,
    number text NOT NULL
);


ALTER TABLE public.inputs_existing OWNER TO django;

--
-- Name: inputs_existing_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_existing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_existing_id_seq OWNER TO django;

--
-- Name: inputs_existing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_existing_id_seq OWNED BY public.inputs_existing.id;


--
-- Name: inputs_fincosts; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_fincosts (
    id bigint NOT NULL,
    name text NOT NULL,
    volume numeric(10,2) NOT NULL,
    currency character varying(20) NOT NULL,
    monthly_id bigint NOT NULL
);


ALTER TABLE public.inputs_fincosts OWNER TO django;

--
-- Name: inputs_fincosts_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_fincosts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_fincosts_id_seq OWNER TO django;

--
-- Name: inputs_fincosts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_fincosts_id_seq OWNED BY public.inputs_fincosts.id;


--
-- Name: inputs_freight; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_freight (
    id bigint NOT NULL,
    forwarder text NOT NULL,
    "Line" text NOT NULL,
    "POL" text NOT NULL,
    "POD" text NOT NULL,
    terms character varying(30) NOT NULL,
    rate character varying(30) NOT NULL,
    currencyrate character varying(30) NOT NULL,
    period character varying(30) NOT NULL,
    contract text NOT NULL,
    additional character varying(30) NOT NULL,
    currencyadd character varying(30) NOT NULL,
    margin character varying(30) NOT NULL
);


ALTER TABLE public.inputs_freight OWNER TO django;

--
-- Name: inputs_freight_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_freight_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_freight_id_seq OWNER TO django;

--
-- Name: inputs_freight_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_freight_id_seq OWNED BY public.inputs_freight.id;


--
-- Name: inputs_invoices; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_invoices (
    id bigint NOT NULL,
    number text NOT NULL
);


ALTER TABLE public.inputs_invoices OWNER TO django;

--
-- Name: inputs_invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_invoices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_invoices_id_seq OWNER TO django;

--
-- Name: inputs_invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_invoices_id_seq OWNED BY public.inputs_invoices.id;


--
-- Name: inputs_materials; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_materials (
    id bigint NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.inputs_materials OWNER TO django;

--
-- Name: inputs_materials_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_materials_id_seq OWNER TO django;

--
-- Name: inputs_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_materials_id_seq OWNED BY public.inputs_materials.id;


--
-- Name: inputs_monthly; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_monthly (
    id bigint NOT NULL,
    sodate character varying(30) NOT NULL,
    podate character varying(30) NOT NULL,
    "Supplier" text NOT NULL,
    client text NOT NULL,
    origincity text NOT NULL,
    origincountry text NOT NULL,
    destinationcity text NOT NULL,
    destinationcountry text NOT NULL,
    line text NOT NULL,
    forwarder text NOT NULL,
    number text NOT NULL,
    bknumber text NOT NULL,
    material character varying(20) NOT NULL,
    cntr character varying(20) NOT NULL,
    "Tons" numeric(10,2) NOT NULL,
    "Tonsact" numeric(10,2) NOT NULL,
    min character varying(20) NOT NULL,
    transaction text NOT NULL,
    margin numeric(10,2) NOT NULL,
    "marginEUR" character varying(10) NOT NULL,
    "ETD" character varying(20) NOT NULL,
    "ETA" character varying(20) NOT NULL,
    "Truck" boolean NOT NULL
);


ALTER TABLE public.inputs_monthly OWNER TO django;

--
-- Name: inputs_monthly_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_monthly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_monthly_id_seq OWNER TO django;

--
-- Name: inputs_monthly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_monthly_id_seq OWNED BY public.inputs_monthly.id;


--
-- Name: inputs_monthlycosts; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_monthlycosts (
    id bigint NOT NULL,
    name text NOT NULL,
    volume numeric(10,2) NOT NULL,
    currency character varying(20) NOT NULL,
    monthly_id bigint NOT NULL
);


ALTER TABLE public.inputs_monthlycosts OWNER TO django;

--
-- Name: inputs_monthlycosts_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_monthlycosts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_monthlycosts_id_seq OWNER TO django;

--
-- Name: inputs_monthlycosts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_monthlycosts_id_seq OWNED BY public.inputs_monthlycosts.id;


--
-- Name: inputs_monthlyrate; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_monthlyrate (
    id bigint NOT NULL,
    rate character varying(10) NOT NULL,
    monthly_id bigint NOT NULL
);


ALTER TABLE public.inputs_monthlyrate OWNER TO django;

--
-- Name: inputs_monthlyrate_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_monthlyrate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_monthlyrate_id_seq OWNER TO django;

--
-- Name: inputs_monthlyrate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_monthlyrate_id_seq OWNED BY public.inputs_monthlyrate.id;


--
-- Name: inputs_po; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_po (
    id bigint NOT NULL,
    date character varying(30) NOT NULL,
    number text NOT NULL,
    cntr integer NOT NULL,
    "Tons" numeric(10,2) NOT NULL,
    price numeric(10,2) NOT NULL,
    currency character varying(20) NOT NULL,
    spt character varying(10) NOT NULL,
    "Origin_id" bigint NOT NULL,
    "Proveedor_id" bigint NOT NULL,
    material_id bigint NOT NULL,
    so_id bigint NOT NULL
);


ALTER TABLE public.inputs_po OWNER TO django;

--
-- Name: inputs_po_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_po_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_po_id_seq OWNER TO django;

--
-- Name: inputs_po_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_po_id_seq OWNED BY public.inputs_po.id;


--
-- Name: inputs_ports; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_ports (
    id bigint NOT NULL,
    port text NOT NULL,
    country text NOT NULL
);


ALTER TABLE public.inputs_ports OWNER TO django;

--
-- Name: inputs_ports_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_ports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_ports_id_seq OWNER TO django;

--
-- Name: inputs_ports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_ports_id_seq OWNED BY public.inputs_ports.id;


--
-- Name: inputs_profile; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_profile (
    id bigint NOT NULL,
    country text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.inputs_profile OWNER TO django;

--
-- Name: inputs_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_profile_id_seq OWNER TO django;

--
-- Name: inputs_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_profile_id_seq OWNED BY public.inputs_profile.id;


--
-- Name: inputs_readiness; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_readiness (
    id bigint NOT NULL,
    "Proveedor" character varying(30) NOT NULL,
    "Origin" character varying(30) NOT NULL,
    date character varying(30) NOT NULL,
    number text NOT NULL,
    cntr integer NOT NULL,
    "Tons" numeric(10,2) NOT NULL,
    comment text NOT NULL,
    po_id bigint NOT NULL
);


ALTER TABLE public.inputs_readiness OWNER TO django;

--
-- Name: inputs_readiness_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_readiness_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_readiness_id_seq OWNER TO django;

--
-- Name: inputs_readiness_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_readiness_id_seq OWNED BY public.inputs_readiness.id;


--
-- Name: inputs_shipment; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_shipment (
    id bigint NOT NULL,
    number text NOT NULL,
    forwarder text NOT NULL,
    carrier text NOT NULL,
    cntr integer NOT NULL,
    bknumber text NOT NULL,
    "ETD" character varying(10) NOT NULL,
    "ETA" character varying(10) NOT NULL,
    margin numeric(10,2) NOT NULL,
    "marginEUR" character varying(10) NOT NULL,
    "BK" boolean NOT NULL,
    "SI" boolean NOT NULL,
    "Magic" boolean NOT NULL,
    "Truck" boolean NOT NULL,
    po_id bigint NOT NULL
);


ALTER TABLE public.inputs_shipment OWNER TO django;

--
-- Name: inputs_shipment_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_shipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_shipment_id_seq OWNER TO django;

--
-- Name: inputs_shipment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_shipment_id_seq OWNED BY public.inputs_shipment.id;


--
-- Name: inputs_shipmentrate; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_shipmentrate (
    id bigint NOT NULL,
    rate character varying(10) NOT NULL,
    shipment_id bigint NOT NULL
);


ALTER TABLE public.inputs_shipmentrate OWNER TO django;

--
-- Name: inputs_shipmentrate_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_shipmentrate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_shipmentrate_id_seq OWNER TO django;

--
-- Name: inputs_shipmentrate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_shipmentrate_id_seq OWNED BY public.inputs_shipmentrate.id;


--
-- Name: inputs_so; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_so (
    id bigint NOT NULL,
    number text NOT NULL,
    date text NOT NULL,
    material text NOT NULL,
    cntr integer NOT NULL,
    "Tons" numeric(10,2) NOT NULL,
    min numeric(10,2) NOT NULL,
    cost numeric(10,2) NOT NULL,
    currency character varying(20) NOT NULL,
    comment text NOT NULL,
    cpt character varying(10) NOT NULL,
    stat boolean NOT NULL,
    client_id bigint NOT NULL,
    destination_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.inputs_so OWNER TO django;

--
-- Name: inputs_so_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_so_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_so_id_seq OWNER TO django;

--
-- Name: inputs_so_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_so_id_seq OWNED BY public.inputs_so.id;


--
-- Name: inputs_track; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_track (
    id bigint NOT NULL,
    bknumber text NOT NULL,
    number text NOT NULL,
    "Supplier" text NOT NULL,
    origincountry text NOT NULL,
    material character varying(20) NOT NULL,
    payment_status boolean NOT NULL,
    registered boolean NOT NULL,
    comment text NOT NULL
);


ALTER TABLE public.inputs_track OWNER TO django;

--
-- Name: inputs_track_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_track_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_track_id_seq OWNER TO django;

--
-- Name: inputs_track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_track_id_seq OWNED BY public.inputs_track.id;


--
-- Name: inputs_upd; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.inputs_upd (
    id bigint NOT NULL,
    index character varying(20) NOT NULL,
    st boolean NOT NULL
);


ALTER TABLE public.inputs_upd OWNER TO django;

--
-- Name: inputs_upd_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.inputs_upd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inputs_upd_id_seq OWNER TO django;

--
-- Name: inputs_upd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.inputs_upd_id_seq OWNED BY public.inputs_upd.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: inputs_back id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_back ALTER COLUMN id SET DEFAULT nextval('public.inputs_back_id_seq'::regclass);


--
-- Name: inputs_buffer id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_buffer ALTER COLUMN id SET DEFAULT nextval('public.inputs_buffer_id_seq'::regclass);


--
-- Name: inputs_claims id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_claims ALTER COLUMN id SET DEFAULT nextval('public.inputs_claims_id_seq'::regclass);


--
-- Name: inputs_claimsukr id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_claimsukr ALTER COLUMN id SET DEFAULT nextval('public.inputs_claimsukr_id_seq'::regclass);


--
-- Name: inputs_containers id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_containers ALTER COLUMN id SET DEFAULT nextval('public.inputs_containers_id_seq'::regclass);


--
-- Name: inputs_costs id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_costs ALTER COLUMN id SET DEFAULT nextval('public.inputs_costs_id_seq'::regclass);


--
-- Name: inputs_counter id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_counter ALTER COLUMN id SET DEFAULT nextval('public.inputs_counter_id_seq'::regclass);


--
-- Name: inputs_counterupd id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_counterupd ALTER COLUMN id SET DEFAULT nextval('public.inputs_counterupd_id_seq'::regclass);


--
-- Name: inputs_empresa id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_empresa ALTER COLUMN id SET DEFAULT nextval('public.inputs_empresa_id_seq'::regclass);


--
-- Name: inputs_existing id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_existing ALTER COLUMN id SET DEFAULT nextval('public.inputs_existing_id_seq'::regclass);


--
-- Name: inputs_fincosts id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_fincosts ALTER COLUMN id SET DEFAULT nextval('public.inputs_fincosts_id_seq'::regclass);


--
-- Name: inputs_freight id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_freight ALTER COLUMN id SET DEFAULT nextval('public.inputs_freight_id_seq'::regclass);


--
-- Name: inputs_invoices id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_invoices ALTER COLUMN id SET DEFAULT nextval('public.inputs_invoices_id_seq'::regclass);


--
-- Name: inputs_materials id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_materials ALTER COLUMN id SET DEFAULT nextval('public.inputs_materials_id_seq'::regclass);


--
-- Name: inputs_monthly id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_monthly ALTER COLUMN id SET DEFAULT nextval('public.inputs_monthly_id_seq'::regclass);


--
-- Name: inputs_monthlycosts id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_monthlycosts ALTER COLUMN id SET DEFAULT nextval('public.inputs_monthlycosts_id_seq'::regclass);


--
-- Name: inputs_monthlyrate id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_monthlyrate ALTER COLUMN id SET DEFAULT nextval('public.inputs_monthlyrate_id_seq'::regclass);


--
-- Name: inputs_po id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_po ALTER COLUMN id SET DEFAULT nextval('public.inputs_po_id_seq'::regclass);


--
-- Name: inputs_ports id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_ports ALTER COLUMN id SET DEFAULT nextval('public.inputs_ports_id_seq'::regclass);


--
-- Name: inputs_profile id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_profile ALTER COLUMN id SET DEFAULT nextval('public.inputs_profile_id_seq'::regclass);


--
-- Name: inputs_readiness id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_readiness ALTER COLUMN id SET DEFAULT nextval('public.inputs_readiness_id_seq'::regclass);


--
-- Name: inputs_shipment id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_shipment ALTER COLUMN id SET DEFAULT nextval('public.inputs_shipment_id_seq'::regclass);


--
-- Name: inputs_shipmentrate id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_shipmentrate ALTER COLUMN id SET DEFAULT nextval('public.inputs_shipmentrate_id_seq'::regclass);


--
-- Name: inputs_so id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_so ALTER COLUMN id SET DEFAULT nextval('public.inputs_so_id_seq'::regclass);


--
-- Name: inputs_track id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_track ALTER COLUMN id SET DEFAULT nextval('public.inputs_track_id_seq'::regclass);


--
-- Name: inputs_upd id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_upd ALTER COLUMN id SET DEFAULT nextval('public.inputs_upd_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add back	7	add_back
26	Can change back	7	change_back
27	Can delete back	7	delete_back
28	Can view back	7	view_back
29	Can add buffer	8	add_buffer
30	Can change buffer	8	change_buffer
31	Can delete buffer	8	delete_buffer
32	Can view buffer	8	view_buffer
33	Can add counter	9	add_counter
34	Can change counter	9	change_counter
35	Can delete counter	9	delete_counter
36	Can view counter	9	view_counter
37	Can add counterupd	10	add_counterupd
38	Can change counterupd	10	change_counterupd
39	Can delete counterupd	10	delete_counterupd
40	Can view counterupd	10	view_counterupd
41	Can add empresa	11	add_empresa
42	Can change empresa	11	change_empresa
43	Can delete empresa	11	delete_empresa
44	Can view empresa	11	view_empresa
45	Can add existing	12	add_existing
46	Can change existing	12	change_existing
47	Can delete existing	12	delete_existing
48	Can view existing	12	view_existing
49	Can add freight	13	add_freight
50	Can change freight	13	change_freight
51	Can delete freight	13	delete_freight
52	Can view freight	13	view_freight
53	Can add invoices	14	add_invoices
54	Can change invoices	14	change_invoices
55	Can delete invoices	14	delete_invoices
56	Can view invoices	14	view_invoices
57	Can add materials	15	add_materials
58	Can change materials	15	change_materials
59	Can delete materials	15	delete_materials
60	Can view materials	15	view_materials
61	Can add monthly	16	add_monthly
62	Can change monthly	16	change_monthly
63	Can delete monthly	16	delete_monthly
64	Can view monthly	16	view_monthly
65	Can add po	17	add_po
66	Can change po	17	change_po
67	Can delete po	17	delete_po
68	Can view po	17	view_po
69	Can add ports	18	add_ports
70	Can change ports	18	change_ports
71	Can delete ports	18	delete_ports
72	Can view ports	18	view_ports
73	Can add shipment	19	add_shipment
74	Can change shipment	19	change_shipment
75	Can delete shipment	19	delete_shipment
76	Can view shipment	19	view_shipment
77	Can add track	20	add_track
78	Can change track	20	change_track
79	Can delete track	20	delete_track
80	Can view track	20	view_track
81	Can add upd	21	add_upd
82	Can change upd	21	change_upd
83	Can delete upd	21	delete_upd
84	Can view upd	21	view_upd
85	Can add so	22	add_so
86	Can change so	22	change_so
87	Can delete so	22	delete_so
88	Can view so	22	view_so
89	Can add shipment rate	23	add_shipmentrate
90	Can change shipment rate	23	change_shipmentrate
91	Can delete shipment rate	23	delete_shipmentrate
92	Can view shipment rate	23	view_shipmentrate
93	Can add readiness	24	add_readiness
94	Can change readiness	24	change_readiness
95	Can delete readiness	24	delete_readiness
96	Can view readiness	24	view_readiness
97	Can add profile	25	add_profile
98	Can change profile	25	change_profile
99	Can delete profile	25	delete_profile
100	Can view profile	25	view_profile
101	Can add monthly rate	26	add_monthlyrate
102	Can change monthly rate	26	change_monthlyrate
103	Can delete monthly rate	26	delete_monthlyrate
104	Can view monthly rate	26	view_monthlyrate
105	Can add monthly costs	27	add_monthlycosts
106	Can change monthly costs	27	change_monthlycosts
107	Can delete monthly costs	27	delete_monthlycosts
108	Can view monthly costs	27	view_monthlycosts
109	Can add fin costs	28	add_fincosts
110	Can change fin costs	28	change_fincosts
111	Can delete fin costs	28	delete_fincosts
112	Can view fin costs	28	view_fincosts
113	Can add costs	29	add_costs
114	Can change costs	29	change_costs
115	Can delete costs	29	delete_costs
116	Can view costs	29	view_costs
117	Can add containers	30	add_containers
118	Can change containers	30	change_containers
119	Can delete containers	30	delete_containers
120	Can view containers	30	view_containers
121	Can add claims ukr	31	add_claimsukr
122	Can change claims ukr	31	change_claimsukr
123	Can delete claims ukr	31	delete_claimsukr
124	Can view claims ukr	31	view_claimsukr
125	Can add claims	32	add_claims
126	Can change claims	32	change_claims
127	Can delete claims	32	delete_claims
128	Can view claims	32	view_claims
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$2fY1HAtZ9qYtOBqnNxoFsA$tvzqXBg99fbcuBMcujELWh+KnySPuOPYjNdUmIBud90=	2021-12-14 10:30:31.267472+03	t	managerlatam			m@mail.com	t	t	2021-12-14 10:29:01.120205+03
2	pbkdf2_sha256$320000$FRk9ugVBnKtPNd7Od8t5uu$P3w/vykYVjT4eRpguWyINR1VbMMZqgvFrlanDh1bCiE=	2021-12-14 10:32:47.509872+03	t	managereurope			m@mail.com	t	t	2021-12-14 10:29:22.299814+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-12-14 10:30:50.370814+03	1	upd object (1)	1	[{"added": {}}]	21	1
2	2021-12-14 10:30:57.095623+03	1	counterupd object (1)	1	[{"added": {}}]	10	1
3	2021-12-14 10:31:55.042606+03	1	none	1	[{"added": {}}]	15	1
4	2021-12-14 10:32:01.979782+03	1	none	1	[{"added": {}}]	11	1
5	2021-12-14 10:32:17.656503+03	1	none	1	[{"added": {}}]	18	1
6	2021-12-14 11:25:04.141515+03	21	1	3		11	1
7	2021-12-14 11:25:04.158411+03	20	1	3		11	1
8	2021-12-14 11:25:04.16086+03	19	1	3		11	1
9	2021-12-14 11:25:04.163048+03	18	1	3		11	1
10	2021-12-14 11:25:04.164407+03	17	1	3		11	1
11	2021-12-14 11:25:04.165725+03	16	1	3		11	1
12	2021-12-14 11:25:04.168141+03	15	1	3		11	1
13	2021-12-14 11:25:04.170084+03	14	1	3		11	1
14	2021-12-14 11:25:04.171411+03	13	1	3		11	1
15	2021-12-14 11:25:04.172944+03	12	1	3		11	1
16	2021-12-14 11:25:04.174414+03	11	1	3		11	1
17	2021-12-14 11:25:04.176497+03	10	1	3		11	1
18	2021-12-14 11:25:04.178102+03	9	1	3		11	1
19	2021-12-14 11:25:04.179609+03	8	1	3		11	1
20	2021-12-14 11:25:04.180995+03	7	1	3		11	1
21	2021-12-14 11:25:04.182952+03	6	1	3		11	1
22	2021-12-14 11:25:04.184419+03	5	1	3		11	1
23	2021-12-14 11:25:04.185848+03	4	1	3		11	1
24	2021-12-14 11:25:04.187104+03	3	1	3		11	1
25	2021-12-14 11:25:04.188261+03	2	1	3		11	1
26	2021-12-14 11:32:27.959578+03	13	Anapa	3		18	1
27	2021-12-14 11:32:27.965732+03	12	Amsterdam	3		18	1
28	2021-12-14 11:32:27.967479+03	11	Ambarli	3		18	1
29	2021-12-14 11:32:27.969185+03	10	Alytus	3		18	1
30	2021-12-14 11:32:27.971492+03	9	Alytus	3		18	1
31	2021-12-14 11:32:27.973095+03	8	Alkmaar	3		18	1
32	2021-12-14 11:32:27.974704+03	7	Ahrensburg	3		18	1
33	2021-12-14 11:32:27.976369+03	6	Aarhus	3		18	1
34	2021-12-14 11:32:27.977981+03	5	Aarhus	3		18	1
35	2021-12-14 11:32:27.979423+03	4	Aarhus	3		18	1
36	2021-12-14 11:32:27.980734+03	3	Aalesund	3		18	1
37	2021-12-14 11:32:27.9821+03	2	Enns	3		18	1
38	2021-12-14 11:32:27.983175+03	1	none	3		18	1
39	2021-12-14 11:32:35.789895+03	513	UNDEFINED	3		18	1
40	2021-12-14 11:32:35.793137+03	512	Austell	3		18	1
41	2021-12-14 11:32:35.794874+03	511	Trzydnik Duży	3		18	1
42	2021-12-14 11:32:35.796931+03	510	Mulheim	3		18	1
43	2021-12-14 11:32:35.799273+03	509	Mayen	3		18	1
44	2021-12-14 11:32:35.801043+03	508	Esbjerg	3		18	1
45	2021-12-14 11:32:35.80252+03	507	Horsens	3		18	1
46	2021-12-14 11:32:35.803992+03	506	Herning	3		18	1
47	2021-12-14 11:32:35.805598+03	505	Odense	3		18	1
48	2021-12-14 11:32:35.806916+03	504	Qingdao	3		18	1
49	2021-12-14 11:32:35.808339+03	503	Grigiskes	3		18	1
50	2021-12-14 11:32:35.809586+03	502	Buenaventura	3		18	1
51	2021-12-14 11:32:35.811002+03	501	Mayen	3		18	1
52	2021-12-14 11:32:35.812383+03	500	Vaesteras	3		18	1
53	2021-12-14 11:32:35.814741+03	499	Schongau	3		18	1
54	2021-12-14 11:32:35.816254+03	498	Terespol	3		18	1
55	2021-12-14 11:32:35.817701+03	497	Bramki	3		18	1
56	2021-12-14 11:32:35.819107+03	496	Tomaszow Lubelski	3		18	1
57	2021-12-14 11:32:35.820441+03	495	Belchatow	3		18	1
58	2021-12-14 11:32:35.822049+03	494	Jamsankoski	3		18	1
59	2021-12-14 11:32:35.823459+03	493	Elimaki	3		18	1
60	2021-12-14 11:32:35.824823+03	492	Kolkata	3		18	1
61	2021-12-14 11:32:35.826205+03	491	Vasteras	3		18	1
62	2021-12-14 11:32:35.828049+03	490	Poznan	3		18	1
63	2021-12-14 11:32:35.82978+03	489	Gullegem	3		18	1
64	2021-12-14 11:32:35.831451+03	488	Saint-Ghislain	3		18	1
65	2021-12-14 11:32:35.833334+03	487	Ostrava	3		18	1
66	2021-12-14 11:32:35.835226+03	486	Barszczowka	3		18	1
67	2021-12-14 11:32:35.837077+03	485	SOSNOWIEC	3		18	1
68	2021-12-14 11:32:35.839923+03	484	Rzeszow	3		18	1
69	2021-12-14 11:32:35.841234+03	483	TRZEBIEŃCZYCE	3		18	1
70	2021-12-14 11:32:35.842726+03	482	CZĘSTOCHOWA	3		18	1
71	2021-12-14 11:32:35.846218+03	481	Wschowa	3		18	1
72	2021-12-14 11:32:35.847785+03	480	Czerwonak	3		18	1
73	2021-12-14 11:32:35.849733+03	479	Seja	3		18	1
74	2021-12-14 11:32:35.850898+03	478	Wyszkow	3		18	1
75	2021-12-14 11:32:35.851981+03	477	Grojec	3		18	1
76	2021-12-14 11:32:35.853177+03	476	Zwolen	3		18	1
77	2021-12-14 11:32:35.854963+03	475	Krakow	3		18	1
78	2021-12-14 11:32:35.85604+03	474	Kalundborg	3		18	1
79	2021-12-14 11:32:35.857001+03	473	Jacksonville	3		18	1
80	2021-12-14 11:32:35.857972+03	472	Tilawa	3		18	1
81	2021-12-14 11:32:35.858941+03	471	Yangon	3		18	1
82	2021-12-14 11:32:35.861424+03	470	Herzberg am Harz	3		18	1
83	2021-12-14 11:32:35.863353+03	469	Gernsbach	3		18	1
84	2021-12-14 11:32:35.864884+03	468	Diemelstadt	3		18	1
85	2021-12-14 11:32:35.865946+03	467	Viinikkala	3		18	1
86	2021-12-14 11:32:35.866899+03	466	Collodi	3		18	1
87	2021-12-14 11:32:35.86783+03	465	Astorp	3		18	1
88	2021-12-14 11:32:35.868755+03	464	Cere	3		18	1
89	2021-12-14 11:32:35.870372+03	463	Hogdalen	3		18	1
90	2021-12-14 11:32:35.872087+03	462	Jonkoping	3		18	1
91	2021-12-14 11:32:35.8731+03	461	Margonin	3		18	1
92	2021-12-14 11:32:35.874064+03	460	Parnu	3		18	1
93	2021-12-14 11:32:35.875009+03	459	Kiiu	3		18	1
94	2021-12-14 11:32:35.876177+03	458	Kalna	3		18	1
95	2021-12-14 11:32:35.878401+03	457	Tampere	3		18	1
96	2021-12-14 11:32:35.881573+03	456	Stafford	3		18	1
97	2021-12-14 11:32:35.88357+03	455	Halifax	3		18	1
98	2021-12-14 11:32:35.885086+03	454	Luton	3		18	1
99	2021-12-14 11:32:35.887388+03	453	Leicester	3		18	1
100	2021-12-14 11:32:35.888749+03	452	Potters Bar	3		18	1
101	2021-12-14 11:32:35.889855+03	451	Norwich	3		18	1
102	2021-12-14 11:32:35.891704+03	450	Romsey	3		18	1
103	2021-12-14 11:32:35.89385+03	449	Erith	3		18	1
104	2021-12-14 11:32:35.895866+03	448	Charlton	3		18	1
105	2021-12-14 11:32:35.897642+03	447	Ravenna	3		18	1
106	2021-12-14 11:32:35.899568+03	446	Catania	3		18	1
107	2021-12-14 11:32:35.900865+03	445	Palermo	3		18	1
108	2021-12-14 11:32:35.902227+03	444	Gioia Tauro	3		18	1
109	2021-12-14 11:32:35.904047+03	443	Gernsbach	3		18	1
110	2021-12-14 11:32:35.905342+03	442	Neuss	3		18	1
111	2021-12-14 11:32:35.906581+03	441	Lubin	3		18	1
112	2021-12-14 11:32:35.908177+03	440	Tamworth	3		18	1
113	2021-12-14 11:32:35.90925+03	439	Milton Keyness	3		18	1
114	2021-12-14 11:32:35.911633+03	438	Enderby	3		18	1
115	2021-12-14 11:32:35.913119+03	437	Birmingham	3		18	1
116	2021-12-14 11:32:35.915937+03	436	Blackburn	3		18	1
117	2021-12-14 11:32:35.917307+03	435	Luton	3		18	1
118	2021-12-14 11:32:35.91908+03	434	Southampton	3		18	1
119	2021-12-14 11:32:35.920462+03	433	Corby	3		18	1
120	2021-12-14 11:32:35.921566+03	432	St. Albans	3		18	1
121	2021-12-14 11:32:35.922522+03	431	Paterek	3		18	1
122	2021-12-14 11:32:35.923822+03	430	Karlstad	3		18	1
123	2021-12-14 11:32:35.925888+03	429	Kavlinge	3		18	1
124	2021-12-14 11:32:35.928365+03	428	Bilcza	3		18	1
125	2021-12-14 11:32:35.93045+03	427	Chentelham	3		18	1
126	2021-12-14 11:32:35.932596+03	426	Antsla	3		18	1
127	2021-12-14 11:32:35.934103+03	425	Bydgoszcz	3		18	1
128	2021-12-14 11:32:35.935998+03	424	New York	3		18	1
129	2021-12-14 11:32:35.937327+03	423	San Juan Opico	3		18	1
130	2021-12-14 11:32:35.938396+03	422	Brigadiru	3		18	1
131	2021-12-14 11:32:35.939425+03	421	Cluj	3		18	1
132	2021-12-14 11:32:35.940693+03	420	Orebro	3		18	1
133	2021-12-14 11:32:35.941741+03	419	Daugavpils	3		18	1
134	2021-12-14 11:32:35.943287+03	418	Siauliai	3		18	1
135	2021-12-14 11:32:35.94541+03	417	Karlstadt	3		18	1
136	2021-12-14 11:32:35.94712+03	416	Barszczówka	3		18	1
137	2021-12-14 11:32:35.948508+03	415	Copenhagen	3		18	1
138	2021-12-14 11:32:35.949818+03	414	Zielona Gora	3		18	1
139	2021-12-14 11:32:41.914377+03	413	Zilina	3		18	1
140	2021-12-14 11:32:41.918343+03	412	Zhongshan	3		18	1
141	2021-12-14 11:32:41.920197+03	411	Zhidachev	3		18	1
142	2021-12-14 11:32:41.922032+03	410	Zhidachev	3		18	1
143	2021-12-14 11:32:41.923493+03	409	Zhapu	3		18	1
144	2021-12-14 11:32:41.925044+03	408	Zgierz	3		18	1
145	2021-12-14 11:32:41.926654+03	407	Zagreb	3		18	1
146	2021-12-14 11:32:41.92839+03	406	Yokohama	3		18	1
147	2021-12-14 11:32:41.929694+03	405	Yantian	3		18	1
148	2021-12-14 11:32:41.931479+03	404	Xingang	3		18	1
149	2021-12-14 11:32:41.932704+03	403	Xiamen	3		18	1
150	2021-12-14 11:32:41.934145+03	402	Wroclaw	3		18	1
151	2021-12-14 11:32:41.936578+03	401	Wroclaw	3		18	1
152	2021-12-14 11:32:41.93818+03	400	Aalborg	3		18	1
153	2021-12-14 11:32:41.940042+03	399	Wognum	3		18	1
154	2021-12-14 11:32:41.941454+03	398	Warsaw	3		18	1
155	2021-12-14 11:32:41.943006+03	397	Volzhsk	3		18	1
156	2021-12-14 11:32:41.944724+03	396	Volgograd	3		18	1
157	2021-12-14 11:32:41.946465+03	395	Wognum	3		18	1
158	2021-12-14 11:32:41.947638+03	394	Vilnius	3		18	1
159	2021-12-14 11:32:41.948987+03	393	Vitoria	3		18	1
160	2021-12-14 11:32:41.950408+03	392	Vilnius	3		18	1
161	2021-12-14 11:32:41.952038+03	391	Vilnius	3		18	1
162	2021-12-14 11:32:41.95379+03	390	Vilnius	3		18	1
163	2021-12-14 11:32:41.955238+03	389	Jaroslaw	3		18	1
164	2021-12-14 11:32:41.956459+03	388	Viljandi	3		18	1
165	2021-12-14 11:32:41.957573+03	387	Verona	3		18	1
166	2021-12-14 11:32:41.958998+03	386	Veracruz	3		18	1
167	2021-12-14 11:32:41.960461+03	385	Venice	3		18	1
168	2021-12-14 11:32:41.962032+03	384	Venice	3		18	1
169	2021-12-14 11:32:41.963405+03	383	Veliko Tarnovo	3		18	1
170	2021-12-14 11:32:41.96455+03	382	Warsaw	3		18	1
171	2021-12-14 11:32:41.965931+03	381	Varna	3		18	1
172	2021-12-14 11:32:41.967091+03	380	Varkaus	3		18	1
173	2021-12-14 11:32:41.968374+03	379	Vantaa	3		18	1
174	2021-12-14 11:32:41.97+03	378	Valparaiso	3		18	1
175	2021-12-14 11:32:41.97133+03	377	Valmiera	3		18	1
176	2021-12-14 11:32:41.97249+03	376	Tuticorin	3		18	1
177	2021-12-14 11:32:41.973656+03	375	Turku	3		18	1
178	2021-12-14 11:32:41.974844+03	374	Tuapse	3		18	1
179	2021-12-14 11:32:41.97584+03	373	Tronsberg	3		18	1
180	2021-12-14 11:32:41.977031+03	372	Trondheim	3		18	1
181	2021-12-14 11:32:41.978245+03	371	Trondheim	3		18	1
182	2021-12-14 11:32:41.979554+03	370	Tronsberg	3		18	1
183	2021-12-14 11:32:41.980948+03	369	Trieste	3		18	1
184	2021-12-14 11:32:41.982317+03	368	Transiidikeskuse	3		18	1
185	2021-12-14 11:32:41.983881+03	367	Tonsburg	3		18	1
186	2021-12-14 11:32:41.985288+03	366	Tokyo	3		18	1
187	2021-12-14 11:32:41.98671+03	365	Togliatti	3		18	1
188	2021-12-14 11:32:41.988014+03	364	Tianjin	3		18	1
189	2021-12-14 11:32:41.98913+03	363	Thessaloniki	3		18	1
190	2021-12-14 11:32:41.990521+03	362	Thamesport	3		18	1
191	2021-12-14 11:32:41.992317+03	361	Tekirdag	3		18	1
192	2021-12-14 11:32:41.993811+03	360	Tekirdag	3		18	1
193	2021-12-14 11:32:41.995229+03	359	Teesport	3		18	1
194	2021-12-14 11:32:41.996464+03	358	Tartu	3		18	1
195	2021-12-14 11:32:41.998003+03	357	Taoyuan	3		18	1
196	2021-12-14 11:32:41.999423+03	356	Taoyuan	3		18	1
197	2021-12-14 11:32:42.001347+03	355	Tallinn	3		18	1
198	2021-12-14 11:32:42.003047+03	354	Tallinn	3		18	1
199	2021-12-14 11:32:42.005242+03	353	Tallinn	3		18	1
200	2021-12-14 11:32:42.006617+03	352	Tallinn	3		18	1
201	2021-12-14 11:32:42.007761+03	351	Taiwan	3		18	1
202	2021-12-14 11:32:42.009407+03	350	Taipei	3		18	1
203	2021-12-14 11:32:42.010876+03	349	Taichung	3		18	1
204	2021-12-14 11:32:42.012342+03	348	Szczecin	3		18	1
205	2021-12-14 11:32:42.01383+03	347	Szczecin	3		18	1
206	2021-12-14 11:32:42.015232+03	346	Świecie	3		18	1
207	2021-12-14 11:32:42.016789+03	345	Świecie	3		18	1
208	2021-12-14 11:32:42.018293+03	344	Świecie	3		18	1
209	2021-12-14 11:32:42.019658+03	343	Świecie	3		18	1
210	2021-12-14 11:32:42.021363+03	342	Swarzedz	3		18	1
211	2021-12-14 11:32:42.022916+03	341	Swarzedz	3		18	1
212	2021-12-14 11:32:42.024426+03	340	Svetogorsk	3		18	1
213	2021-12-14 11:32:42.026145+03	339	Surabaya	3		18	1
214	2021-12-14 11:32:42.027895+03	338	Subic	3		18	1
215	2021-12-14 11:32:42.029342+03	337	Stockholm	3		18	1
216	2021-12-14 11:32:42.032406+03	336	Stavropol	3		18	1
217	2021-12-14 11:32:42.033664+03	335	Stavanger	3		18	1
218	2021-12-14 11:32:42.036155+03	334	Stavanger	3		18	1
219	2021-12-14 11:32:42.037955+03	333	Stare Kurowo	3		18	1
220	2021-12-14 11:32:42.03971+03	332	Stare Kurowo	3		18	1
221	2021-12-14 11:32:42.040885+03	331	Stare Kurowo	3		18	1
222	2021-12-14 11:32:42.04252+03	330	St. Albans	3		18	1
223	2021-12-14 11:32:42.044729+03	329	St Petersburg	3		18	1
224	2021-12-14 11:32:42.045908+03	328	St. Albans	3		18	1
225	2021-12-14 11:32:42.046909+03	327	St Petersburg	3		18	1
226	2021-12-14 11:32:42.047833+03	326	St Petersburg	3		18	1
227	2021-12-14 11:32:42.048704+03	325	St Petersburg	3		18	1
228	2021-12-14 11:32:42.050476+03	324	St. Albans	3		18	1
229	2021-12-14 11:32:42.053889+03	323	Spremberg	3		18	1
230	2021-12-14 11:32:42.054955+03	322	Sofia	3		18	1
231	2021-12-14 11:32:42.055857+03	321	Soedertaelje	3		18	1
232	2021-12-14 11:32:42.056782+03	320	Slavyansk-na-Kubani	3		18	1
233	2021-12-14 11:32:42.057721+03	319	Singapore	3		18	1
234	2021-12-14 11:32:42.06046+03	318	Siemianowice Śląskie	3		18	1
235	2021-12-14 11:32:42.061903+03	317	Siemianowice Śląskie	3		18	1
236	2021-12-14 11:32:42.064231+03	316	Siemianowice Śląskie	3		18	1
237	2021-12-14 11:32:42.068855+03	315	Siauilai	3		18	1
238	2021-12-14 11:32:42.071208+03	314	Siauilai	3		18	1
239	2021-12-14 11:32:48.621588+03	313	Shekou	3		18	1
240	2021-12-14 11:32:48.625233+03	312	Shanghai	3		18	1
241	2021-12-14 11:32:48.628744+03	311	Shakhty	3		18	1
242	2021-12-14 11:32:48.629986+03	310	Setubal	3		18	1
243	2021-12-14 11:32:48.631708+03	309	Szczecin	3		18	1
244	2021-12-14 11:32:48.63393+03	308	Santos	3		18	1
245	2021-12-14 11:32:48.635737+03	307	Santo Tomas de Castilla	3		18	1
246	2021-12-14 11:32:48.637163+03	306	Santiago	3		18	1
247	2021-12-14 11:32:48.638669+03	305	Santiago	3		18	1
248	2021-12-14 11:32:48.640305+03	304	Santa Giustina Bellunese	3		18	1
249	2021-12-14 11:32:48.641894+03	303	San Vicente	3		18	1
250	2021-12-14 11:32:48.644028+03	302	San Antonio	3		18	1
251	2021-12-14 11:32:48.648003+03	301	Salvador	3		18	1
252	2021-12-14 11:32:48.649379+03	300	Rotterdam	3		18	1
253	2021-12-14 11:32:48.650707+03	299	Rotterdam	3		18	1
254	2021-12-14 11:32:48.652845+03	298	Rotterdam	3		18	1
255	2021-12-14 11:32:48.654099+03	297	Rostov-on-Don	3		18	1
256	2021-12-14 11:32:48.655477+03	296	Rio Grande	3		18	1
257	2021-12-14 11:32:48.656787+03	295	Riga	3		18	1
258	2021-12-14 11:32:48.65809+03	294	Riga	3		18	1
259	2021-12-14 11:32:48.659827+03	293	Riga	3		18	1
260	2021-12-14 11:32:48.661707+03	292	Rauma	3		18	1
261	2021-12-14 11:32:48.663668+03	291	Raon l’Etape	3		18	1
262	2021-12-14 11:32:48.665349+03	290	Raon l’Etape	3		18	1
263	2021-12-14 11:32:48.66674+03	289	Randers	3		18	1
264	2021-12-14 11:32:48.668564+03	288	Ramenskoye	3		18	1
265	2021-12-14 11:32:48.670312+03	287	Qingdao	3		18	1
266	2021-12-14 11:32:48.671624+03	286	Port Qasim	3		18	1
267	2021-12-14 11:32:48.672724+03	285	Puerto Limon	3		18	1
268	2021-12-14 11:32:48.674255+03	284	Puerto Cortes	3		18	1
269	2021-12-14 11:32:48.675974+03	283	Porto	3		18	1
270	2021-12-14 11:32:48.678082+03	282	Port Qasim	3		18	1
271	2021-12-14 11:32:48.680064+03	281	Port Klang	3		18	1
272	2021-12-14 11:32:48.681792+03	280	Port Klang	3		18	1
273	2021-12-14 11:32:48.683331+03	279	Pori	3		18	1
274	2021-12-14 11:32:48.685223+03	278	Swiecie	3		18	1
275	2021-12-14 11:32:48.686857+03	277	Stare Kurowo	3		18	1
276	2021-12-14 11:32:48.688193+03	276	Warsaw	3		18	1
277	2021-12-14 11:32:48.689626+03	275	Piraeus	3		18	1
278	2021-12-14 11:32:48.690605+03	274	Piraeus	3		18	1
279	2021-12-14 11:32:48.691533+03	273	Piraeus	3		18	1
280	2021-12-14 11:32:48.69524+03	272	Piła	3		18	1
281	2021-12-14 11:32:48.696698+03	271	Piła	3		18	1
282	2021-12-14 11:32:48.698914+03	270	Petrozavodsk	3		18	1
283	2021-12-14 11:32:48.701212+03	269	Penang	3		18	1
284	2021-12-14 11:32:48.702913+03	268	Parnu	3		18	1
285	2021-12-14 11:32:48.704491+03	267	Paranagua	3		18	1
286	2021-12-14 11:32:48.705852+03	266	Paldiski	3		18	1
287	2021-12-14 11:32:48.707382+03	265	Oulu	3		18	1
288	2021-12-14 11:32:48.710098+03	264	Ostroleka	3		18	1
289	2021-12-14 11:32:48.711791+03	263	Ostroleka	3		18	1
290	2021-12-14 11:32:48.712735+03	262	Oslo	3		18	1
291	2021-12-14 11:32:48.713732+03	261	Oslo	3		18	1
292	2021-12-14 11:32:48.715666+03	260	Osaka	3		18	1
293	2021-12-14 11:32:48.717306+03	259	Orkanger	3		18	1
294	2021-12-14 11:32:48.718769+03	258	Orkanger	3		18	1
295	2021-12-14 11:32:48.719964+03	257	Olaine	3		18	1
296	2021-12-14 11:32:48.720905+03	256	Olaine	3		18	1
297	2021-12-14 11:32:48.722239+03	255	Ogre	3		18	1
298	2021-12-14 11:32:48.724385+03	254	Odessa	3		18	1
299	2021-12-14 11:32:48.728143+03	253	Novorossiysk	3		18	1
300	2021-12-14 11:32:48.730021+03	252	Novorossiysk	3		18	1
301	2021-12-14 11:32:48.731682+03	251	Norwich	3		18	1
302	2021-12-14 11:32:48.735985+03	250	Norway	3		18	1
303	2021-12-14 11:32:48.737418+03	249	Norrkoeping	3		18	1
304	2021-12-14 11:32:48.738932+03	248	Norresunby	3		18	1
305	2021-12-14 11:32:48.740705+03	247	Norresunby	3		18	1
306	2021-12-14 11:32:48.74305+03	246	Nokia	3		18	1
307	2021-12-14 11:32:48.74529+03	245	Ningbo	3		18	1
308	2021-12-14 11:32:48.746554+03	244	Niemce	3		18	1
309	2021-12-14 11:32:48.74825+03	243	Nhava Sheva	3		18	1
310	2021-12-14 11:32:48.750048+03	242	Nhava Sheva	3		18	1
311	2021-12-14 11:32:48.751729+03	241	North Europe	3		18	1
312	2021-12-14 11:32:48.753552+03	240	Navegantes	3		18	1
313	2021-12-14 11:32:48.759048+03	239	Napoli	3		18	1
314	2021-12-14 11:32:48.763012+03	238	Napoli	3		18	1
315	2021-12-14 11:32:48.766552+03	237	Naestved	3		18	1
316	2021-12-14 11:32:48.76949+03	236	Naestved	3		18	1
317	2021-12-14 11:32:48.771388+03	235	Munich	3		18	1
318	2021-12-14 11:32:48.773079+03	234	Mundra	3		18	1
319	2021-12-14 11:32:48.77508+03	233	Moss	3		18	1
320	2021-12-14 11:32:48.778051+03	232	Moss	3		18	1
321	2021-12-14 11:32:48.7848+03	231	Moscow	3		18	1
322	2021-12-14 11:32:48.787442+03	230	Moscow	3		18	1
323	2021-12-14 11:32:48.7891+03	229	Montevideo	3		18	1
324	2021-12-14 11:32:48.791836+03	228	Mombasa	3		18	1
325	2021-12-14 11:32:48.793681+03	227	Midlands	3		18	1
326	2021-12-14 11:32:48.79494+03	226	Mersin	3		18	1
327	2021-12-14 11:32:48.796137+03	225	Mersin	3		18	1
328	2021-12-14 11:32:48.797372+03	224	Maykop	3		18	1
329	2021-12-14 11:32:48.799108+03	223	Marum	3		18	1
330	2021-12-14 11:32:48.800549+03	222	Marsberg	3		18	1
331	2021-12-14 11:32:48.802347+03	221	Marsaxlokk	3		18	1
332	2021-12-14 11:32:48.803613+03	220	Mariestad	3		18	1
333	2021-12-14 11:32:48.804735+03	219	Mariestad	3		18	1
334	2021-12-14 11:32:48.805786+03	218	Manzanillo	3		18	1
335	2021-12-14 11:32:48.807542+03	217	Mantta	3		18	1
336	2021-12-14 11:32:48.810324+03	216	Mantta	3		18	1
337	2021-12-14 11:32:48.811437+03	215	Mantta	3		18	1
338	2021-12-14 11:32:48.812334+03	214	Mantta	3		18	1
339	2021-12-14 11:32:58.114563+03	213	Manila	3		18	1
340	2021-12-14 11:32:58.11879+03	212	Malmo	3		18	1
341	2021-12-14 11:32:58.120145+03	211	Malmo	3		18	1
342	2021-12-14 11:32:58.1215+03	210	Mainz	3		18	1
343	2021-12-14 11:32:58.122781+03	209	Mainz	3		18	1
344	2021-12-14 11:32:58.12448+03	208	Maardu	3		18	1
345	2021-12-14 11:32:58.126275+03	207	Maaloey	3		18	1
346	2021-12-14 11:32:58.127597+03	206	Lucca	3		18	1
347	2021-12-14 11:32:58.128948+03	205	Lublin	3		18	1
348	2021-12-14 11:32:58.13102+03	204	Lubeck	3		18	1
349	2021-12-14 11:32:58.132752+03	203	London	3		18	1
350	2021-12-14 11:32:58.134369+03	202	Lodz	3		18	1
351	2021-12-14 11:32:58.13561+03	201	Livorno	3		18	1
352	2021-12-14 11:32:58.137046+03	200	Lithuania	3		18	1
353	2021-12-14 11:32:58.138509+03	199	Linz	3		18	1
354	2021-12-14 11:32:58.140054+03	198	Limasol	3		18	1
355	2021-12-14 11:32:58.141735+03	197	Lermontov	3		18	1
356	2021-12-14 11:32:58.142917+03	196	Lenzing	3		18	1
357	2021-12-14 11:32:58.144095+03	195	Leixoes	3		18	1
358	2021-12-14 11:32:58.145488+03	194	Leixoes	3		18	1
359	2021-12-14 11:32:58.147396+03	193	Leipzig	3		18	1
360	2021-12-14 11:32:58.148676+03	192	Le Havre	3		18	1
361	2021-12-14 11:32:58.150157+03	191	Lat Krabang	3		18	1
362	2021-12-14 11:32:58.151434+03	190	Lat Krabang	3		18	1
363	2021-12-14 11:32:58.152937+03	189	Larvik	3		18	1
364	2021-12-14 11:32:58.154337+03	188	Larvik	3		18	1
365	2021-12-14 11:32:58.155603+03	187	Lahti	3		18	1
366	2021-12-14 11:32:58.156629+03	186	Laem Chabang	3		18	1
367	2021-12-14 11:32:58.157885+03	185	La Spezia	3		18	1
368	2021-12-14 11:32:58.159502+03	184	Gwangyang	3		18	1
369	2021-12-14 11:32:58.160689+03	183	Kuvshinovo	3		18	1
370	2021-12-14 11:32:58.162097+03	182	Kuusankoski	3		18	1
371	2021-12-14 11:32:58.163532+03	181	Kumport	3		18	1
372	2021-12-14 11:32:58.164915+03	180	Kristiansand	3		18	1
373	2021-12-14 11:32:58.166366+03	179	Kristiansand	3		18	1
374	2021-12-14 11:32:58.167564+03	178	Krasnodar	3		18	1
375	2021-12-14 11:32:58.168781+03	177	Krapkowice	3		18	1
376	2021-12-14 11:32:58.169778+03	176	Krasnodar	3		18	1
377	2021-12-14 11:32:58.171101+03	175	Kotka	3		18	1
378	2021-12-14 11:32:58.172311+03	174	Kostheim	3		18	1
379	2021-12-14 11:32:58.173397+03	173	Koronowo	3		18	1
380	2021-12-14 11:32:58.174996+03	172	Koronowo	3		18	1
381	2021-12-14 11:32:58.176428+03	171	Kommunar	3		18	1
382	2021-12-14 11:32:58.177839+03	170	Kolding	3		18	1
383	2021-12-14 11:32:58.179682+03	169	Kolding	3		18	1
384	2021-12-14 11:32:58.181234+03	168	Koipola	3		18	1
385	2021-12-14 11:32:58.182633+03	167	Kobe	3		18	1
386	2021-12-14 11:32:58.183969+03	166	Khlong Toei	3		18	1
387	2021-12-14 11:32:58.185676+03	165	Klaipeda	3		18	1
388	2021-12-14 11:32:58.187064+03	164	Klaipeda	3		18	1
389	2021-12-14 11:32:58.188389+03	163	King Abdullah	3		18	1
390	2021-12-14 11:32:58.189818+03	162	Kielce	3		18	1
391	2021-12-14 11:32:58.191197+03	161	Kekava	3		18	1
392	2021-12-14 11:32:58.192475+03	160	Keelung	3		18	1
393	2021-12-14 11:32:58.194011+03	159	Kaunas	3		18	1
394	2021-12-14 11:32:58.196373+03	158	Kaunas	3		18	1
395	2021-12-14 11:32:58.19853+03	157	Kattupalli	3		18	1
396	2021-12-14 11:32:58.199865+03	156	Kassel	3		18	1
397	2021-12-14 11:32:58.201138+03	155	Karhula	3		18	1
398	2021-12-14 11:32:58.202978+03	154	Karachi	3		18	1
399	2021-12-14 11:32:58.204225+03	153	Kaohsiung	3		18	1
400	2021-12-14 11:32:58.205699+03	152	Kaohsiung	3		18	1
401	2021-12-14 11:32:58.207747+03	151	Kaliningrad	3		18	1
402	2021-12-14 11:32:58.209122+03	150	Kaipola	3		18	1
403	2021-12-14 11:32:58.210468+03	149	Jelgava	3		18	1
404	2021-12-14 11:32:58.211758+03	148	Jelgava	3		18	1
405	2021-12-14 11:32:58.213556+03	147	Jeddah	3		18	1
406	2021-12-14 11:32:58.214783+03	146	Jebel Ali	3		18	1
407	2021-12-14 11:32:58.21592+03	145	Jakarta	3		18	1
408	2021-12-14 11:32:58.216972+03	144	Izmit	3		18	1
409	2021-12-14 11:32:58.219135+03	143	Izmit	3		18	1
410	2021-12-14 11:32:58.220864+03	142	Izmit	3		18	1
411	2021-12-14 11:32:58.222114+03	141	Izmail	3		18	1
412	2021-12-14 11:32:58.223719+03	140	Itapoa	3		18	1
413	2021-12-14 11:32:58.225182+03	139	Istanbul	3		18	1
414	2021-12-14 11:32:58.226445+03	138	Istanbul	3		18	1
415	2021-12-14 11:32:58.22799+03	137	Iskenderun	3		18	1
416	2021-12-14 11:32:58.229746+03	136	Ipswich	3		18	1
417	2021-12-14 11:32:58.231809+03	135	Hyltebruk	3		18	1
418	2021-12-14 11:32:58.233034+03	134	Hong Kong	3		18	1
419	2021-12-14 11:32:58.234485+03	133	Ho Chi Minh	3		18	1
420	2021-12-14 11:32:58.235898+03	132	Ho Chi Minh	3		18	1
421	2021-12-14 11:32:58.237265+03	131	Helsinki	3		18	1
422	2021-12-14 11:32:58.238475+03	130	Helsinki	3		18	1
423	2021-12-14 11:32:58.239895+03	129	Helsingor	3		18	1
424	2021-12-14 11:32:58.241314+03	128	Helsinborg	3		18	1
425	2021-12-14 11:32:58.242602+03	127	Helsinborg	3		18	1
426	2021-12-14 11:32:58.243809+03	126	Helsinborg	3		18	1
427	2021-12-14 11:32:58.245132+03	125	Heimdal	3		18	1
428	2021-12-14 11:32:58.246241+03	124	Hazira	3		18	1
429	2021-12-14 11:32:58.248196+03	123	Hasselroth	3		18	1
430	2021-12-14 11:32:58.249758+03	122	Hameenlinna	3		18	1
431	2021-12-14 11:32:58.251348+03	121	Hamburg	3		18	1
432	2021-12-14 11:32:58.25264+03	120	Hamburg	3		18	1
433	2021-12-14 11:32:58.253891+03	119	Hamburg	3		18	1
434	2021-12-14 11:32:58.255335+03	118	Halmstad	3		18	1
435	2021-12-14 11:32:58.256774+03	117	Halmstad	3		18	1
436	2021-12-14 11:32:58.258363+03	116	Haldia	3		18	1
437	2021-12-14 11:32:58.259646+03	115	Haiphong	3		18	1
438	2021-12-14 11:32:58.260918+03	114	Haifa	3		18	1
439	2021-12-14 11:33:06.211381+03	113	Haarlem	3		18	1
440	2021-12-14 11:33:06.215107+03	112	Gwangyang	3		18	1
441	2021-12-14 11:33:06.216938+03	111	Guayaquil	3		18	1
442	2021-12-14 11:33:06.218411+03	110	Gothenburg	3		18	1
443	2021-12-14 11:33:06.220044+03	109	Gothenburg	3		18	1
444	2021-12-14 11:33:06.221769+03	108	Goryachiy Kluch	3		18	1
445	2021-12-14 11:33:06.223363+03	107	Goryachiy Kluch	3		18	1
446	2021-12-14 11:33:06.225178+03	106	Gliwice	3		18	1
447	2021-12-14 11:33:06.226501+03	105	Gliwice	3		18	1
448	2021-12-14 11:33:06.227951+03	104	Giershagen	3		18	1
449	2021-12-14 11:33:06.229576+03	103	Giershagen	3		18	1
450	2021-12-14 11:33:06.23137+03	102	Genoa	3		18	1
451	2021-12-14 11:33:06.232778+03	101	Genoa	3		18	1
452	2021-12-14 11:33:06.234672+03	100	Gemlik	3		18	1
453	2021-12-14 11:33:06.236604+03	99	Gebze	3		18	1
454	2021-12-14 11:33:06.238445+03	98	Gebze	3		18	1
455	2021-12-14 11:33:06.239958+03	97	Gdansk / Gdynia	3		18	1
456	2021-12-14 11:33:06.241411+03	96	Gdansk	3		18	1
457	2021-12-14 11:33:06.242526+03	95	Gdansk / Gdynia	3		18	1
458	2021-12-14 11:33:06.243719+03	94	Gdansk	3		18	1
459	2021-12-14 11:33:06.245304+03	93	Gdansk	3		18	1
460	2021-12-14 11:33:06.246556+03	92	Gaevle	3		18	1
461	2021-12-14 11:33:06.247928+03	91	Fusa	3		18	1
462	2021-12-14 11:33:06.249276+03	90	Fusa	3		18	1
463	2021-12-14 11:33:06.250523+03	89	Frohnleiten	3		18	1
464	2021-12-14 11:33:06.251875+03	88	Frohnleiten	3		18	1
465	2021-12-14 11:33:06.253393+03	87	Fredrikstad	3		18	1
466	2021-12-14 11:33:06.254674+03	86	Fredrikstad	3		18	1
467	2021-12-14 11:33:06.256129+03	85	Fredericia	3		18	1
468	2021-12-14 11:33:06.257608+03	84	Fredericia	3		18	1
469	2021-12-14 11:33:06.259235+03	83	Raon l’Etape	3		18	1
470	2021-12-14 11:33:06.260891+03	82	Rocquancourt	3		18	1
471	2021-12-14 11:33:06.262366+03	81	Raon l’Etape	3		18	1
472	2021-12-14 11:33:06.263641+03	80	Fos sur Mer	3		18	1
473	2021-12-14 11:33:06.264933+03	79	Finland	3		18	1
474	2021-12-14 11:33:06.266252+03	78	Felixstowe	3		18	1
475	2021-12-14 11:33:06.267309+03	77	Felixstowe	3		18	1
476	2021-12-14 11:33:06.268698+03	76	Estonia	3		18	1
477	2021-12-14 11:33:06.269965+03	75	Enns	3		18	1
478	2021-12-14 11:33:06.270982+03	74	Enderby	3		18	1
479	2021-12-14 11:33:06.272077+03	73	Eerbek	3		18	1
480	2021-12-14 11:33:06.273314+03	72	Eerbek	3		18	1
481	2021-12-14 11:33:06.274938+03	71	Eerbek	3		18	1
482	2021-12-14 11:33:06.276491+03	70	Düren	3		18	1
483	2021-12-14 11:33:06.278051+03	69	Binh Duong	3		18	1
484	2021-12-14 11:33:06.27948+03	68	Düren	3		18	1
485	2021-12-14 11:33:06.280844+03	67	Duenas	3		18	1
486	2021-12-14 11:33:06.282516+03	66	Dublin	3		18	1
487	2021-12-14 11:33:06.283926+03	65	Drammen	3		18	1
488	2021-12-14 11:33:06.285289+03	64	Drammen	3		18	1
489	2021-12-14 11:33:06.286444+03	63	Drachten	3		18	1
490	2021-12-14 11:33:06.287852+03	62	Eerbek	3		18	1
491	2021-12-14 11:33:06.289317+03	61	Doetinchem	3		18	1
492	2021-12-14 11:33:06.290672+03	60	Dmitrov	3		18	1
493	2021-12-14 11:33:06.29297+03	59	Denmark	3		18	1
494	2021-12-14 11:33:06.294958+03	58	Dammam	3		18	1
495	2021-12-14 11:33:06.296409+03	57	Da Nang	3		18	1
496	2021-12-14 11:33:06.297563+03	56	Coronel	3		18	1
497	2021-12-14 11:33:06.299494+03	55	Copenhagen	3		18	1
498	2021-12-14 11:33:06.30076+03	54	CMP	3		18	1
499	2021-12-14 11:33:06.301953+03	53	Chiwan	3		18	1
500	2021-12-14 11:33:06.303151+03	52	Utzenstorf	3		18	1
501	2021-12-14 11:33:06.304397+03	51	Cesis	3		18	1
502	2021-12-14 11:33:06.305656+03	50	Caucedo	3		18	1
503	2021-12-14 11:33:06.307051+03	49	Cassino	3		18	1
504	2021-12-14 11:33:06.308637+03	48	Cartagena	3		18	1
505	2021-12-14 11:33:06.310542+03	47	Cartagena	3		18	1
506	2021-12-14 11:33:06.311824+03	46	Cartagena	3		18	1
507	2021-12-14 11:33:06.312848+03	45	Callao	3		18	1
508	2021-12-14 11:33:06.314429+03	44	Cai Mep	3		18	1
509	2021-12-14 11:33:06.315777+03	43	Busan	3		18	1
510	2021-12-14 11:33:06.317382+03	42	Burgas	3		18	1
511	2021-12-14 11:33:06.318791+03	41	Buenos Aires	3		18	1
512	2021-12-14 11:33:06.32028+03	40	Budapest	3		18	1
513	2021-12-14 11:33:06.321888+03	39	Brzeziny	3		18	1
514	2021-12-14 11:33:06.323188+03	38	Brzeziny	3		18	1
515	2021-12-14 11:33:06.324989+03	37	Bremerhaven	3		18	1
516	2021-12-14 11:33:06.326819+03	36	Bremen	3		18	1
517	2021-12-14 11:33:06.32844+03	35	Binh Duong	3		18	1
518	2021-12-14 11:33:06.329503+03	34	Binh Duong	3		18	1
519	2021-12-14 11:33:06.330666+03	33	Berlin	3		18	1
520	2021-12-14 11:33:06.331833+03	32	Bergen	3		18	1
521	2021-12-14 11:33:06.332969+03	31	Bergen	3		18	1
522	2021-12-14 11:33:06.334189+03	30	Belgrade	3		18	1
523	2021-12-14 11:33:06.335577+03	29	Bataysk	3		18	1
524	2021-12-14 11:33:06.336821+03	28	Barszczówka	3		18	1
525	2021-12-14 11:33:06.338132+03	27	Barszczówka	3		18	1
526	2021-12-14 11:33:06.339489+03	26	Barranquilla	3		18	1
527	2021-12-14 11:33:06.340753+03	25	Barcelona	3		18	1
528	2021-12-14 11:33:06.342021+03	24	Bangkok	3		18	1
529	2021-12-14 11:33:06.343257+03	23	Bandar Abbas	3		18	1
530	2021-12-14 11:33:06.344368+03	22	Athens	3		18	1
531	2021-12-14 11:33:06.34581+03	21	Asuncion	3		18	1
532	2021-12-14 11:33:06.347017+03	20	Ashdod	3		18	1
533	2021-12-14 11:33:06.348136+03	19	Asenovgrad	3		18	1
534	2021-12-14 11:33:06.349143+03	18	Arkhangelsk	3		18	1
535	2021-12-14 11:33:06.350415+03	17	Antwerp	3		18	1
536	2021-12-14 11:33:06.351357+03	16	Antwerp	3		18	1
537	2021-12-14 11:33:06.352521+03	15	Annweiler	3		18	1
538	2021-12-14 11:33:06.353765+03	14	Annweiler	3		18	1
539	2021-12-14 11:33:12.296092+03	514	none	1	[{"added": {}}]	18	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	inputs	back
8	inputs	buffer
9	inputs	counter
10	inputs	counterupd
11	inputs	empresa
12	inputs	existing
13	inputs	freight
14	inputs	invoices
15	inputs	materials
16	inputs	monthly
17	inputs	po
18	inputs	ports
19	inputs	shipment
20	inputs	track
21	inputs	upd
22	inputs	so
23	inputs	shipmentrate
24	inputs	readiness
25	inputs	profile
26	inputs	monthlyrate
27	inputs	monthlycosts
28	inputs	fincosts
29	inputs	costs
30	inputs	containers
31	inputs	claimsukr
32	inputs	claims
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-12-14 10:27:58.378232+03
2	auth	0001_initial	2021-12-14 10:27:58.474218+03
3	admin	0001_initial	2021-12-14 10:27:58.502907+03
4	admin	0002_logentry_remove_auto_add	2021-12-14 10:27:58.516895+03
5	admin	0003_logentry_add_action_flag_choices	2021-12-14 10:27:58.53389+03
6	contenttypes	0002_remove_content_type_name	2021-12-14 10:27:58.592483+03
7	auth	0002_alter_permission_name_max_length	2021-12-14 10:27:58.680656+03
8	auth	0003_alter_user_email_max_length	2021-12-14 10:27:58.690313+03
9	auth	0004_alter_user_username_opts	2021-12-14 10:27:58.706637+03
10	auth	0005_alter_user_last_login_null	2021-12-14 10:27:58.728169+03
11	auth	0006_require_contenttypes_0002	2021-12-14 10:27:58.732312+03
12	auth	0007_alter_validators_add_error_messages	2021-12-14 10:27:58.748438+03
13	auth	0008_alter_user_username_max_length	2021-12-14 10:27:58.772782+03
14	auth	0009_alter_user_last_name_max_length	2021-12-14 10:27:58.789444+03
15	auth	0010_alter_group_name_max_length	2021-12-14 10:27:58.805086+03
16	auth	0011_update_proxy_permissions	2021-12-14 10:27:58.823334+03
17	auth	0012_alter_user_first_name_max_length	2021-12-14 10:27:58.858558+03
18	inputs	0001_initial	2021-12-14 10:27:59.170784+03
19	sessions	0001_initial	2021-12-14 10:27:59.184852+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
vk0fgr3527ccxgi9lxxkljmrchjepgdu	.eJxVjDEOwjAMRe-SGUV2a7UxIztnqOzEJQWUSk07Ie4OlTrA-t97_-UG2dY8bNWWYUru7NCdfjeV-LCyg3SXcpt9nMu6TOp3xR-0-uuc7Hk53L-DLDV_65AoKRgABRLu-h5HjdwIUNcporYjgwWm0AoL2hiNWAAa6YU0ILr3B9fZN5M:1mx2Gd:ueDLUehWKIJg2HZgq9K8rSxvYmnTDnOTevuytZ_v4DI	2021-12-28 10:30:31.334331+03
2un363xq89jkqkty0leollwtr3ryaibj	.eJxVjDsOwjAQBe_iGlnx-k9JnzNE9q6XBFAsxUmFuDuJlALamXnvLYa0reOwtbIME4mrAHH5ZTnhs8yHoEea71VinddlyvJI5Gmb7CuV1-1s_w7G1MZ9jV4bA9gpBh0VE7vgbBfReEiWEawrylmdVMSdcyAg72NgZzMYpk58vsK0NyM:1mx2Ip:12EkEPxhWnEox4mc4nLncMABmy_T899avfwiNh7Mw3Q	2021-12-28 10:32:47.512353+03
\.


--
-- Data for Name: inputs_back; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_back (id, file) FROM stdin;
\.


--
-- Data for Name: inputs_buffer; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_buffer (id, number, proveedor, "Origin", carrier, cntr, bknumber, "ETD", "ETA", comment) FROM stdin;
\.


--
-- Data for Name: inputs_claims; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_claims (id, date, bl, reason, comment, currency, amount, photos, forwarder, carrier, "picCust", "picVipa", "Sent", settlement, cntrs, tons, cn, cn_currency, cn_amount, dn, dn_currency, dn_amount, settlement_date, profit, rate, "Monthly_id") FROM stdin;
\.


--
-- Data for Name: inputs_claimsukr; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_claimsukr (id, humidper, humidton, impur, docs, claimsupp, set, monthly_id) FROM stdin;
\.


--
-- Data for Name: inputs_containers; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_containers (id, number, seal, bales, gross, tara, vgm, shipment_id, us_id) FROM stdin;
\.


--
-- Data for Name: inputs_costs; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_costs (id, name, volume, currency, shipment_id) FROM stdin;
\.


--
-- Data for Name: inputs_counter; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_counter (id, name, volume) FROM stdin;
\.


--
-- Data for Name: inputs_counterupd; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_counterupd (id, index, st) FROM stdin;
1	1	f
\.


--
-- Data for Name: inputs_empresa; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_empresa (id, name, trader) FROM stdin;
1	none	none
22	Adiprima	Sandra Sheimann
23	AKPOL	VIPA GREECE
24	AlterVita	Global Trading
25	BJC Cellox	VIPA GREECE
26	Bolton	VIPA UK
27	Buchmann	VIPA Switherland
28	Bumresurs	Global Trading
29	THAI MILL	VIPA GREECE
30	CAS Paper	VIPA GREECE
31	Century	VIPA GREECE
32	CleanR Spilves	Edward Berjoza
33	CleanR Hoetika	Edward Berjoza
34	COMPRA	Łukasz Lutoborski
35	Corenso	Karolis Pupinis
36	Corona	Global Trading
37	CORRUGATOS	Juan Quintero
38	CPM Trading SIA	Ivan Dotsenko
39	Cycle Link	VIPA GREECE
40	Dinamo	Global Trading
41	DS Smith	VIPA UK
42	Eco Baltija	Edward Berjoza
43	EcoComplex	Global Trading
44	Eko Iso	Edward Berjoza
45	EcoBaltResurs	Global Trading
46	Ecopress	Global Trading
47	Ecoservice UAB	Karolis Pupinis
48	EcoSistema	Global Trading
49	Eesti Keskko	Edward Berjoza
50	Ekobaze SIA	Karolis Pupinis
51	Ekobaze UAB	Karolis Pupinis
52	Essity	Karolis Pupinis
53	Galangal SIA	Edward Berjoza
54	General EM	VIPA ROTTERDAM
55	Globodera	VIPA GREECE
56	Gofre Baltija	Edward Berjoza
57	Granules	Karolis Pupinis
58	Grigeo	Karolis Pupinis
59	Grigeo Grigiskes	Karolis Pupinis
60	GTsOO	Global Trading
61	GVG	VIPA INDIA
62	HARIKRISHNA	VIPA INDIA
63	Hermes Recycling PL	Nikolay Kudryashov
64	HUNG HA	VIPA GREECE
65	IFCO	Nikolay Kudryashov
66	InterTrade	Global Trading
67	IP Mazolevskaya	Global Trading
68	ISTOK 52	Global Trading
69	Italmaceri	VIPA ITALY
70	Jordan Polymers	Edward Berjoza
71	Juglas Papirs	Edward Berjoza
72	KartonSan	VIPA GREECE
73	Kristec	Karolis Pupinis
74	Lautus	Edward Berjoza
75	Lenzing	VIPA ROTTERDAM
76	LOBO	Łukasz Lutoborski
77	LODGIANA	VIPA ITALY
78	LOOBO	VIPA ITALY
79	MAD Recycling	Karolis Pupinis
80	Mainetti	VIPA ROTTERDAM
81	MMK	Global Trading
82	MUDA	VIPA UK
83	Aprel	Global Trading
84	OÜ Vaitorg	Edward Berjoza
85	Paperinkerays	Karolis Pupinis
86	Parry	VIPA UK
87	Pearce	VIPA UK
88	Piter Servise	Global Trading
89	PPZP	Global Trading
90	Pride	Global Trading
91	Printerwaste	VIPA UK
92	Prod Equad	Nikolay Kudryashov
93	Ragn-Sells EST	Edward Berjoza
94	Ragn-Sells LV	Edward Berjoza
95	Ragn-Sells SWE	Karolis Pupinis
96	Rangolee	VIPA SWITZERLAND
97	Rauch	Nikolay Kudryashov
98	Repapers	Nikolay Kudryashov
99	RetroPlast (EkoPerdir)	Karolis Pupinis
100	RETURA	Anders Rosenlund
101	Rigas Piena	Edward Berjoza
102	RIVER	VIPA USA
103	RP Pakend	Edward Berjoza
104	RRK	Global Trading
105	RusRecycling	Global Trading
106	RusPaper	Global Trading
107	RVP	Global Trading
108	SCR Recycling PL	Łukasz Lutoborski
109	Sinay	Global Trading
110	Smurfit	VIPA SWITZERLAND
111	Somlita	Edward Berjoza
112	Sonoco Alcore FI	Karolis Pupinis
113	Sorepa	Nikolay Kudryashov
114	SPK	VIPA ROTTERDAM
115	Stena Recycling PL	Łukasz Lutoborski
116	Stena Recycling SW	Karolis Pupinis
117	Stora Enso Varkaus	Karolis Pupinis
118	SUEZ SW	Karolis Pupinis
119	Surpapel	Nikolay Kudryashov
120	TEP	Global Trading
121	TGM Environmental	VIPA UK
122	Thai Cane	VIPA GREECE
123	Trevigiano	VIPA ITALY
124	Unibol	Gonzalo Garcia
125	UPM	Karolis Pupinis
126	Utilization Paper	Global Trading
127	UVI SPB	Global Trading
128	VEKTOR	Global Trading
129	VIPA BDuong	VIPA GREECE
130	VIPA CHINA	VIPA CHINA
131	VIPA GERMANY	VIPA SWITZERLAND
132	VIPA GWN	VIPA GWN
133	VIPA HAZ	VIPA HAZ
134	VIPA HCM	VIPA HCM
135	VIPA HP	VIPA HP
136	VIPA IND	VIPA INDIA
137	VIPA IT	VIPA ITALY
138	VIPA LKR	VIPA LKR
139	VIPA MUN	VIPA MUN
140	VIPA NL	VIPA ROTTERDAM
141	VIPA PK	VIPA PK
142	VIPA TH	VIPA TH
143	VIPA TW	VIPA TW
144	VIPA UK	VIPA UK
145	VIPA VN	VIPA VN
146	VLT SIA	Edward Berjoza
147	VtorResurs	Global Trading
148	Werrowool	Edward Berjoza
149	Zalais Cikls	Edward Berjoza
150	Zemgales Eko	Edward Berjoza
151	Zhidachev PP	Ivan Dotsenko
152	Bumresurs LLC	Global Trading
153	ORA	Nikolay Kudryashov
154	Silverton	VIPA INDIA
155	Meenu	VIPA INDIA
156	Sirko	Global Trading
157	SZMK	Global Trading
158	CBM	VIPA ROTTERDAM
159	Mainetti	VIPA ITALY
160	YFY	VIPA GREECE
161	Jeonju	VIPA GREECE
162	Herlig SIA	Edward Berjoza
163	Ekovir OÜ	Edward Berjoza
164	ArkhivServisRegion	Global Trading
165	AvtoPrestizh	T&M
166	T&M	VIPA USA
167	CBM	VIPA ROTTERDAM
168	IP Kuchko	Global Trading
169	Khors	Global Trading
170	Packmil	Global Trading
171	Pakerin	VIPA GREECE
172	LAMSON	VIPA GREECE
173	Encore	Karolis Pupinis
174	MINH HUNG	VIPA GREECE
175	MEPCO	VIPA INDIA
176	Ching Mei	VIPA GREECE
177	Tipco	VIPA GREECE
178	Thai Hiep Hung	VIPA GREECE
179	Muc Son	VIPA GREECE
180	Marius Pedersen DK	Nikolay Kudryashov
181	Foxx Recycling Poland	Łukasz Lutoborski
182	Sita UK	VIPA UK
183	Eastern Recycling	VIPA USA
184	Fifth Discipline	VIPA GREECE
185	Modern Karton	VIPA GREECE
186	EuroVtorTrans	Global Trading
187	SELKASAN	VIPA GREECE
188	PAP-RECO	Łukasz Lutoborski
189	Krishna MO	VIPA GREECE
190	Inpaecsa	Nikolay Kudryashov
191	PratoLungo	VIPA ITALY
192	United	VIPA GREECE
193	Potok-K	Global Trading
194	Krona Rec	Global Trading
195	Ecotrade PTZ	VIPA GREECE
196	Stora Enso Poland	Łukasz Lutoborski
197	Vtorma	Global Trading
198	Sredereja SIA	Edward Berjoza
199	OÜ Vanapaber	Edward Berjoza
200	SIAM	VIPA GREECE
201	IP Urosov	Global Trading
202	IP Vorobyev	Global Trading
203	Vladkarton	Global Trading
204	MD Investment	Ivan Dotsenko
205	Kartontol	Global Trading
206	IPI	VIPA GREECE
207	Swamigutta	VIPA INDIA
208	TSK Timsan	Global Trading
209	TsVR	Global Trading
210	MIR	Global Trading
211	EcoLab	Global Trading
212	Volga-Resurs	Global Trading
213	Makulaturnaya Kompaniya	Global Trading
214	Leins	VIPA SWITZERLAND
215	Gayatrisha	VIPA INDIA
216	GRUPO CORP	Nikolay Kudryashov
217	TEZOL	VIPA GREECE
218	ALVIS	Łukasz Lutoborski
219	MARFLEX	Łukasz Lutoborski
220	PenzaVtorSyryo	Global Trading
221	Epic	Global Trading
222	Ekonovus	Karolis Pupinis
223	kommunar	Global Trading
224	Viborg	Global Trading
225	Sonoco Alcore GR	VIPA GREECE
226	Plasta UAB	Karolis Pupinis
227	Familia Columbia	Nikolay Kudryashov
228	FMS USA	VIPA USA
229	Cartopel	Nikolay Kudryashov
230	Empressa Galinda	Juan Quintero
231	Panama Recycling	Juan Quintero
232	Astron	VIPA INDIA
233	Sopanusa	VIPA GREECE
234	EcologiyaRB	Global Trading
235	Barnett Corporation	VIPA USA
236	Global Trading	Global Trading
237	Okulovka	Global Trading
238	Plastic Chips	Karolis Pupinis
239	Key Waste	VIPA GREECE
240	Familia Ecuador	Nikolay Kudryashov
241	Panasa Ecuador	Nikolay Kudryashov
242	Goznak	Edward Berjoza
243	Familia Colombia	Nikolay Kudryashov
244	IP Barashkova	Global Trading
245	Hoang Van	VIPA GREECE
246	EvroVtorTrans	Global Trading
247	IP Guryanova	Global Trading
248	EcoIndustriya	Global Trading
249	Balticfloc	Edward Berjoza
250	Cappla	Juan Quintero
251	Metalnevases	Nikolay Kudryashov
252	Cartorama	Nikolay Kudryashov
253	Repro-PET	Karolis Pupinis
254	PET Baltija	Edward Berjoza
255	WRYCZA	Łukasz Lutoborski
256	VtorSiryo Grozniy	Global Trading
257	Plasteco	VIPA GREECE
258	Pioneer	VIPA USA
259	Greif	VIPA USA
260	4th Generation	VIPA USA
261	Suchi	VIPA INDIA
262	Rhin	VIPA SWITZERLAND
263	Recimetal	Juan Quintero
264	Van Rumpt	Nikolay Kudryashov
265	Ekorema	Karolis Pupinis
266	Eko Partner	Karolis Pupinis
267	Maldis	Karolis Pupinis
268	CHANDARIA	VIPA GREECE
269	Nordic Plast	Edward Berjoza
270	Genus	VIPA INDIA
271	Makro Profit Kompani	Global Trading
272	VSA Vilnius	Karolis Pupinis
273	Tehri	VIPA INDIA
274	Ecoprom Penza	Global Trading
275	Marius Pedersen CZ	Karolis Pupinis
276	Marius Pedersen SK	Karolis Pupinis
277	Raduga	Global Trading
278	DONG A BAC	VIPA GREECE
279	Viet My Ma	VIPA GREECE
280	IP Dilenyan	Global Trading
281	Boston	VIPA USA
282	Antrocelas	Karolis Pupinis
283	Maaden	Chris Pineau
284	Novelis AG	Chris Pineau
285	Odpady-Expert	Łukasz Lutoborski
286	Cartiere Chiesa	VIPA ITALY
287	ROWE	VIPA SWITZERLAND
288	Kimberly Clark	Nikolay Kudryashov
289	IP Starikov	Global Trading
290	ICELL	Karolis Pupinis
291	Papeles Y Metales	Juan Quintero
292	DONG HAI	VIPA GREECE
293	Paper Corea	VIPA GREECE
294	Cartones America	Gonzalo Garcia
295	Key Waste	VIPA GREECE
296	Almadar	VIPA ROTTERDAM
297	Ragn-Sells DK	Nikolay Kudryashov
298	Stena DK	Nikolay Kudryashov
299	Monteleone	VIPA USA
300	Paradise Recycling Curacao	Nikolay Kudryashov
301	Green AF	Juan Quintero
302	Vinapack	Karolis Pupinis
303	Certified	VIPA USA
304	Varaka	VIPA GREECE
305	RetroPET	Karolis Pupinis
306	Area	VIPA GREECE
307	Dragonseas	VIPA GREECE
308	TWK ZAG	Łukasz Lutoborski
309	Aryan	VIPA INDIA
310	Greif	VIPA USA
311	WPC	VIPA USA
312	International Paper	VIPA USA
313	Barracuda	VIPA GREECE
314	Tal El Co.	VIPA GREECE
315	N&V	VIPA USA
316	AllAmerica	VIPA USA
317	Great NF	VIPA USA
318	Albertin	Edward Berjoza
319	Nixin	VIPA GREECE
320	Alas Doradas	Nikolay Kudryashov
321	IP Bavina	Global Trading
322	Metsa Tissue Sweden	Karolis Pupinis
323	THANH DUNG	VIPA GREECE
324	Georgetown	VIPA USA
325	Zhytomyr	Ivan Dotsenko
326	GLOBAL UAB	Karolis Pupinis
327	Atol	Łukasz Lutoborski
328	Hamburger PL	Łukasz Lutoborski
329	Skup PL	Karolis Pupinis
330	Service Corea	VIPA GREECE
331	Albertin	Edward Berjoza
332	FCC CZ	Karolis Pupinis
333	UVI Moscow	Global Trading
334	Colombiana Tissue	Nikolay Kudryashov
335	Weidmann	VIPA SWITZERLAND
336	Orkos EST	Edward Berjoza
337	Han-Pol	Łukasz Lutoborski
338	Tribune Recycling	Nikolay Kudryashov
339	Danfiber DK	Nikolay Kudryashov
340	Comrec	VIPA SWITZERLAND
341	Safeshred	VIPA USA
342	Paper Stoc	VIPA USA
343	COMOLSA	Nikolay Kudryashov
344	Velaris	Juan Quintero
345	Econis	VIPA SWITZERLAND
346	Spartak	Edward Berjoza
347	Papeles Regionales	Nikolay Kudryashov
348	Corrugadora	Juan Quintero
349	Maruti	VIPA INDIA
350	Piemonte	VIPA ITALY
351	Saica	VIPA SWITZERLAND
352	Villar Guillen	VIPA ROTTERDAM
353	Star Kraft	VIPA INDIA
354	Vtorma UA	Ivan Dotsenko
355	FIBRAS DE NICARAGUA	Juan Quintero
356	Paswara	VIPA INDIA
357	Galateya	Nikolay Kudryashov
358	UkrMetStil	Ivan Dotsenko
359	Gangotri	VIPA INDIA
360	Maruti	VIPA INDIA
361	Sol Hurt	Łukasz Lutoborski
362	MacAlians	Global Trading
363	TOTAL-SORT	Łukasz Lutoborski
364	Makpol	Karolis Pupinis
365	Zberne	Karolis Pupinis
366	Eurokey PL	Łukasz Lutoborski
367	Waste Eco Service	Ivan Dotsenko
368	ELDA	VIPA ROTTERDAM
369	CBP	VIPA ROTTERDAM
370	Procarsa	Nikolay Kudryashov
371	Zhelezniy Mir	Global Trading
372	P.M.R. KFT	Karolis Pupinis
373	IP Uspenskaya	Global Trading
374	Latin-Pack	Global Trading
375	Hamburger SK	Karolis Pupinis
376	EPV	Global Trading
377	Volga	Global Trading
378	Vtormet-garant	Global Trading
379	Metalcarta	VIPA ROTTERDAM
380	Funding	VIPA USA
381	National P	VIPA UK
382	NER Recycling	VIPA ROTTERDAM
383	Martinez Cano Canarias	VIPA ITALY
384	Accoil	VIPA UK
385	Bell Multi Kraft	VIPA INDIA
386	BIOKOM	Karolis Pupinis
387	Karjalan Paperi	Karolis Pupinis
388	IP Baev	Global Trading
389	Alyans	Global Trading
390	Madex (AVANCE)	Juan Quintero
391	BIFFA	VIPA UK
392	VIRIDOR RE	VIPA UK
393	LEIPA	VIPA INDIA
394	Global Business DR	Juan Quintero
395	IP Skvorcov	Global Trading
396	WWG	VIPA INDIA
397	FPC	Gonzalo Garcia
398	Essex	VIPA UK
399	Reciclaje Global	Gonzalo Garcia
400	Rubezhnoye	Ivan Dotsenko
401	Cartones Ponderosa	Gonzalo Garcia
402	Recuperadora de Carton S.A. de C.V.	Juan Quintero
403	SLOVPAPER RECYCLING	Łukasz Lutoborski
404	Hamburger DE	VIPA SWITZERLAND
405	VALORIZACIONES VILAR GUILLEN	VIPA ROTTERDAM
406	Amreco	Nikolay Kudryashov
407	Reciroca	Juan Quintero
408	Molpack Panama	Gonzalo Garcia
409	DACD Metal	Juan Quintero
410	JV IS Recycling	VIPA GREECE
411	Benassi	VIPA ITALY
412	Delnegro	VIPA ITALY
413	GP Harmon	VIPA USA
414	Solarz	VIPA ROTTERDAM
415	Melosch	VIPA SWITZERLAND
416	Smurfit DR	Juan Quintero
417	Reciclaje Del Norte	Gonzalo Garcia
418	Hartmann	Karolis Pupinis
419	Pronatura	Gonzalo Garcia
420	S-FIRMA	Karolis Pupinis
421	Europaper	VIPA ITALY
422	Recicla Costa Rica	Gonzalo Garcia
423	Kipas	VIPA GREECE
424	Evergreen SK	Karolis Pupinis
425	USLUGI	Łukasz Lutoborski
426	Ecogas Aruba	Nikolay Kudryashov
427	Best Paper Mills	VIPA INDIA
428	CARPA	VIPA ROTTERDAM
429	KT Investment	VIPA GREECE
430	Lastik	Karolis Pupinis
431	Green VI	VIPA GREECE
432	Hydro Aluminium	Chris Pineau
433	MAD CZ	Karolis Pupinis
434	CPG Chicago	VIPA USA
435	SURYAANS P	VIPA INDIA
436	MALUPAPER	VIPA INDIA
437	Llorens	VIPA ROTTERDAM
438	MAREN MARA	VIPA GREECE
439	SRIPATHI 1	VIPA INDIA
440	Rua Papel	VIPA ROTTERDAM
441	Remond	VIPA SWITZERLAND
442	Carl F AB	Karolis Pupinis
443	Grupa Tom	Karolis Pupinis
444	Veolia	Karolis Pupinis
445	Poninka	Ivan Dotsenko
446	Nikita	Ivan Dotsenko
447	Izmail	Ivan Dotsenko
448	AN BINH PA	VIPA GREECE
449	Remondis Germany	VIPA SWITZERLAND
450	CDIF	VIPA ROTTERDAM
451	TOUHOU BUSSAN AND CO., LTD	VIPA GREECE
452	Garg Duplex	VIPA GREECE
453	Clean World	Global Trading
454	Generation Recycling	Juan Quintero
455	JAATMETE	Edward Berjoza
456	Renewi	VIPA ROTTERDAM
457	SRIPATHI	VIPA INDIA
458	Lutsk	Ivan Dotsenko
459	WEST COAST WASTE	Gonzalo Garcia
460	Tomakovka	Ivan Dotsenko
461	\nASIA HONOU	VIPA GREECE
462	VIRGINIJUS	Karolis Pupinis
463	HAMBURGER RO	VIPA GREECE
464	PAPER AND BOARD	VIPA GREECE
465	Dilar	Global Trading
466	SIDDHEINDU	VIPA INDIA
467	PSM	Karolis Pupinis
468	NRAGARWAL	VIPA INDIA
469	GALAXY PAP	VIPA INDIA
470	COMERCIALIZADORA DE CARTON Y PAPEL, S.A.	Juan Quintero
471	Recuperadora de Carton T&M; S.A. de C.V.	Juan Quintero
472	ASUNCORP	Gonzalo Garcia
473	Pulp Mill	Global Trading
474	GTown	VIPA USA
475	ELVALHALCOR	VIPA GREECE
476	EcoTech Aruba	Nikolay Kudryashov
477	Papeles de Cauca	Gonzalo Garcia
478	Colombiana Moldeados	Gonzalo Garcia
479	ASHOKA PUL	VIPA INDIA
480	PANASA COLOMBIA	Gonzalo Garcia
481	Essity Mexico	Gonzalo Garcia
482	BOJ	VIPA ROTTERDAM
483	Apropet SAS	Gonzalo Garcia
484	Guamolsa	Juan Quintero
485	KERTAS PAP	VIPA GREECE
486	Disoni	Łukasz Lutoborski
487	ReComSur N.V.	Nikolay Kudryashov
488	Weerec	Edward Berjoza
489	Kartotec	Nikolay Kudryashov
490	Ocean Bridge Polymers	Juan Quintero
491	Jersey	VIPA USA
492	Smurfit Kappa CR	Gonzalo Garcia
493	Haiti Recycling	Nikolay Kudryashov
494	Ecofibras de Nicaragua	Juan Quintero
495	Xuan Mai	VIPA GREECE
496	KUZMICHEVA	Ivan Dotsenko
497	TYP	VIPA GREECE
498	BULLEH	VIPA GREECE
499	BIO PAPEL MEXICO	Gonzalo Garcia
500	EMPAQUES INDUSTRIALES COLOMBIA	Gonzalo Garcia
501	Denise Transport Logistics	Juan Quintero
502	SAIGON	VIPA GREECE
503	MM Paper	VIPA GREECE
504	Recipa	Juan Quintero
505	UNITED PENNSYLVANIA	VIPA USA
506	Copelme	Juan Quintero
507	CHINA NATIONAL CHEMICAL FIBER CORPORATION	VIPA GREECE
508	Ankustan	VIPA GREECE
509	Exprorep SA	Gonzalo Garcia
510	El Trebol	Juan Quintero
511	Reciclados Industriales S.A.	Gonzalo Garcia
512	Recupac Chile	Gonzalo Garcia
513	Carvajal Colombia	Gonzalo Garcia
514	Chadha	VIPA INDIA
515	RADHESHYAM	VIPA INDIA
516	Repapel Brazil	Walter Araujo
517	ECOFIBRAS S.A. DE C.V. (Smurfit Kappa SV)	Juan Quintero
518	Grupasa	Gonzalo Garcia
519	Emerald	VIPA USA
520	Federal	VIPA USA
521	Canaan Recycling	VIPA USA
522	Irish Pack	VIPA UK
523	Ricova	VIPA UK
524	Butler	VIPA UK
525	Global Waste Commodities UK	VIPA UK
526	Edwards Recycling UK	VIPA UK
527	AP-CONCEPT	VIPA SWITZERLAND
528	Astrocarton Honduras	Juan Quintero
529	RECICLAJES, S.A. DE C.V. (Metalenvases)	Juan Quintero
530	EAST AFRICA	VIPA GREECE
531	LEE-HSING	VIPA GREECE
532	ECUAPET	Gonzalo Garcia
533	LATAM RECYCLING	Gonzalo Garcia
534	Wepa Nederland	VIPA ROTTERDAM
535	Ekovilla	Karolis Pupinis
536	Schulte Trebsen	VIPA SWITZERLAND
537	WORLD FAIR	VIPA GREECE
538	Federssen	VIPA SWITZERLAND
539	Rhenus Germany	VIPA SWITZERLAND
540	Angelius West	VIPA USA
541	Green Plan	VIPA USA
542	California	VIPA USA
543	Resonance	VIPA INDIA
544	Essity Russia	Global Trading
545	ЭПИК	Global Trading
546	БФ Коммунар	Global Trading
547	RVP	Global Trading
548	ООО "Крафт"	Global Trading
549	ИП Скворцов	Global Trading
550	Чистый Белый Край	Global Trading
551	ИП Диленян	Global Trading
552	Железный Мир	Global Trading
553	Экопром Пенза	Global Trading
554	Вторая Жизнь Материалов	Global Trading
555	AP-CONCEPT NL	Nikolay Kudryashov
556	GEROY TRUD	Edward Berjoza
557	SIMKA KAGI	VIPA GREECE
558	RADHESHYAM	VIPA INDIA
559	ELTEX REC	VIPA GREECE
560	Binjusaria	VIPA INDIA
561	Tempo Global Resources	VIPA USA
562	Classic Fibers International	VIPA USA
563	Victor Recycling	VIPA USA
564	Recology	VIPA USA
565	New Era Export and Logistics	VIPA USA
566	Mid Valley Disposal	VIPA USA
567	South Bay	VIPA USA
568	Alpha USA	VIPA USA
569	KLAUSSENBURG	VIPA GREECE
570	Metsa Tissue Poland	Karolis Pupinis
571	REMATHOLDING	VIPA GREECE
572	PAPELERA DEL SUR	Gonzalo Garcia
573	Metalking Ecuador	Gonzalo Garcia
574	Aqui Te Lo Compro	Christopher Hans
575	Essity SE	Karolis Pupinis
576	LAMINATES	VIPA GREECE
577	Poliplas Chile	Gonzalo Garcia
578	Sonoco Colombia	Gonzalo Garcia
579	PACOS	VIPA GREECE
580	Schumacher	VIPA ROTTERDAM
581	SC RDE HAR	VIPA GREECE
582	Dismetales S.A.	Gonzalo Garcia
583	SEM ECOPACK	VIPA USA
584	AMERICAN M	VIPA USA
585	MASLO	VIPA USA
586	CPR-Calgar	VIPA USA
587	RMR ATLANT	VIPA USA
588	CANUSA	VIPA USA
589	RMR Richmond	VIPA USA
590	ALLAN CO	VIPA USA
591	PLASTICOS DEL PACIFICO	Gonzalo Garcia
592	Next Generation	Juan Quintero
593	Nuno Hernandex MX	Christopher Hans
594	ERC	Edward Berjoza
595	Production	Ivan Dotsenko
596	FABRYKA PA	Karolis Pupinis
597	CONSTELLIUM METAL PROCUREMENT LLC	Chris Pineau
598	Austrian Recycling	Karolis Pupinis
599	BumBack	Global Trading
600	Smurfit BR	Walter Araujo
601	M&C ECO PAPER	VIPA GREECE
602	Solupaper Peru	Nikolay Kudryashov
603	CR&R INC	VIPA USA
604	MARBORG IND	VIPA USA
605	COMCON	VIPA USA
606	N&V	VIPA USA
607	Gyemant SRL	VIPA GREECE
608	JANPAS	Łukasz Lutoborski
609	TUAN TAI	VIPA GREECE
610	Ecofibras Ponderosa	Christopher Hans
611	Alyansgroup	Sergey Logunov
612	ADAMI S/A	Walter Araujo
613	Kimberly Clark MX	Christopher Hans
614	NEGEV ECOLOGY AGRICULTURAL COOPERATIVE SOCIETY LTD	VIPA GREECE
615	KHOI NGYUEN	VIPA GREECE
616	SCP AB	Karolis Pupinis
617	Langmuhl	VIPA SWITZERLAND
618	Novak Paper	Karolis Pupinis
619	INDUSTRIA DE EMBALAGENS TOCANTINS LTDA	Walter Araujo
620	I&M PAPEIS E EMBALAGENS	Walter Araujo
621	PAXPORT IMPORTACAO	Walter Araujo
622	PADMAVATI	VIPA INDIA
623	AVANGARD INNOVATIVE LP	VIPA USA
624	Huhtamaki	VIPA ROTTERDAM
625	JAEPEL PAPEIS	Walter Araujo
626	CAPITAL PA	VIPA USA
627	CANAAN REC	VIPA USA
628	WPS	VIPA USA
629	LEE YANG PAPER	VIPA GREECE
630	BIOPAPPEL SCRIBE	Christopher Hans
631	Helmut	VIPA SWITZERLAND
632	SERVICIOS INTEGRALES	Christopher Hans
633	GRUPO PAPER GREEN	Christopher Hans
634	PRODUCTORA DE PAPEL	Christopher Hans
635	VINA KRAFT	VIPA GREECE
636	DS Smith	VIPA UK
637	CARTONIFICIO VALINHOS	Walter Araujo
638	Selenga	Sergey Logunov
639	Incarpalm	VIPA GREECE
640	NOVA Packaging	VIPA GREECE
641	EL BADDAR	VIPA GREECE
642	Giant	VIPA GREECE
643	VIRAJ PROFILES	VIPA INDIA
644	CANAAN REC	VIPA USA
645	BESTWAY REC	VIPA USA
646	SANOVO GREENPAC	Walter Araujo
647	SIA CLEAN R	Edward Berjoza
648	CLC Vietnam	VIPA GREECE
649	Diyan Papers	VIPA INDIA
650	CONPEL CIA	Walter Araujo
651	CCH	VIPA GREECE
652	Victory Far East	VIPA GREECE
653	TRUPAL S.A.	VIPA GREECE
654	Absormex	Christopher Hans
655	Seed Pack	Gonzalo Garcia
656	Grigeo LV	Karolis Pupinis
657	ELITE KRAFT	ELITE KRAFT
658	CAPITAL PA	VIPA USA
659	VIPA USA	VIPA USA
660	SUMEC INTERNATIONAL TECHNOLOGY CO., LTD.	VIPA GREECE
661	NEUHAUS	NEUHAUS
662	Stoelman Recycling	Stoelman Recycling
663	JULIUS	VIPA GREECE
664	WERROWOOL	Edward Berjoza
665	AMNIR	VIPA GREECE
666	Eagle Trans	Ivan Dotsenko
667	4TH GENERA	Juan Quintero
668	GLOBAL BUSINESS	Juan Quintero
669	CHISINAU	Ivan Dotsenko
670	RECI-CARPLASTIC	Juan Quintero
671	EVR Krasnodar	Global Trading
672	VINA KRAFT PAPER CO., LTD	VIPA GREECE
673	VERONICA	Christopher Hans
674	KHOI KGYUEN	VIPA GREECE
675	RECIMETAL	Juan Quintero
676	SYNDICATE	VIPA SWITZERLAND
677	PAPELES Y METALES PANAMA	Juan Quintero
678	UNITED-PA	VIPA USA
679	MacSistem	Global Trading
680	UNIBOARD	VIPA GREECE
681	CHERKASSYVT	Ivan Dotsenko
682	Kruschitz	VIPA GREECE
683	Artgroopp (EKB)	Global Trading
684	Aktion plus	Global Trading
685	BIOCHEN	Gonzalo Garcia
686	MOLPASA	Gonzalo Garcia
687	INTERFISA	Juan Quintero
688	GREEN LOGIX	Juan Quintero
689	ATLANTI METALES	Gonzalo Garcia
690	IMICAR	VIPA GREECE
691	Finplast	Ivan Dotsenko
692	IMAC ALLOY	Chris Pineau
693	Suga	Christopher Hans
694	Papir-Mal	Ivan Dotsenko
695	SEPPA PRAHA S.R.O	Karolis Pupinis
696	Centro Grafico SRL	VIPA GREECE
697	Resurs	Global Trading
698	Ecovata	Global Trading
\.


--
-- Data for Name: inputs_existing; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_existing (id, number) FROM stdin;
\.


--
-- Data for Name: inputs_fincosts; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_fincosts (id, name, volume, currency, monthly_id) FROM stdin;
\.


--
-- Data for Name: inputs_freight; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_freight (id, forwarder, "Line", "POL", "POD", terms, rate, currencyrate, period, contract, additional, currencyadd, margin) FROM stdin;
\.


--
-- Data for Name: inputs_invoices; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_invoices (id, number) FROM stdin;
\.


--
-- Data for Name: inputs_materials; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_materials (id, name) FROM stdin;
1	none
2	1.01 - Mixed paper and board
3	1.02 - Mixed papers and board (sorted)
4	1.03 - Grey board.
5	1.04 – OCC
6	1.05 / #12 – OCC
7	1.06 - Unsold magazines
8	1.06.01 - Unsold magazines without glue
9	1.07 - Telephone Books
10	1.08 - Mixed newspapers and magazines 50/50
11	A mixture of newspapers and magazines, containing a minimum of 50% of newspapers, with or without glue.
12	1.09 - Mixed newspapers and magazines >60% NP
13	A mixture of newspapers and magazines, containing a minimum of 60% of newspapers, with or without glue.
14	1.10 - Mixed magazines and newspapers >60% MG
15	1.11- Sorted graphic paper for deinking / #7 ISRI
16	2.01 - Newspapers / #8 - #9 ISRI
17	2.02 - Unsold newspapers
18	2.02.01 - Unsold newspapers, no flexographic printing allowed
19	2.03 / ISRI #45 - Lightly printed white shavings
20	2.03.01 / ISRI #45 - Lightly printed white shavings without glue
21	2.04 / ISRI #46 - Heavily printed white shavings
22	2.04.01 / ISRI #46 - Heavily printed white shavings without glue
23	2.05 / #37 - Sorted office paper ISRI
24	2.06 - SBS / Coloured letters
25	2.07 - White woodfree books
26	2.08 - Coloured woodfree magazines
27	2.11 - Other PE-coated board
28	2.12 - Mechanical pulp based computer print-out
29	3.01 - Mixed lightly coloured printers shavings
30	3.02 - Mixed lightly coloured woodfree printer shavings
31	3.03 - Woodfree binders
32	3.04 - Tear white shavings
33	3.05 - SWL / White woodfree letters
34	3.06 - White business forms
35	3.07 - White woodfree computer print-out
36	3.08 - Printed bleached sulphate board
37	3.09 - Lightly printed bleached sulphate board
38	3.10 - Multi printing
39	3.11 - White heavily printed multiply board
40	3.12 - White lightly printed multiply board
41	3.13 - White unprinted multiply board
42	3.14 - White newsprint
43	SS 304
44	3.15 - White mechanical pulp based coated and uncoated paper
45	3.14 - White newsprint
46	3.15 - White mechanical pulp based coated and uncoated paper
47	3.15.01 - White mechanical pulp based paper containing coated paper
48	3.16 - White woodfree coated paper, without glue
49	3.17 - White shavings
50	3.18 - White woodfree shavings
51	3.18.01 - White woodfree uncoated shavings
52	3.19 - Unprinted bleached sulphate board
53	4.01 - New shavings of corrugated board
54	4.01.01- Unused corrugated kraft
55	4.01.02 - Unused corrugating material
56	4.02 - Used corrugated kraft I
57	4.03 - Used corrugated kraft II
58	4.04 - Used kraft sacks
59	4.04.01- Used kraft sacks with polycoated papers
60	4.05 - Unused kraft sacks
61	4.05.01- Unused kraft sacks with polycoated papers
62	4.06 - Used kraft
63	4.07 - New kraft
64	4.08 - New carrier kraft
65	5.01 - Mixed recovered paper and board
66	5.02 - Mixed packaging
67	5.03 - Liquid board packaging
68	5.04 - Wrapper kraft
69	5.05 - Wet labels
70	5.06 - Unprinted white wet- strength woodfree papers
71	5.07 - Printed white wet-strength woodfree papers
72	LDPE 98/2
73	LDPE 95/5
74	LDPE 90/10
75	PET clear
76	PET mix
77	LDPE Clear
78	PP Big Bags
79	PP Buckets
80	5.08 - Cores / Edges
81	LDPE MIX
82	Black&White LDPE
83	Medicine Plastic Bottles
84	Blue Eden Caps
85	5.14 - Unused paper cups and other tableware
86	5.13.00 - unused kraft sacks with plastic layer papers
87	5.13.01 - unused kraft sacks with\nplastic layer papers and\npoly liners
88	5.12 - used kraft sacks with\nplastic layer papers
89	5.11.00 - blister pack
90	5.10.00 - printed white envelope
91	5.10.01 - mixed envelopes
92	5.09.00- carbonless copy paper (NCR)
93	UBC
94	Tissue
95	Fluting / Rolls
96	Testliner / Rolls
97	1.11- Sorted graphic paper for deinking / #8 ISRI
98	Alu Litho Plates
99	Newsprint / Rolls
100	1.05 – OCC
101	2.01 - Newspapers
102	2.05 - Sorted office paper
103	2.03.01- Lightly printed white shavings without glue
104	2.04.01- Heavily printed white shavings without glue
105	PP/PET
106	3.12 - CEK
107	2.03 - Lightly printed white shavings
108	2.04 - Heavily printed white shavings
109	aluminium cans
110	1.05 – OCC / #11 ISRI
111	1.02 - Mixed papers and board (sorted)
112	KLB
113	LDPE crushed
114	LDPE cans
115	LDPE crushed vials
\.


--
-- Data for Name: inputs_monthly; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_monthly (id, sodate, podate, "Supplier", client, origincity, origincountry, destinationcity, destinationcountry, line, forwarder, number, bknumber, material, cntr, "Tons", "Tonsact", min, transaction, margin, "marginEUR", "ETD", "ETA", "Truck") FROM stdin;
\.


--
-- Data for Name: inputs_monthlycosts; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_monthlycosts (id, name, volume, currency, monthly_id) FROM stdin;
\.


--
-- Data for Name: inputs_monthlyrate; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_monthlyrate (id, rate, monthly_id) FROM stdin;
\.


--
-- Data for Name: inputs_po; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_po (id, date, number, cntr, "Tons", price, currency, spt, "Origin_id", "Proveedor_id", material_id, so_id) FROM stdin;
\.


--
-- Data for Name: inputs_ports; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_ports (id, port, country) FROM stdin;
514	none	none
515	Enns	Austria
516	Aalesund	Norway
517	Aarhus	Denmark
518	Aarhus	Denmark
519	Aarhus	Denmark
520	Ahrensburg	Germany
521	Alkmaar	Holland
522	Alytus	Lithuania
523	Alytus	Lithuania
524	Ambarli	Turkey
525	Amsterdam	Holland
526	Anapa	Russia
527	Annweiler	Germany
528	Annweiler	Germany
529	Antwerp	Belgium
530	Antwerp	Belgium
531	Arkhangelsk	Russia
532	Asenovgrad	Bulgaria
533	Ashdod	Israel
534	Asuncion	Paraguay
535	Athens	Greece
536	Bandar Abbas	Iran
537	Bangkok	Thailand
538	Barcelona	Spain
539	Barranquilla	Colombia
540	Barszczówka	Poland
541	Barszczówka	Poland
542	Bataysk	Russia
543	Belgrade	Serbia
544	Bergen	Norway
545	Bergen	Norway
546	Berlin	Germany
547	Binh Duong	Vietnam
548	Binh Duong	Vietnam
549	Bremen	Germany
550	Bremerhaven	Germany
551	Brzeziny	Poland
552	Brzeziny	Poland
553	Budapest	Hungary
554	Buenos Aires	Argentina
555	Burgas	Bulgaria
556	Busan	Korea
557	Cai Mep	Vietnam
558	Callao	Peru
559	Cartagena	Colombia
560	Cartagena	Colombia
561	Cartagena	Colombia
562	Cassino	Italy
563	Caucedo	Dominican Republic
564	Cesis	Latvia
565	Utzenstorf	Switzerland
566	Chiwan	China
567	CMP	China
568	Copenhagen	Denmark
569	Coronel	Chile
570	Da Nang	Vietnam
571	Dammam	Saudi Arabia
572	Denmark	Denmark
573	Dmitrov	Russia
574	Doetinchem	Holland
575	Eerbek	Holland
576	Drachten	Holland
577	Drammen	Norway
578	Drammen	Norway
579	Dublin	Ireland
580	Duenas	Spain
581	Düren	Germany
582	Binh Duong	Vietnam
583	Düren	Germany
584	Eerbek	Holland
585	Eerbek	Holland
586	Eerbek	Holland
587	Enderby	UK
588	Enns	Austria
589	Estonia	Estonia
590	Felixstowe	UK
591	Felixstowe	UK
592	Finland	Finland
593	Fos sur Mer	France
594	Raon l’Etape	France
595	Rocquancourt	France
596	Raon l’Etape	France
597	Fredericia	Denmark
598	Fredericia	Denmark
599	Fredrikstad	Norway
600	Fredrikstad	Norway
601	Frohnleiten	Austria
602	Frohnleiten	Austria
603	Fusa	Norway
604	Fusa	Norway
605	Gaevle	Sweden
606	Gdansk	Poland
607	Gdansk	Poland
608	Gdansk / Gdynia	Poland
609	Gdansk	Poland
610	Gdansk / Gdynia	Poland
611	Gebze	Turkey
612	Gebze	Turkey
613	Gemlik	Turkey
614	Genoa	Italy
615	Genoa	Italy
616	Giershagen	Germany
617	Giershagen	Germany
618	Gliwice	Poland
619	Gliwice	Poland
620	Goryachiy Kluch	Russia
621	Goryachiy Kluch	Russia
622	Gothenburg	Sweden
623	Gothenburg	Sweden
624	Guayaquil	Ecuador
625	Gwangyang	Korea
626	Haarlem	Holland
627	Haifa	Israel
628	Haiphong	Vietnam
629	Haldia	India
630	Halmstad	Sweden
631	Halmstad	Sweden
632	Hamburg	Germany
633	Hamburg	Germany
634	Hamburg	Germany
635	Hameenlinna	Finland
636	Hasselroth	Germany
637	Hazira	India
638	Heimdal	Norway
639	Helsinborg	Sweden
640	Helsinborg	Sweden
641	Helsinborg	Sweden
642	Helsingor	Denmark
643	Helsinki	Finland
644	Helsinki	Finland
645	Ho Chi Minh	Vietnam
646	Ho Chi Minh	Vietnam
647	Hong Kong	Hong Kong
648	Hyltebruk	Sweden
649	Ipswich	UK
650	Iskenderun	Turkey
651	Istanbul	Turkey
652	Istanbul	Turkey
653	Itapoa	Brazil
654	Izmail	Ukraine
655	Izmit	Turkey
656	Izmit	Turkey
657	Izmit	Turkey
658	Jakarta	Indonesia
659	Jebel Ali	UAE
660	Jeddah	Saudi Arabia
661	Jelgava	Latvia
662	Jelgava	Latvia
663	Kaipola	Finland
664	Kaliningrad	Russia
665	Kaohsiung	Taiwan
666	Kaohsiung	Taiwan
667	Karachi	Pakistan
668	Karhula	Finland
669	Kassel	Germany
670	Kattupalli	India
671	Kaunas	Lithuania
672	Kaunas	Lithuania
673	Keelung	Taiwan
674	Kekava	Latvia
675	Kielce	Poland
676	King Abdullah	Saudi Arabia
677	Klaipeda	Lithuania
678	Klaipeda	Lithuania
679	Khlong Toei	Thailand
680	Kobe	Japan
681	Koipola	Finland
682	Kolding	Denmark
683	Kolding	Denmark
684	Kommunar	Russia
685	Koronowo	Poland
686	Koronowo	Poland
687	Kostheim	Germany
688	Kotka	Finland
689	Krasnodar	Russia
690	Krapkowice	Poland
691	Krasnodar	Russia
692	Kristiansand	Norway
693	Kristiansand	Norway
694	Kumport	Turkey
695	Kuusankoski	Finland
696	Kuvshinovo	Russia
697	Gwangyang	Korea
698	La Spezia	Italy
699	Laem Chabang	Thailand
700	Lahti	Finland
701	Larvik	Norway
702	Larvik	Norway
703	Lat Krabang	Thailand
704	Lat Krabang	Thailand
705	Le Havre	France
706	Leipzig	Germany
707	Leixoes	Portugal
708	Leixoes	Portugal
709	Lenzing	Austria
710	Lermontov	Russia
711	Limasol	Cyprus
712	Linz	Austria
713	Lithuania	Lithuania
714	Livorno	Italy
715	Lodz	Poland
716	London	UK
717	Lubeck	Germany
718	Lublin	Poland
719	Lucca	Italy
720	Maaloey	Norway
721	Maardu	Estonia
722	Mainz	Germany
723	Mainz	Germany
724	Malmo	Sweden
725	Malmo	Sweden
726	Manila	Philippines
727	Mantta	Finland
728	Mantta	Finland
729	Mantta	Finland
730	Mantta	Finland
731	Manzanillo	Panama
732	Mariestad	Sweden
733	Mariestad	Sweden
734	Marsaxlokk	Malta
735	Marsberg	Germany
736	Marum	Holland
737	Maykop	Russia
738	Mersin	Turkey
739	Mersin	Turkey
740	Midlands	UK
741	Mombasa	Kenya
742	Montevideo	Uruguay
743	Moscow	Russia
744	Moscow	Russia
745	Moss	Norway
746	Moss	Norway
747	Mundra	India
748	Munich	Germany
749	Naestved	Denmark
750	Naestved	Denmark
751	Napoli	Italy
752	Napoli	Italy
753	Navegantes	Brazil
754	North Europe	North Europe
755	Nhava Sheva	India
756	Nhava Sheva	India
757	Niemce	Poland
758	Ningbo	China
759	Nokia	Finland
760	Norresunby	Denmark
761	Norresunby	Denmark
762	Norrkoeping	Sweden
763	Norway	Norway
764	Norwich	UK
765	Novorossiysk	Russia
766	Novorossiysk	Russia
767	Odessa	Ukraine
768	Ogre	Latvia
769	Olaine	Latvia
770	Olaine	Latvia
771	Orkanger	Norway
772	Orkanger	Norway
773	Osaka	Japan
774	Oslo	Norway
775	Oslo	Norway
776	Ostroleka	Poland
777	Ostroleka	Poland
778	Oulu	Finland
779	Paldiski	Estonia
780	Paranagua	Brazil
781	Parnu	Estonia
782	Penang	Malaysia
783	Petrozavodsk	Russia
784	Piła	Poland
785	Piła	Poland
786	Piraeus	Greece
787	Piraeus	Greece
788	Piraeus	Greece
789	Warsaw	Poland
790	Stare Kurowo	Poland
791	Swiecie	Poland
792	Pori	Finland
793	Port Klang	Malaysia
794	Port Klang	Malaysia
795	Port Qasim	Pakistan
796	Porto	Portugal
797	Puerto Cortes	Honduras
798	Puerto Limon	Costa Rica
799	Port Qasim	Pakistan
800	Qingdao	China
801	Ramenskoye	Russia
802	Randers	Denmark
803	Raon l’Etape	France
804	Raon l’Etape	France
805	Rauma	Finland
806	Riga	Latvia
807	Riga	Latvia
808	Riga	Latvia
809	Rio Grande	Brazil
810	Rostov-on-Don	Russia
811	Rotterdam	Holland
812	Rotterdam	Holland
813	Rotterdam	Holland
814	Salvador	Brazil
815	San Antonio	Chile
816	San Vicente	Chile
817	Santa Giustina Bellunese	Italy
818	Santiago	Chile
819	Santiago	Chile
820	Santo Tomas de Castilla	Guatemala
821	Santos	Brazil
822	Szczecin	Poland
823	Setubal	Portugal
824	Shakhty	Russia
825	Shanghai	China
826	Shekou	China
827	Siauilai	Lithuania
828	Siauilai	Lithuania
829	Siemianowice Śląskie	Poland
830	Siemianowice Śląskie	Poland
831	Siemianowice Śląskie	Poland
832	Singapore	Singapore
833	Slavyansk-na-Kubani	Russia
834	Soedertaelje	Sweden
835	Sofia	Bulgaria
836	Spremberg	Germany
837	St. Albans	UK
838	St Petersburg	Russia
839	St Petersburg	Russia
840	St Petersburg	Russia
841	St. Albans	UK
842	St Petersburg	Russia
843	St. Albans	UK
844	Stare Kurowo	Poland
845	Stare Kurowo	Poland
846	Stare Kurowo	Poland
847	Stavanger	Norway
848	Stavanger	Norway
849	Stavropol	Russia
850	Stockholm	Sweden
851	Subic	Philippines
852	Surabaya	Indonesia
853	Svetogorsk	Russia
854	Swarzedz	Poland
855	Swarzedz	Poland
856	Świecie	Poland
857	Świecie	Poland
858	Świecie	Poland
859	Świecie	Poland
860	Szczecin	Poland
861	Szczecin	Poland
862	Taichung	Taiwan
863	Taipei	Taiwan
864	Taiwan	Taiwan
865	Tallinn	Estonia
866	Tallinn	Estonia
867	Tallinn	Estonia
868	Tallinn	Estonia
869	Taoyuan	Taiwan
870	Taoyuan	Taiwan
871	Tartu	Estonia
872	Teesport	UK
873	Tekirdag	Turkey
874	Tekirdag	Turkey
875	Thamesport	UK
876	Thessaloniki	Greece
877	Tianjin	China
878	Togliatti	Russia
879	Tokyo	Japan
880	Tonsburg	Norway
881	Transiidikeskuse	Estonia
882	Trieste	Italy
883	Tronsberg	Norway
884	Trondheim	Norway
885	Trondheim	Norway
886	Tronsberg	Norway
887	Tuapse	Russia
888	Turku	Finland
889	Tuticorin	India
890	Valmiera	Latvia
891	Valparaiso	Chile
892	Vantaa	Finland
893	Varkaus	Finland
894	Varna	Finland
895	Warsaw	Poland
896	Veliko Tarnovo	Bulgaria
897	Venice	Italy
898	Venice	Italy
899	Veracruz	Mexico
900	Verona	Italy
901	Viljandi	Estonia
902	Jaroslaw	Poland
903	Vilnius	Lithuania
904	Vilnius	Lithuania
905	Vilnius	Lithuania
906	Vitoria	Brazil
907	Vilnius	Lithuania
908	Wognum	Netherlands
909	Volgograd	Russia
910	Volzhsk	Russia
911	Warsaw	Poland
912	Wognum	Netherlands
913	Aalborg	Denmark
914	Wroclaw	Poland
915	Wroclaw	Netherlands
916	Xiamen	China
917	Xingang	China
918	Yantian	China
919	Yokohama	Japan
920	Zagreb	Croatia
921	Zgierz	Poland
922	Zhapu	China
923	Zhidachev	Ukraine
924	Zhidachev	Ukraine
925	Zhongshan	China
926	Zilina	Slovakia
927	Zielona Gora	Poland
928	Copenhagen	Denmark
929	Barszczówka	Poland
930	Karlstadt	Germany
931	Siauliai	Lithuania
932	Daugavpils	Latvia
933	Orebro	Sweden
934	Cluj	Romania
935	Brigadiru	Romania
936	San Juan Opico	El Salvador
937	New York	United States
938	Bydgoszcz	Poland
939	Antsla	Estonia
940	Chentelham	UK
941	Bilcza	Poland
942	Kavlinge	Sweden
943	Karlstad	Sweden
944	Paterek	Poland
945	St. Albans	UK
946	Corby	UK
947	Southampton	UK
948	Luton	UK
949	Blackburn	UK
950	Birmingham	UK
951	Enderby	UK
952	Milton Keyness	UK
953	Tamworth	UK
954	Lubin	Poland
955	Neuss	Germany
956	Gernsbach	Germany
957	Gioia Tauro	Italy
958	Palermo	Italy
959	Catania	Italy
960	Ravenna	Italy
961	Charlton	UK
962	Erith	UK
963	Romsey	UK
964	Norwich	UK
965	Potters Bar	UK
966	Leicester	UK
967	Luton	UK
968	Halifax	UK
969	Stafford	UK
970	Tampere	Finland
971	Kalna	Estonia
972	Kiiu	Estonia
973	Parnu	Estonia
974	Margonin	Poland
975	Jonkoping	Sweden
976	Hogdalen	Sweden
977	Cere	Latvia
978	Astorp	Sweden
979	Collodi	Italy
980	Viinikkala	Finland
981	Diemelstadt	Germany
982	Gernsbach	Germany
983	Herzberg am Harz	Germany
984	Yangon	Burma
985	Tilawa	Burma
986	Jacksonville	USA
987	Kalundborg	Denmark
988	Krakow	Poland
989	Zwolen	Poland
990	Grojec	Poland
991	Wyszkow	Poland
992	Seja	Latvia
993	Czerwonak	Poland
994	Wschowa	Poland
995	CZĘSTOCHOWA	Poland
996	TRZEBIEŃCZYCE	Poland
997	Rzeszow	Poland
998	SOSNOWIEC	Poland
999	Barszczowka	Poland
1000	Ostrava	Czech Republic
1001	Saint-Ghislain	Belgium
1002	Gullegem	Belgium
1003	Poznan	Poland
1004	Vasteras	Sweden
1005	Kolkata	India
1006	Elimaki	Finland
1007	Jamsankoski	Finland
1008	Belchatow	Poland
1009	Tomaszow Lubelski	Poland
1010	Bramki	Poland
1011	Terespol	Poland
1012	Schongau	Germany
1013	Vaesteras	Sweden
1014	Mayen	Germany
1015	Buenaventura	Colombia
1016	Grigiskes	Lithuania
1017	Qingdao	China
1018	Odense	Denmark
1019	Herning	Denmark
1020	Horsens	Denmark
1021	Esbjerg	Denmark
1022	Mayen	Germany
1023	Mulheim	Germany
1024	Trzydnik Duży	Poland
1025	Austell	USA
1026	UNDEFINED	UNDEFINED
1027	nan	nan
1028	Ekaterinburg	Russia
1029	Madrid	Spain
1030	Bristol	UK
1031	Brava	Czech Republic
1032	Zimrovice	Czech Republic
1033	Zeebrugge	Belgium
1034	Kamienec	Poland
1035	Uikala	Estonia
1036	Miami	USA
1037	Narva	Estonia
1038	Johvi	Estonia
1039	Baltimore	USA
1040	Trollhatan	Sweden
1041	Alexandria	Egypt
1042	Damietta	Egypt
1043	Mullhouse	France
1044	Dabrowa Gornice	Poland
1045	Peterborough	UK
1046	Torun	Poland
1047	Avonmouth	UK
1048	Vetlanda	Sweden
1049	San Juan PR	Puerto Rico
1050	Portbury	UK
1051	Bialystok	Poland
1052	Constanta	Romania
1053	Altamira	Mexico
1054	Piatra Neamt	Romania
1055	Izmir	Turkey
1056	Arica	Chile
1057	Mathi Canavese	Italy
1058	Vladivostok	Russia
1059	Naberezhnye Chelny	Russia
1060	Kazan	Russia
1061	Izhevsk	Russia
1062	Ufa	Russia
1063	Perm	Russia
1064	Montcada	Spain
1065	Kings Hills	UK
1066	Radom	Poland
1067	Illzach	France
1068	Dnipro	Ukraine
1069	Karczew	Poland
1070	Kiev	Ukraine
1071	Kaysersberg	France
1072	Staphorst	Holland
1073	Skaidiškės	Lithuania
1074	Zarzecze	Poland
1075	Kiev	Ukraine
1076	Kehl	Germany
1077	Tyumen	Russia
1078	Walddorfhäslach	Germany
1079	Rakvere	Estonia
1080	Tammiku	Estonia
1081	Viljandi	Estonia
1082	Tartu	Estonia
1083	Parnu	Estonia
1084	Daibe	Latvia
1085	Kandava	Latvia
1086	nan	France
1087	Izmir	Turkey
1088	Rapina	Estonia
1089	Morales	Guatemala
1090	Panama	Panama
1091	Monthiciari	Italy
1092	Choloma	Honduras
1093	Morales	Guatemala
1094	Balboa	Panama
1095	Rodman	Panama
1096	Cristobal	Panama
1097	Puerto Quetzal	Guatemala
1098	Caldera	Costa Rica
1099	Vung Tao	Vietnam
1100	Chennai	India
1101	Point Lisas	Trinidad and Tobago
1102	Okulovka	Russia
1103	Port of Spain	Trinidad and Tobago
1104	Guatemala City	Guatemala
1105	Sula	Honduras
1106	Borisov	Belarus
1107	San Pedro Sula	Honduras
1108	Gergzdeliai	Lithuania
1109	Maliye Kolpany	Russia
1110	Purmerend	Holland
1111	Marijampole	Lithuania
1112	Gorzow Wielkopolski	Poland
1113	Bytom	Poland
1114	Trakai	Lithuania
1115	Muscle Shoals	USA
1116	Willemstad	Curacao
1117	Tczew	Poland
1118	Miekinia	Poland
1119	Daugavpils	Latvia
1120	Tunis City	Tunis
1121	Los Angeles	USA
1122	Suwalki	Poland
1123	Pardubice	Czech Republic
1124	Plock	Poland
1125	Varel	Germany
1126	Pardubice	Czech Republic
1127	Schwedt	Germany
1128	Alexandria	Egypt
1129	Kiev	Ukraine
1130	Oakland	USA
1131	GERGZDELIAI	Lithuania
1132	Dormagen	Germany
1133	Wola Lask	Poland
1134	Falun	Sweden
1135	Dobrush	Belarus
1136	Lagos	Nigeria
1137	Smolevichi	Belarus
1138	Chashniki	Belarus
1139	Prague	Czech Republic
1140	Trencin	Slovakia
1141	Bratislava	Slovakia
1142	Wohyn	Poland
1143	Tychy	Poland
1144	Pezinok	Slovakia
1145	Hlohovec	Slovakia
1146	Sebedrazie	Slovakia
1147	Zvolen	Slovakia
1148	Kosice	Slovakia
1149	Santa Marta	Colombia
1150	Apapa	Nigeria
1151	Alger	Algeria
1152	Glostrup	Denmark
1153	Brondby	Denmark
1154	Borlange	Sweden
1155	Izmir	Turkey
1156	Houston	USA
1157	Norfolk	USA
1158	Slonim	Belarus
1159	Long Beach	USA
1160	Valencia	Spain
1161	Rio Haina	Dominican Republic
1162	Solec Kujawski	Poland
1163	Harcourt	Nigeria
1164	Boras	Sweden
1165	Acajutla	El Salvador
1166	Puerto Barrios	Guatemala
1167	Posorja	Ecuador
1168	Harmanec	Slovakia
1169	Czeladz	Poland
1170	Starachowice	Poland
1171	Aelvdalen	Sweden
1172	Zhitomir	Ukraine
1173	Chelm	Poland
1174	Kaysersberg	France
1175	Zambrow	Poland
1176	Zhytomyr	Ukraine
1177	Trnava	Slovakia
1178	Otley	UK
1179	Belfast	UK
1180	Roosendaal	Holland
1181	Kingston	Jamaica
1182	Brno	Czech Republic
1183	Tonder	Denmark
1184	Pipavav	India
1185	ICD Dadri	India
1186	Puerto Caldera	Costa Rica
1187	Puerto Moin	Costa Rica
1188	Shklov	Belarus
1189	Corinto	Nicaragua
1190	Tomakovka	Ukraine
1191	Cochin	India
1192	Ladna	Poland
1193	Grzybow	Poland
1194	Glogow	Poland
1195	Dolhobyczow	Poland
1196	Colon	Panama
1197	Amel	Belgium
1198	Daugavpils	Latvia
1199	Sulekovo	Slovakia
1200	Trencin	Slovakia
1201	Hoya	Germany
1202	Pionki	Poland
1203	Santa Lucia	Guatemala
1204	Helvetia	Hungary
1205	Budapest	Hungary
1206	Ulles	Hungary
1207	Szolnok	Hungary
1208	Swidnik	Poland
1209	Nyíregyháza	Hungary
1210	Banska Bystrica	Slovakia
1211	Hobro	Denmark
1212	Debrecen	Hungary
1213	Pecs	Hungary
1214	Prievidza	Slovakia
1215	Edmonton	UK
1216	Ipswich	UK
1217	Crayford	UK
1218	Zrodla	Poland
1219	San Jose CR	Costa Rica
1220	ICD Meerut	India
1221	Rubezhnoye	Ukraine
1222	Schwedt	Germany
1223	Zohor	Slovakia
1224	Kokeny	Hungary
1225	Paramaribo	Suriname
1226	Rodovre	Denmark
1227	Vratimov	Czech Republic
1228	LIPTOVSKY MIKULAS	Slovakia
1229	Hengelo	Holland
1230	Galanta	Slovakia
1231	Acs	Hungary
1232	Olomouc	Czech Republic
1233	Mlawa	Poland
1234	MORAVANY	Czech Republic
1235	Ustí nad Orlicí	Czech Republic
1236	Heredia	Costa Rica
1237	Gyula	Hungary
1238	Oranjestad	Aruba
1239	Nove Zamky	Slovakia
1240	Tema	Ghana
1241	Kerava	Finland
1242	Roadtown	BVI
1243	Siemianowice Śląskie	Poland
1244	Barcs	Hungary
1245	Aliaga Nemport	Turkey
1246	Malmo	Sweden
1247	Sittingbourne	UK
1248	Poninka	Ukraine
1249	Swiebodzin	Poland
1250	Oranjestad	Aruba
1251	Izmail	Ukraine
1252	Savanah	USA
1253	Tbilisi	Georgia
1254	Batumi	Georgia
1255	Poprad	Slovakia
1256	Lutsk	Ukraine
1257	Nowogród	Poland
1258	Nurnberg	Germany
1259	Kaysersberg	France
1260	Lviv	Ukraine
1261	Rejowiec	Poland
1262	Guapiles	Costa Rica
1263	Port-Au-Prince	Haiti
1264	Managua	Nicaragua
1265	Presov	Slovakia
1266	Schrobenhausen	Germany
1267	Charleston	USA
1268	Boston	USA
1269	Port Everglades	USA
1270	Adana	Turkey
1271	Valmiera	Latvia
1272	Trollhattan	Sweden
1273	San Salvador	El Salvador
1274	Lazaro Cardenas	Mexico
1275	Gluckstadt	Germany
1276	Lipetsk	Russia
1277	Swalmen	Holland
1278	Lappeenranta	Finland
1279	Kempele	Finland
1280	Ylivieska	Finland
1281	Managua	Nicaragua
1282	Trebsen	Germany
1283	Tolyatti	Russia
1284	Gatchina	Russia
1285	Kayseri	Turkey
1286	Dobrush	Belarus
1287	Oradea	Romania
1288	Russellville	USA
1289	Bucharest	Romania
1290	Pustkow Zurawski	Poland
1291	Krapkowice	Poland
1292	Sovetsk	Russia
1293	ZAPORIZHIA	Ukraine
1294	LILLA EDET	Sweden
1295	ICD Kashipur	India
1296	Schwarzenberg	Germany
1297	Bridgetown	Barbados
1298	Podolsk	Russia
1299	ODORHEIU	Romania
1300	Glina	Romania
1301	Valenii	Romania
1302	Sambir	Ukraine
1303	Newark	USA
1304	Vancouver	Canada
1305	Colima	Mexico
1306	Rebala	Estonia
1307	CHERKASSY	Ukraine
1308	Malin	Ukraine
1309	Wadowice	Poland
1310	Prague	Czech Republic
1311	Penza	Russia
1312	CUGIR	Romania
1313	ORANGEBURG	USA
1314	Branford	USA
1315	Duluth	USA
1316	ZAMARSKI	Poland
1317	Guadalajara	Mexico
1318	Vostochniy	Russia
1319	Itajai	Brazil
1320	Eger	Hungary
1321	Miskolc	Hungary
1322	Tatabanya	Hungary
1323	Dukel	Czech Republic
1324	Negev	Israil
1325	Muehlau	Germany
1326	Louny	Czech Republic
1327	Tibro	Sweden
1328	Leeds	UK
1329	Navegantes	Brazil
1330	Miercurea	Romania
1331	Sokol	Russia
1332	WALBRZYCH	Poland
1333	Aschaffenburg	Germany
1334	WADOWICE	Poland
1335	Rio de Janeiro	Brazil
1336	Tres Valles	Mexico
1337	Martin	Slovakia
1338	Monterrey	Mexico
1339	Ciudad de Mexico	Mexico
1340	Nowy Sacz	Poland
1341	Chelm	Poland
1342	Cluj	Romania
1343	Manisa	Turkey
1344	Suape	Brazil
1345	Drobeta	Romania
1346	Vorumaa	Estonia
1347	CHISINAU	Moldova
1348	ALEXANDRIA	Egypt
1349	Volkermarkt	Austria
1350	Segezha	Russia
1351	Saarijarvi	Finland
1352	Zhydachiv	Ukraine
1353	Balti	Moldova
1354	Dammam	Saudi Arabia
1355	Melnik	Czech Republic
1356	Causedo	Dominican Republic
1357	Molodechno	Belarus
\.


--
-- Data for Name: inputs_profile; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_profile (id, country, user_id) FROM stdin;
\.


--
-- Data for Name: inputs_readiness; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_readiness (id, "Proveedor", "Origin", date, number, cntr, "Tons", comment, po_id) FROM stdin;
\.


--
-- Data for Name: inputs_shipment; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_shipment (id, number, forwarder, carrier, cntr, bknumber, "ETD", "ETA", margin, "marginEUR", "BK", "SI", "Magic", "Truck", po_id) FROM stdin;
\.


--
-- Data for Name: inputs_shipmentrate; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_shipmentrate (id, rate, shipment_id) FROM stdin;
\.


--
-- Data for Name: inputs_so; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_so (id, number, date, material, cntr, "Tons", min, cost, currency, comment, cpt, stat, client_id, destination_id, user_id) FROM stdin;
3	00-0000	14.12.2021	none	0	0.00	0.00	0.00	USD	0	0	f	1	514	1
4	00-0000	14.12.2021	none	0	0.00	0.00	0.00	USD	0	0	f	1	514	2
\.


--
-- Data for Name: inputs_track; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_track (id, bknumber, number, "Supplier", origincountry, material, payment_status, registered, comment) FROM stdin;
\.


--
-- Data for Name: inputs_upd; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.inputs_upd (id, index, st) FROM stdin;
1	1	f
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 128, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 539, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 32, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: inputs_back_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_back_id_seq', 1, false);


--
-- Name: inputs_buffer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_buffer_id_seq', 1, false);


--
-- Name: inputs_claims_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_claims_id_seq', 1, false);


--
-- Name: inputs_claimsukr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_claimsukr_id_seq', 1, false);


--
-- Name: inputs_containers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_containers_id_seq', 1, false);


--
-- Name: inputs_costs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_costs_id_seq', 1, false);


--
-- Name: inputs_counter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_counter_id_seq', 1, false);


--
-- Name: inputs_counterupd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_counterupd_id_seq', 1, true);


--
-- Name: inputs_empresa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_empresa_id_seq', 698, true);


--
-- Name: inputs_existing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_existing_id_seq', 1, false);


--
-- Name: inputs_fincosts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_fincosts_id_seq', 1, false);


--
-- Name: inputs_freight_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_freight_id_seq', 1, false);


--
-- Name: inputs_invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_invoices_id_seq', 1, false);


--
-- Name: inputs_materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_materials_id_seq', 115, true);


--
-- Name: inputs_monthly_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_monthly_id_seq', 1, false);


--
-- Name: inputs_monthlycosts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_monthlycosts_id_seq', 1, false);


--
-- Name: inputs_monthlyrate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_monthlyrate_id_seq', 1, false);


--
-- Name: inputs_po_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_po_id_seq', 1, false);


--
-- Name: inputs_ports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_ports_id_seq', 1357, true);


--
-- Name: inputs_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_profile_id_seq', 1, false);


--
-- Name: inputs_readiness_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_readiness_id_seq', 1, false);


--
-- Name: inputs_shipment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_shipment_id_seq', 1, false);


--
-- Name: inputs_shipmentrate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_shipmentrate_id_seq', 1, false);


--
-- Name: inputs_so_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_so_id_seq', 4, true);


--
-- Name: inputs_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_track_id_seq', 1, false);


--
-- Name: inputs_upd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.inputs_upd_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: inputs_back inputs_back_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_back
    ADD CONSTRAINT inputs_back_pkey PRIMARY KEY (id);


--
-- Name: inputs_buffer inputs_buffer_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_buffer
    ADD CONSTRAINT inputs_buffer_pkey PRIMARY KEY (id);


--
-- Name: inputs_claims inputs_claims_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_claims
    ADD CONSTRAINT inputs_claims_pkey PRIMARY KEY (id);


--
-- Name: inputs_claimsukr inputs_claimsukr_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_claimsukr
    ADD CONSTRAINT inputs_claimsukr_pkey PRIMARY KEY (id);


--
-- Name: inputs_containers inputs_containers_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_containers
    ADD CONSTRAINT inputs_containers_pkey PRIMARY KEY (id);


--
-- Name: inputs_costs inputs_costs_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_costs
    ADD CONSTRAINT inputs_costs_pkey PRIMARY KEY (id);


--
-- Name: inputs_counter inputs_counter_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_counter
    ADD CONSTRAINT inputs_counter_pkey PRIMARY KEY (id);


--
-- Name: inputs_counterupd inputs_counterupd_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_counterupd
    ADD CONSTRAINT inputs_counterupd_pkey PRIMARY KEY (id);


--
-- Name: inputs_empresa inputs_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_empresa
    ADD CONSTRAINT inputs_empresa_pkey PRIMARY KEY (id);


--
-- Name: inputs_existing inputs_existing_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_existing
    ADD CONSTRAINT inputs_existing_pkey PRIMARY KEY (id);


--
-- Name: inputs_fincosts inputs_fincosts_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_fincosts
    ADD CONSTRAINT inputs_fincosts_pkey PRIMARY KEY (id);


--
-- Name: inputs_freight inputs_freight_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_freight
    ADD CONSTRAINT inputs_freight_pkey PRIMARY KEY (id);


--
-- Name: inputs_invoices inputs_invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_invoices
    ADD CONSTRAINT inputs_invoices_pkey PRIMARY KEY (id);


--
-- Name: inputs_materials inputs_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_materials
    ADD CONSTRAINT inputs_materials_pkey PRIMARY KEY (id);


--
-- Name: inputs_monthly inputs_monthly_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_monthly
    ADD CONSTRAINT inputs_monthly_pkey PRIMARY KEY (id);


--
-- Name: inputs_monthlycosts inputs_monthlycosts_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_monthlycosts
    ADD CONSTRAINT inputs_monthlycosts_pkey PRIMARY KEY (id);


--
-- Name: inputs_monthlyrate inputs_monthlyrate_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_monthlyrate
    ADD CONSTRAINT inputs_monthlyrate_pkey PRIMARY KEY (id);


--
-- Name: inputs_po inputs_po_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_po
    ADD CONSTRAINT inputs_po_pkey PRIMARY KEY (id);


--
-- Name: inputs_ports inputs_ports_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_ports
    ADD CONSTRAINT inputs_ports_pkey PRIMARY KEY (id);


--
-- Name: inputs_profile inputs_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_profile
    ADD CONSTRAINT inputs_profile_pkey PRIMARY KEY (id);


--
-- Name: inputs_readiness inputs_readiness_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_readiness
    ADD CONSTRAINT inputs_readiness_pkey PRIMARY KEY (id);


--
-- Name: inputs_shipment inputs_shipment_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_shipment
    ADD CONSTRAINT inputs_shipment_pkey PRIMARY KEY (id);


--
-- Name: inputs_shipmentrate inputs_shipmentrate_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_shipmentrate
    ADD CONSTRAINT inputs_shipmentrate_pkey PRIMARY KEY (id);


--
-- Name: inputs_so inputs_so_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_so
    ADD CONSTRAINT inputs_so_pkey PRIMARY KEY (id);


--
-- Name: inputs_track inputs_track_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_track
    ADD CONSTRAINT inputs_track_pkey PRIMARY KEY (id);


--
-- Name: inputs_upd inputs_upd_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_upd
    ADD CONSTRAINT inputs_upd_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: inputs_claims_Monthly_id_39edae38; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX "inputs_claims_Monthly_id_39edae38" ON public.inputs_claims USING btree ("Monthly_id");


--
-- Name: inputs_claimsukr_monthly_id_7d6e5dae; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_claimsukr_monthly_id_7d6e5dae ON public.inputs_claimsukr USING btree (monthly_id);


--
-- Name: inputs_containers_shipment_id_fcc2c6ec; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_containers_shipment_id_fcc2c6ec ON public.inputs_containers USING btree (shipment_id);


--
-- Name: inputs_containers_us_id_4100d541; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_containers_us_id_4100d541 ON public.inputs_containers USING btree (us_id);


--
-- Name: inputs_costs_shipment_id_dc9dddc4; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_costs_shipment_id_dc9dddc4 ON public.inputs_costs USING btree (shipment_id);


--
-- Name: inputs_fincosts_monthly_id_0605060c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_fincosts_monthly_id_0605060c ON public.inputs_fincosts USING btree (monthly_id);


--
-- Name: inputs_monthlycosts_monthly_id_5836cf43; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_monthlycosts_monthly_id_5836cf43 ON public.inputs_monthlycosts USING btree (monthly_id);


--
-- Name: inputs_monthlyrate_monthly_id_310a29d5; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_monthlyrate_monthly_id_310a29d5 ON public.inputs_monthlyrate USING btree (monthly_id);


--
-- Name: inputs_po_Origin_id_f4c6dde4; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX "inputs_po_Origin_id_f4c6dde4" ON public.inputs_po USING btree ("Origin_id");


--
-- Name: inputs_po_Proveedor_id_2cf1ac7b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX "inputs_po_Proveedor_id_2cf1ac7b" ON public.inputs_po USING btree ("Proveedor_id");


--
-- Name: inputs_po_material_id_8713722a; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_po_material_id_8713722a ON public.inputs_po USING btree (material_id);


--
-- Name: inputs_po_so_id_381cb639; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_po_so_id_381cb639 ON public.inputs_po USING btree (so_id);


--
-- Name: inputs_profile_user_id_18db1e18; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_profile_user_id_18db1e18 ON public.inputs_profile USING btree (user_id);


--
-- Name: inputs_readiness_po_id_8dc3ff83; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_readiness_po_id_8dc3ff83 ON public.inputs_readiness USING btree (po_id);


--
-- Name: inputs_shipment_po_id_47c36245; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_shipment_po_id_47c36245 ON public.inputs_shipment USING btree (po_id);


--
-- Name: inputs_shipmentrate_shipment_id_53fc55d9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_shipmentrate_shipment_id_53fc55d9 ON public.inputs_shipmentrate USING btree (shipment_id);


--
-- Name: inputs_so_client_id_161b2882; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_so_client_id_161b2882 ON public.inputs_so USING btree (client_id);


--
-- Name: inputs_so_destination_id_b6620dcd; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_so_destination_id_b6620dcd ON public.inputs_so USING btree (destination_id);


--
-- Name: inputs_so_user_id_51e79c5e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX inputs_so_user_id_51e79c5e ON public.inputs_so USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_claims inputs_claims_Monthly_id_39edae38_fk_inputs_monthly_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_claims
    ADD CONSTRAINT "inputs_claims_Monthly_id_39edae38_fk_inputs_monthly_id" FOREIGN KEY ("Monthly_id") REFERENCES public.inputs_monthly(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_claimsukr inputs_claimsukr_monthly_id_7d6e5dae_fk_inputs_monthly_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_claimsukr
    ADD CONSTRAINT inputs_claimsukr_monthly_id_7d6e5dae_fk_inputs_monthly_id FOREIGN KEY (monthly_id) REFERENCES public.inputs_monthly(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_containers inputs_containers_shipment_id_fcc2c6ec_fk_inputs_shipment_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_containers
    ADD CONSTRAINT inputs_containers_shipment_id_fcc2c6ec_fk_inputs_shipment_id FOREIGN KEY (shipment_id) REFERENCES public.inputs_shipment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_containers inputs_containers_us_id_4100d541_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_containers
    ADD CONSTRAINT inputs_containers_us_id_4100d541_fk_auth_user_id FOREIGN KEY (us_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_costs inputs_costs_shipment_id_dc9dddc4_fk_inputs_shipment_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_costs
    ADD CONSTRAINT inputs_costs_shipment_id_dc9dddc4_fk_inputs_shipment_id FOREIGN KEY (shipment_id) REFERENCES public.inputs_shipment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_fincosts inputs_fincosts_monthly_id_0605060c_fk_inputs_monthly_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_fincosts
    ADD CONSTRAINT inputs_fincosts_monthly_id_0605060c_fk_inputs_monthly_id FOREIGN KEY (monthly_id) REFERENCES public.inputs_monthly(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_monthlycosts inputs_monthlycosts_monthly_id_5836cf43_fk_inputs_monthly_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_monthlycosts
    ADD CONSTRAINT inputs_monthlycosts_monthly_id_5836cf43_fk_inputs_monthly_id FOREIGN KEY (monthly_id) REFERENCES public.inputs_monthly(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_monthlyrate inputs_monthlyrate_monthly_id_310a29d5_fk_inputs_monthly_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_monthlyrate
    ADD CONSTRAINT inputs_monthlyrate_monthly_id_310a29d5_fk_inputs_monthly_id FOREIGN KEY (monthly_id) REFERENCES public.inputs_monthly(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_po inputs_po_Origin_id_f4c6dde4_fk_inputs_ports_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_po
    ADD CONSTRAINT "inputs_po_Origin_id_f4c6dde4_fk_inputs_ports_id" FOREIGN KEY ("Origin_id") REFERENCES public.inputs_ports(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_po inputs_po_Proveedor_id_2cf1ac7b_fk_inputs_empresa_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_po
    ADD CONSTRAINT "inputs_po_Proveedor_id_2cf1ac7b_fk_inputs_empresa_id" FOREIGN KEY ("Proveedor_id") REFERENCES public.inputs_empresa(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_po inputs_po_material_id_8713722a_fk_inputs_materials_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_po
    ADD CONSTRAINT inputs_po_material_id_8713722a_fk_inputs_materials_id FOREIGN KEY (material_id) REFERENCES public.inputs_materials(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_po inputs_po_so_id_381cb639_fk_inputs_so_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_po
    ADD CONSTRAINT inputs_po_so_id_381cb639_fk_inputs_so_id FOREIGN KEY (so_id) REFERENCES public.inputs_so(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_profile inputs_profile_user_id_18db1e18_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_profile
    ADD CONSTRAINT inputs_profile_user_id_18db1e18_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_readiness inputs_readiness_po_id_8dc3ff83_fk_inputs_po_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_readiness
    ADD CONSTRAINT inputs_readiness_po_id_8dc3ff83_fk_inputs_po_id FOREIGN KEY (po_id) REFERENCES public.inputs_po(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_shipment inputs_shipment_po_id_47c36245_fk_inputs_po_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_shipment
    ADD CONSTRAINT inputs_shipment_po_id_47c36245_fk_inputs_po_id FOREIGN KEY (po_id) REFERENCES public.inputs_po(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_shipmentrate inputs_shipmentrate_shipment_id_53fc55d9_fk_inputs_shipment_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_shipmentrate
    ADD CONSTRAINT inputs_shipmentrate_shipment_id_53fc55d9_fk_inputs_shipment_id FOREIGN KEY (shipment_id) REFERENCES public.inputs_shipment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_so inputs_so_client_id_161b2882_fk_inputs_empresa_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_so
    ADD CONSTRAINT inputs_so_client_id_161b2882_fk_inputs_empresa_id FOREIGN KEY (client_id) REFERENCES public.inputs_empresa(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_so inputs_so_destination_id_b6620dcd_fk_inputs_ports_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_so
    ADD CONSTRAINT inputs_so_destination_id_b6620dcd_fk_inputs_ports_id FOREIGN KEY (destination_id) REFERENCES public.inputs_ports(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inputs_so inputs_so_user_id_51e79c5e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.inputs_so
    ADD CONSTRAINT inputs_so_user_id_51e79c5e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

