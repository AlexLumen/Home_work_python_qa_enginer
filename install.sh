#!/bin/bash
"""
FILE=venv/

if [ ! -d #$FILE ]; then
    python -m venv venv
fi

source venv/bin/activate &&
pip install -U pip && pip install -r requirements.txt
"""
docker build -t tests .

docker run tests --url ${APP_URL} --executor ${EXECUTOR} --browser ${BROWSER} --alluredir allure-results

docker system prune -f