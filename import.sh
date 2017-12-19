#!/bin/bash

CHROME_DATA_PATH="${HOME}/Library/Application Support/Google/Chrome/Default"
SEARCH_ENGINE_DB="${CHROME_DATA_PATH}/Web Data"

INPUT_FILE=./data/keywords.sql

echo "[INFO] Drop existent keywords table if any"
sqlite3 "${SEARCH_ENGINE_DB}" "DROP TABLE keywords"

echo "[INFO] Import custom search engine entries into Chrome Web Data database"
sqlite3 "${SEARCH_ENGINE_DB}" ".read ${INPUT_FILE}"
