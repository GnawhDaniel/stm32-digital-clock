from flask import Flask, jsonify
from datetime import datetime
import pytz

app = Flask(__name__)

@app.route('/time', methods=['GET'])
def get_time():
    # Get current time in different formats
    now = datetime.now()
    
    return jsonify({
        'datetime': now.strftime('%Y-%m-%d %H:%M:%S'),
        'weekday': now.weekday()+1,
    })

@app.route('/time/utc', methods=['GET'])
def get_utc_time():
    # Get UTC time
    utc_now = datetime.now(pytz.UTC)
    
    return jsonify({
        'datetime': utc_now.strftime('%Y-%m-%d %H:%M:%S'),
        'timestamp': int(utc_now.timestamp()),
        'timezone': 'UTC'
    })

if __name__ == '__main__':
    # Run on all interfaces so ESP can access it
    app.run(host='0.0.0.0', port=5000, debug=True)
