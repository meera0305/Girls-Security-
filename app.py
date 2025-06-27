from flask import Flask, request
from datetime import datetime

app = Flask(__name__)

@app.route('/alert', methods=['POST'])
def alert():
    data = request.json
    name = data.get("name")
    location = data.get("location")
    time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    
    with open("alerts.txt", "a") as f:
        f.write(f"{time} - ALERT: {name} at {location}\n")

    return "🚨 Alert Sent Successfully!"

if __name__ == '__main__':
    app.run(debug=True)
