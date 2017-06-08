import os
from app import app

@app.route('/')
@app.route('/index')
def index():
    return ("Hello, World! {}".format(os.environ['HOSTNAME']))
