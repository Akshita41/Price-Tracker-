#!/usr/bin/env bash
# exit on error
set -o errexit

# Install system dependencies required for pyzmq and other packages
apt-get update
apt-get install -y python3-dev build-essential

# Install Python dependencies
pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt

# Run Django migrations
python manage.py migrate
