from flask import Flask, jsonify
from prometheus_client import Counter, generate_latest
from prometheus_client import CONTENT_TYPE_LATEST

app = Flask(__name__)

REQUEST_COUNT = Counter(
    "app_requests_total",
    "Total number of application requests"
)


@app.route("/")
def home():
    REQUEST_COUNT.inc()

    return jsonify({
        "application": "Terraform AWS DevOps Demo",
        "message": "Application is running successfully!",
        "version": "v1"
    })


@app.route("/health")
def health():
    return jsonify({
        "status": "UP"
    })


@app.route("/metrics")
def metrics():
    return generate_latest(), 200, {
        "Content-Type": CONTENT_TYPE_LATEST
    }


if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=8080
    )