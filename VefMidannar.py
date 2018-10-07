from bottle import *
import urllib.request, json
from sys import argv

with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())


@route('/Myndir,css/<filename>')
def server_static(filename):
    return static_file(filename, root="./Myndir,css")


@route("/")
def index():
    return template("sida1.tpl",data=data)

@route("/sida2/<name>")
def company(name):
    return template("sida2.tpl",data=data,name=name)

@error(404)
def error404(error):
    return '404 Villa. Prófa aftur.'


run(host="0.0.0.0", port=argv[1])
