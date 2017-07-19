#!/bin/bash

# Start Gunicorn processes
echo Running migrations...
exec python ./manage.py migrate
