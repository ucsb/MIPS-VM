from flask import Flask, render_template, request

# Create an instance of the Flask class
app = Flask(__name__)

# Define a route and its corresponding handler function

@app.route('/',methods=['GET', 'POST'])
def index():
    return render_template('index.html')

@app.route('/get_register_data', methods=['GET'])
def get_register_data():
    data = [('$0', 0), ("$at", 0), ('$v0', 0), ('$v1',0),('$a0',0),('$a1',0),('$a2',0),('$a3',0),('$t0',0),('$t1',0),('$t2',0),('$t3',0),('$t4',0),('$t5',0),('$t6',0),('$t7',0)]
    
    # Render a template fragment with the updated data
    return render_template('table_fragment.html', data=data)

# Run the application
if __name__ == '__main__':
    app.run(port = 8080)