#!/bin/bash

# Start Gunicorn processes
echo Starting Gunicorn...
exec gunicorn docker.wsgi:application \
    --bind 0.0.0.0:80 \
    --workers 3
