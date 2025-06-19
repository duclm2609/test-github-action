c#!/usr/bin/env bash
# Load all CSV files into dld_raw tables.
# Usage: ./load_csv.sh /absolute/path/to/csv/dir

set -euo pipefail

CSV_DIR="${1:-}"
if [[ -z "$CSV_DIR" ]]; then
  echo "Please provide the CSV directory path as the first argument."
  exit 1
fi

export PGPASSWORD="${PGPASSWORD:-}"
PSQL="psql -v ON_ERROR_STOP=1"

# Function to load a CSV file into a table
load_csv() {
  local table_name="$1"
  local csv_file="$2"
  local src="$CSV_DIR/$csv_file"
  
  if [[ -f "$src" ]]; then
    echo "Loading $src into dld_raw.$table_name"
    $PSQL -c "\copy dld_raw.$table_name FROM '$src' WITH (FORMAT csv, HEADER)"
  else
    echo "Warning: $src not found, skipping"
  fi
}

# Load all CSV files
load_csv "accredited_escrow_agents" "Accredited_Escrow_Agents.csv"
load_csv "accredited_trainers" "Accredited_Trainers.csv"
load_csv "brokers_raw" "Brokers.csv"
load_csv "buildings" "Buildings.csv"
load_csv "developers" "Developers.csv"
load_csv "elders_people_determination" "Elders_And_People_Of_Determination_2025-02-01_11-40-42.csv"
load_csv "free_zone_companies_licensing" "Free_Zone_Companies_Licensing.csv"
load_csv "land_registry" "Land_Registry.csv"
load_csv "licenced_owner_associations" "Licenced_Owner_Associations.csv"
load_csv "map_requests" "Map_Requests.csv"
load_csv "oa_service_charges" "Oa_Service_Charges.csv"
load_csv "offices" "Offices.csv"
load_csv "projects" "Projects.csv"
load_csv "real_estate_licenses" "Real_Estate_Licenses.csv"
load_csv "real_estate_permits" "Real_Estate_Permits.csv"
load_csv "residential_sale_index" "Residential_Sale_Index.csv"
load_csv "transactions" "Transactions.csv"
load_csv "units" "Units.csv"
load_csv "valuation" "Valuation.csv"
load_csv "valuator_licensing" "Valuator_Licensing.csv"

echo "CSV loading completed!"
