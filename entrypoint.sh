#!/bin/bash
python manage.py collectstatic
gunicorn -c gunicorn_config.py Google_yelp_Proyect.wsgi:application --bind 0.0.0.0:8000
