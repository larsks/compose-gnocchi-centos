import os

from gnocchi.rest import app
application = app.build_wsgi_app()
