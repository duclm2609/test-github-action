-- Auto‑generated DDL for DLD CSV ingestion
SET search_path TO public;

-- 1. RAW STAGING LAYER --------------------------------------------------
CREATE SCHEMA IF NOT EXISTS dld_raw;

DROP TABLE IF EXISTS dld_raw.accredited_escrow_agents CASCADE;
CREATE TABLE dld_raw.accredited_escrow_agents (
  escrow_agent_number text,
  escrow_agent_name_ar text,
  escrow_agent_name_en text,
  phone text
);


DROP TABLE IF EXISTS dld_raw.accredited_trainers CASCADE;
CREATE TABLE dld_raw.accredited_trainers (
  course_code text,
  cource_title_ar text,
  cource_title_en text,
  course_date text,
  course_to text,
  course_time_from text,
  course_time_to text,
  age_group text,
  trainee_gender text,
  no_of_trainees text
);


DROP TABLE IF EXISTS dld_raw.brokers_raw CASCADE;
CREATE TABLE dld_raw.brokers_raw (
  participant_id text,
  real_estate_broker_id text,
  broker_number text,
  broker_name_ar text,
  broker_name_en text,
  gender text,
  license_start_date text,
  license_end_date text,
  webpage text,
  phone text,
  fax text,
  real_estate_id text,
  real_estate_number text
);


DROP TABLE IF EXISTS dld_raw.buildings CASCADE;
CREATE TABLE dld_raw.buildings (
  property_id text,
  area_id text,
  zone_id text,
  area_name_ar text,
  area_name_en text,
  land_number text,
  land_sub_number text,
  building_number text,
  common_area text,
  actual_common_area text,
  floors text,
  rooms text,
  rooms_ar text,
  rooms_en text,
  car_parks text,
  built_up_area text,
  bld_levels text,
  shops text,
  flats text,
  offices text,
  swimming_pools text,
  elevators text,
  actual_area text,
  property_type_id text,
  property_type_ar text,
  property_type_en text,
  property_sub_type_id text,
  property_sub_type_ar text,
  property_sub_type_en text,
  parent_property_id text,
  creation_date text,
  parcel_id text,
  is_free_hold text,
  is_lease_hold text,
  is_registered text,
  pre_registration_number text,
  master_project_id text,
  master_project_en text,
  master_project_ar text,
  project_id text,
  project_name_ar text,
  project_name_en text,
  land_type_id text,
  land_type_ar text,
  land_type_en text
);


DROP TABLE IF EXISTS dld_raw.developers CASCADE;
CREATE TABLE dld_raw.developers (
  participant_id text,
  developer_id text,
  developer_number text,
  developer_name_ar text,
  developer_name_en text,
  registration_date text,
  license_source_id text,
  license_source_ar text,
  license_source_en text,
  license_type_id text,
  license_type_ar text,
  license_type_en text,
  license_number text,
  license_issue_date text,
  license_expiry_date text,
  chamber_of_commerce_no text,
  legal_status text,
  legal_status_ar text,
  legal_status_en text,
  webpage text,
  phone text,
  fax text
);


DROP TABLE IF EXISTS dld_raw.elders_people_determination CASCADE;
CREATE TABLE dld_raw.elders_people_determination (
  service_year text,
  service_month text,
  service_name_ar text,
  service_name_en text,
  service_location_ar text,
  service_location_en text,
  total_no_of_tickets text,
  average_wating_time text,
  target_waiting_time text,
  percent_waiting_time_in_target text,
  average_service_time text,
  target_service_time text,
  percent_service_time_in_target text
);


DROP TABLE IF EXISTS dld_raw.free_zone_companies_licensing CASCADE;
CREATE TABLE dld_raw.free_zone_companies_licensing (
  fz_company_number text,
  fz_company_name_ar text,
  fz_company_name_en text,
  license_source_id text,
  license_source_ar text,
  license_source_en text,
  license_number text,
  license_issue_date text,
  license_expiry_date text,
  email text,
  webpage text,
  phone text
);


DROP TABLE IF EXISTS dld_raw.land_registry CASCADE;
CREATE TABLE dld_raw.land_registry (
  property_id text,
  area_id text,
  zone_id text,
  area_name_ar text,
  area_name_en text,
  land_number text,
  land_sub_number text,
  actual_area text,
  property_type_id text,
  property_type_ar text,
  property_type_en text,
  property_sub_type_id text,
  property_sub_type_ar text,
  property_sub_type_en text,
  munc_zip_code text,
  munc_number text,
  parcel_id text,
  is_free_hold text,
  is_registered text,
  pre_registration_number text,
  separated_from text,
  separated_reference text,
  project_id text,
  project_name_ar text,
  project_name_en text,
  master_project_id text,
  master_project_en text,
  master_project_ar text,
  land_type_id text,
  land_type_ar text,
  land_type_en text
);


