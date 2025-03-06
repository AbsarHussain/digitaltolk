from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/currenttime', methods=['GET'])
def currenttime():
    current_datetime = datetime.now()
    print(datetime)
    date = f""" Date is : {current_datetime.strftime('%d-%m-%Y')} \n
    time is : {current_datetime.strftime('%H:%M:%S')} """
    return date

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=80, debug=True)

