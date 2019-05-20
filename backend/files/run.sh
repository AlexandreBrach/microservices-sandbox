#!/bin/bash

set -xe

python /opt/src/manage.py makemigrations
python /opt/src/manage.py migrate

if [ "$DJANGO_USE_WSGI" == "1" ] ; then
    echo "BACKEND RUN IN uWSGI MODE"
    uwsgi --http :80 \
        --processes $UWSGI_WORKER \
        --wsgi-file /opt/src/sandbox/wsgi.py
else
    echo "BACKEND RUN WITH DJANGO RUNSERVER COMMAND"
    python /opt/src/manage.py runserver 0.0.0.0:80
fi
