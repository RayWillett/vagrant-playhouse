from flask import Flask

app = Flask(__name__)

@app.route('/')
def serve_root():
    return "hello world"
    
@app.route('/api', methods=['POST'])
def server_api():
    content = request.get_json(silent=True)
    return str(content)
  
if __name__ == "__main__":
    app.run(host="0.0.0.0")