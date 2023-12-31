#!/usr/bin/env bash

# Useful only in development on local machine.
echo "- Start restore"
echo "NOTE: use this process only in development!!"

# Usermanager
echo "1. Restore fixtures for Usermanager"
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/usermanager/userprofile.json

# Standard Apps
echo "2. Restore fixtures for Django's standard apps"
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/sites.json
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/flatpages.json

# Core
echo "3. Restore fixtures for Core app"
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/core/sitecustomization.json

# Link
echo "4. Restore fixtures for Link app"
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/link/link.json

# Media
echo "5. Restore fixtures for Media app"
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/media/fileupload.json

# Sections
echo "6. Restore fixtures for Sections app"
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/sections/section.json
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/sections/sectionpost.json

# Open GeoData
echo "7. Restore fixtures for Open GeoData app"
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/opengeodata/categories.json
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/opengeodata/geoserverdomain.json
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/opengeodata/geoserverworkspace.json
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/opengeodata/ogclayer.json
poetry run python3 ../../../project/manage.py loaddata ../../../demo_data/fixtures/opengeodata/webgisproject.json

echo "End process"