DROP TABLE IF EXISTS dld_raw.licenced_owner_associations CASCADE;
CREATE TABLE dld_raw.licenced_owner_associations (
  company_name_ar text,
  company_name_en text,
  phone text,
  email text,
  latitude text,
  longitude text
);


DROP TABLE IF EXISTS dld_raw.map_requests CASCADE;
CREATE TABLE dld_raw.map_requests (
  request_id text,
  request_date text,
  application_id text,
  application_ar text,
  sub_service_application_en text,
  request_source_id text,
  request_source_ar text,
  request_source_en text,
  procedure_id text,
  procedure_name_ar text,
  procedure_name_en text,
  property_type_id text,
  property_type_ar text,
  property_type_en text,
  no_of_siteplans text
);


DROP TABLE IF EXISTS dld_raw.oa_service_charges CASCADE;
CREATE TABLE dld_raw.oa_service_charges (
  master_community_id text,
  master_community_name_en text,
  master_community_name_ar text,
  property_group_id text,
  property_group_name_en text,
  property_group_name_ar text,
  project_id text,
  project_name text,
  usage_id text,
  usage_name_en text,
  usage_name_ar text,
  budget_year text,
  service_cost text,
  service_category_id text,
  service_category_name_en text,
  service_category_name_ar text,
  management_company_id text,
  management_company_name_en text,
  management_company_name_ar text
);


DROP TABLE IF EXISTS dld_raw.offices CASCADE;
CREATE TABLE dld_raw.offices (
  participant_id text,
  real_estate_id text,
  real_estate_number text,
  license_source_id text,
  license_source_ar text,
  license_source_en text,
  license_number text,
  license_issue_date text,
  license_expiry_date text,
  is_branch text,
  main_office_id text,
  webpage text,
  phone text,
  fax text,
  activity_type_id text,
  ded_activity_code text,
  activity_type_ar text,
  activity_type_en text
);


DROP TABLE IF EXISTS dld_raw.projects CASCADE;
CREATE TABLE dld_raw.projects (
  project_id text,
  project_number text,
  project_name text,
  developer_id text,
  developer_number text,
  developer_name text,
  master_developer_id text,
  master_developer_number text,
  master_developer_name text,
  project_start_date text,
  project_end_date text,
  project_type_id text,
  project_type_ar text,
  project_classification_id text,
  project_classification_ar text,
  escrow_agent_id text,
  escrow_agent_name text,
  project_status text,
  project_status_ar text,
  percent_completed text,
  completion_date text,
  cancellation_date text,
  project_description_ar text,
  project_description_en text,
  property_id text,
  area_id text,
  area_name_ar text,
  area_name_en text,
  master_project_ar text,
  master_project_en text,
  zoning_authority_id text,
  zoning_authority_ar text,
  zoning_authority_en text,
  no_of_lands text,
  no_of_buildings text,
  no_of_villas text,
  no_of_units text
);


DROP TABLE IF EXISTS dld_raw.real_estate_licenses CASCADE;
CREATE TABLE dld_raw.real_estate_licenses (
  participant_id text,
  authority_id text,
  license_number text,
  chamber_commerce_number text,
  commerce_registry_number text,
  trade_name_arabic text,
  trade_name_english text,
  issue_date text,
  expiry_date text,
  cancel_date text,
  status_id text,
  status_arabic text,
  status_english text,
  legal_type_id text,
  legal_type_arabic text,
  legal_type_english text,
  parcel_id text,
  rent_contract_no text,
  print_rmker_arabic text,
  activity_type_id text,
  ded_activity_code text,
  activity_name_ar text,
  activity_name_en text
);


DROP TABLE IF EXISTS dld_raw.real_estate_permits CASCADE;
CREATE TABLE dld_raw.real_estate_permits (
  permits_id text,
  permit_number text,
  start_date text,
  end_date text,
  location text,
  exhibition_name_ar text,
  exhibition_name_en text,
  parent_parmits_id text,
  permit_status_id text,
  permit_status_ar text,
  permit_status_en text,
  parent_service_id text,
  main_service_ar text,
  main_service_en text,
  service_id text,
  service_ar text,
  service_en text,
  license_number text,
  participant_name_ar text,
  paricicant_name_en text
);


