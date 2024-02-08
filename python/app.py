import os.path
from flask import Flask, request

app = Flask(__name__)

@app.route("/file")
def return_file():
    filename = request.args.get('f')
    # BAD: This could read any file on the file system
    data = open(filename, 'rb').read()
    return data
