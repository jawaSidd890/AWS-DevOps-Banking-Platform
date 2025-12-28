from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({"status": "Banking App Running"})

@app.route("/balance")
def balance():
    return jsonify({"account": "12345", "balance": 5000})

@app.route("/transactions")
def transactions():
    return jsonify(["+1000", "-500", "+200"])

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