DROP TABLE IF EXISTS dld_raw.residential_sale_index CASCADE;
CREATE TABLE dld_raw.residential_sale_index (
  first_date_of_month text,
  all_monthly_index text,
  all_quarterly_index text,
  all_yearly_index text,
  flat_monthly_index text,
  flat_quarterly_index text,
  flat_yearly_index text,
  villa_monthly_index text,
  villa_quarterly_index text,
  villa_yearly_index text,
  all_monthly_price_index text,
  all_quarterly_price_index text,
  all_yearly_price_index text,
  flat_monthly_price_index text,
  flat_quarterly_price_index text,
  flat_yearly_price_index text,
  villa_monthly_price_index text,
  villa_quarterly_price_index text,
  villa_yearly_price_index text
);


DROP TABLE IF EXISTS dld_raw.transactions CASCADE;
CREATE TABLE dld_raw.transactions (
  transaction_id text,
  procedure_id text,
  trans_group_id text,
  trans_group_ar text,
  trans_group_en text,
  procedure_name_ar text,
  procedure_name_en text,
  instance_date text,
  property_type_id text,
  property_type_ar text,
  property_type_en text,
  property_sub_type_id text,
  property_sub_type_ar text,
  property_sub_type_en text,
  property_usage_ar text,
  property_usage_en text,
  reg_type_id text,
  reg_type_ar text,
  reg_type_en text,
  area_id text,
  area_name_ar text,
  area_name_en text,
  building_name_ar text,
  building_name_en text,
  project_number text,
  project_name_ar text,
  project_name_en text,
  master_project_en text,
  master_project_ar text,
  nearest_landmark_ar text,
  nearest_landmark_en text,
  nearest_metro_ar text,
  nearest_metro_en text,
  nearest_mall_ar text,
  nearest_mall_en text,
  rooms_ar text,
  rooms_en text,
  has_parking text,
  procedure_area text,
  actual_worth text,
  meter_sale_price text,
  rent_value text,
  meter_rent_price text,
  no_of_parties_role_1 text,
  no_of_parties_role_2 text,
  no_of_parties_role_3 text
);


DROP TABLE IF EXISTS dld_raw.units CASCADE;
CREATE TABLE dld_raw.units (
  property_id text,
  area_id text,
  zone_id text,
  area_name_ar text,
  area_name_en text,
  land_number text,
  land_sub_number text,
  building_number text,
  unit_number text,
  unit_balcony_area text,
  unit_parking_number text,
  parking_allocation_type text,
  parking_allocation_type_ar text,
  parking_allocation_type_en text,
  common_area text,
  actual_common_area text,
  floor text,
  rooms text,
  rooms_ar text,
  rooms_en text,
  actual_area text,
  property_type_id text,
  property_type_ar text,
  property_type_en text,
  property_sub_type_id text,
  property_sub_type_ar text,
  property_sub_type_en text,
  parent_property_id text,
  grandparent_property_id text,
  creation_date text,
  munc_zip_code text,
  munc_number text,
  parcel_id text,
  is_free_hold text,
  is_lease_hold text,
  is_registered text,
  pre_registration_number text,
  master_project_id text,
  master_project_en text,
  master_project_ar text,
  project_id text,
  project_name_ar text,
  project_name_en text,
  land_type_id text,
  land_type_ar text,
  land_type_en text
);


DROP TABLE IF EXISTS dld_raw.valuation CASCADE;
CREATE TABLE dld_raw.valuation (
  procedure_id text,
  procedure_name_ar text,
  procedure_name_en text,
  procedure_year text,
  procedure_number text,
  instance_date text,
  actual_worth text,
  row_status_code text,
  procedure_area text,
  property_type_id text,
  property_type_ar text,
  property_type_en text,
  property_sub_type_id text,
  property_sub_type_ar text,
  property_sub_type_en text,
  area_id text,
  area_name_ar text,
  area_name_en text,
  actual_area text,
  property_total_value text
);


DROP TABLE IF EXISTS dld_raw.valuator_licensing CASCADE;
CREATE TABLE dld_raw.valuator_licensing (
  valuation_company_number text,
  valuation_company_name_ar text,
  valuation_company_name_en text,
  valuator_number text,
  valuator_name_ar text,
  valuator_name_en text,
  valuator_nationality_id text,
  valuator_nationality_ar text,
  valuator_nationality_en text,
  gender_id text,
  gender_ar text,
  gender_en text,
  license_start_date text,
  license_end_date text
);


-- Example COPY command (adjust path):
-- \copy dld_raw.land_registry FROM '/path/to/Land_Registry.csv' WITH (FORMAT csv, HEADER);


/* ---------- 2. TYPED & NORMALISED LAYER ---------- */
CREATE SCHEMA IF NOT EXISTS dld;

/* Key reference tables */
DROP TABLE IF EXISTS dld.area CASCADE;
CREATE TABLE dld.area (
  area_id        integer PRIMARY KEY,
  zone_id        integer,
  name_ar        text,
  name_en        text
);

