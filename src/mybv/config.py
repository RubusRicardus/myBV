"""Configuration for the myBV project."""

import pathlib

PKG_NAME = "mybv"

# project root directory
PROJ_ROOT = pathlib.Path(__file__).resolve().parents[2]

# data directory
DATA_DIR = PROJ_ROOT / "data"
if not DATA_DIR.is_dir():
    DATA_DIR.mkdir(parents=True, exist_ok=True)

# source code directory
SOURCE_DIR = PROJ_ROOT / "src" / PKG_NAME
SCHEMA_FILE = SOURCE_DIR / "schema.json"
