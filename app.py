from flask import Flask, request, jsonify
import os

app = Flask(__name__)

@app.route('/')
def show_headers():
    headers = dict(request.headers)
    return jsonify(headers)

app.config['JSONIFY_PRETTYPRINT_REGULAR'] = True
app.json.sort_keys = False

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 10000))
    app.run(host='0.0.0.0', port=port, debug=False)
