#!/bin/sh

exec gunicorn --bind=0.0.0:8081 start:app
