from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/')
def show_headers():
    headers = dict(request.headers)
    return jsonify(headers)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=10000)
