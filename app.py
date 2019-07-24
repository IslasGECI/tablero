from flask import Flask, jsonify, render_template, request
from tablero.Dashboard import get_dashboard
app = Flask(__name__)

@app.route('/')
def index():
    return render_template("index.html", tablero=get_dashboard())

@app.route('/api/v1/record', methods=['POST'])
def add_new_record():
    datafile = 'data/testmake.log.csv'
    fin_linea = '\n'
    with open(datafile, 'a') as archivo:
        for indice, llave in enumerate(sorted(request.args.keys())):
            archivo.write(f"{request.args[llave]}{',' if indice+1 < len(request.args) else fin_linea}")
    return jsonify(request.args)

if __name__ == "__main__":
    tablero=get_dashboard()
    app.run(debug=True)
