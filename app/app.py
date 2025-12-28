from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({
        "service": "AWS DevOps Banking Platform",
        "status": "running"
    })

@app.route("/health")
def health():
    return jsonify({"status": "UP"})

@app.route("/balance")
def balance():
    return jsonify({
        "account": "123456789",
        "balance": 125000,
        "currency": "INR"
    })

if __n