DROP TABLE IF EXISTS dld.property_type CASCADE;
CREATE TABLE dld.property_type (
  property_type_id integer PRIMARY KEY,
  name_ar          text,
  name_en          text
);

DROP TABLE IF EXISTS dld.property_sub_type CASCADE;
CREATE TABLE dld.property_sub_type (
  property_sub_type_id integer PRIMARY KEY,
  property_type_id     integer REFERENCES dld.property_type,
  name_ar              text,
  name_en              text
);

/* Developers & Escrow */
DROP TABLE IF EXISTS dld.developer CASCADE;
CREATE TABLE dld.developer (
  developer_id      integer PRIMARY KEY,
  developer_number  text,
  name_ar           text,
  name_en           text,
  registration_date date,
  license_number    text,
  phone             text,
  fax               text,
  webpage           text
);

DROP TABLE IF EXISTS dld.escrow_agent CASCADE;
CREATE TABLE dld.escrow_agent (
  escrow_agent_number text PRIMARY KEY,
  name_ar             text,
  name_en             text,
  phone               text
);

DROP TABLE IF EXISTS dld.project CASCADE;
CREATE TABLE dld.project (
  project_id          integer PRIMARY KEY,
  project_number      text,
  project_name        text,
  developer_id        integer REFERENCES dld.developer,
  master_developer_id integer,
  project_start_date  date,
  project_end_date    date,
  project_status      text,
  percent_completed   numeric(5,2),
  escrow_agent_number text REFERENCES dld.escrow_agent,
  area_id             integer REFERENCES dld.area
);

/* Hierarchy tables */
DROP TABLE IF EXISTS dld.land CASCADE;
CREATE TABLE dld.land (
  property_id       bigint PRIMARY KEY,
  area_id           integer REFERENCES dld.area,
  land_number       text,
  land_sub_number   text,
  actual_area       numeric(14,2),
  is_free_hold      boolean,
  is_registered     boolean,
  project_id        integer REFERENCES dld.project,
  master_project_id integer
);

DROP TABLE IF EXISTS dld.building CASCADE;
CREATE TABLE dld.building (
  property_id        bigint PRIMARY KEY,
  parent_property_id bigint REFERENCES dld.land(property_id),
  building_number    text,
  floors             integer,
  rooms              integer,
  car_parks          integer,
  built_up_area      numeric(14,2),
  actual_area        numeric(14,2),
  project_id         integer REFERENCES dld.project,
  creation_date      date
);

DROP TABLE IF EXISTS dld.unit CASCADE;
CREATE TABLE dld.unit (
  property_id             bigint PRIMARY KEY,
  parent_property_id      bigint REFERENCES dld.building(property_id),
  grandparent_property_id bigint REFERENCES dld.land(property_id),
  unit_number             text,
  floor                   integer,
  rooms                   integer,
  actual_area             numeric(14,2),
  balcony_area            numeric(14,2),
  parking_number          text,
  is_registered           boolean,
  project_id              integer REFERENCES dld.project
);

/* Transaction & Valuation */
DROP TABLE IF EXISTS dld.transaction CASCADE;
CREATE TABLE dld.transaction (
  transaction_number bigint PRIMARY KEY,
  instance_date      date,
  group_en           text,
  procedure_en       text,
  is_offplan_en      text,
  is_free_hold_en    text,
  usage_en           text,
  area_en            text,
  prop_type_en       text,
  prop_sb_type_en    text,
  trans_value        numeric(15,2),
  procedure_area     numeric(12,2),
  actual_area        numeric(12,2),
  rooms_en           integer,
  parking            integer,
  nearest_metro_en   text,
  nearest_mall_en    text,
  nearest_landmark_en text,
  total_buyer        integer,
  total_seller       integer,
  master_project_en  text,
  project_en         text
);

DROP TABLE IF EXISTS dld.valuation CASCADE;
CREATE TABLE dld.valuation (
  procedure_id        bigint PRIMARY KEY,
  instance_date       date,
  actual_worth        numeric(15,2),
  procedure_area      numeric(12,2),
  property_type_id    integer REFERENCES dld.property_type,
  property_sub_type_id integer REFERENCES dld.property_sub_type,
  area_id             integer REFERENCES dld.area,
  property_total_value numeric(15,2)
);

/* Indexes */
CREATE INDEX IF NOT EXISTS idx_building_parent ON dld.building(parent_property_id);
CREATE INDEX IF NOT EXISTS idx_unit_parent ON dld.unit(parent_property_id);
CREATE INDEX IF NOT EXISTS idx_unit_grandparent ON dld.unit(grandparent_property_id);
CREATE INDEX IF NOT EXISTS idx_transaction_date ON dld.transaction(instance_date);
CREATE INDEX IF NOT EXISTS idx_valuation_date ON dld.valuation(instance_date);
