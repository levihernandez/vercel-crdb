import os
from sqlalchemy import create_engine, text
from flask import Flask, render_template
import jsonify
import jinja2
import json

app = Flask(__name__)

engine = create_engine(os.environ["DATABASE_URL"])
# engine = create_engine(
#    "cockroachdb://{user}:{password}@{serverless-url}.cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full")
conn = engine.connect()

data = conn.execute(text("SELECT * FROM defaultdb.users")).fetchall()
app = Flask(__name__, template_folder='template')


@app.route('/')
def home():
    # jsn = jsonify({'result': [dict(row) for row in res]})
    return render_template('users.html', data=data)
    # return 'Home Page Route'


@app.route('/api')
def api():
    with open('data.json', mode='r') as users:
        u = json.load(users)
    return render_template('api.html', data=json.dumps(u, indent = 4, sort_keys=True))
