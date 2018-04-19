#!/bin/bash
set -e

python manage.py migrate
sh create_admin_user.sh
python manage.py runserver 0.0.0.0:8000
