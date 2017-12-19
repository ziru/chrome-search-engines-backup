#!/bin/bash

CHROME_DATA_PATH="${HOME}/Library/Application Support/Google/Chrome/Default"
SEARCH_ENGINE_DB="${CHROME_DATA_PATH}/Web Data"

OUTPUT_FILE=./data/keywords.sql

echo "[INFO] Backup existent keywords table into: ${OUTPUT_FILE}"
sqlite3 "${SEARCH_ENGINE_DB}" ".dump keywords" > ${OUTPUT_FILE}
