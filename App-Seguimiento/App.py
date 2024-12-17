#APLICACIÓN QUE MANEJA EL BACKEND Y CONEXIÓN FRONT/BBDD


#Herramientas utilizadas:
#Python 3.12
#Framework Flask; MySql; Pandas; Bytes10; werkzeug.security
#Son herramientas para gestionar sesiones, base de datos, redireccionamiento de url y enviar archivos

from flask import Flask, render_template, request, redirect, url_for, flash, send_file, session
from flask_mysqldb import MySQL
import pandas as pd
from io import BytesIO
from werkzeug.security import generate_password_hash, check_password_hash

#ingresar a Git (ícono de escritorio)
#ir a la carpeta pasantía:
#   cd /e/Pasantia

#inicializar git - para instalación-:
#   git init


#ESTO CREA UNA CARPETA .GIT 
#SI ALGO FALLA, SE RECOMIENDA BORRAR ESA CARPETA, BORRAR ALGÚN ARCHIVO INTERNO (CONFIG, POR EJEMPLO) 
#O EDITAR ALGÚN ARCHIVO: ENTRAR A CONFIG Y EDITARLO A MANO

#ver status
#   git status

#ingresar a Github con usuario y contraseña

#conectar Git-GitHub 
#   git config user.name "Alejandra-Sorrentino-1982"
#   git config user.email "maria.alejandra.sorren@gmail.com"
#   git remote add origin "https://github.com/Alejandra-Sorrentino-1982/App-Seguimiento.git"
#probablemente diga que ya este repositorio está agregado

#ver log (lo último que se hizo)
#  git log

# ver lo actualizado - los archivos ya creados se actualizan solos en Git
#  git diff

#los archivos nuevos hay que subirlos

#agregar 1 archivo
#  git add "NOMBRE DEL ARCHIVO"

#agregar todos los archivos
#  git add .

#git commit agrega de forma definitiva con un mensaje
#  git commit -m "ARCHIVO agregado"

#pushear a la rama principal de Github
#  git push -u origin master


#Conecto Xammp (para contectar gestor de BBDD - MySql)
#Abro PhpAdmin (donde está cargada la base de datos)

#ABRO LA TERMNAL:
# Ingreso a la carpeta del proyecto: "cd App-Seguimiento"

# Ejecuto:
# python3 App.py

#Entro al navegador y pongo:
# http://localhost:3000/

#ingresa por defecto en la página Index


#Funciones de cada parte del código:

#comprocabión e inicio del servidor:
app = Flask(__name__) 

#crea la conexión con MySQL:
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'Sorren1982'
app.config['MYSQL_PASSWORD'] = '$O4027Al***'
app.config['MYSQL_DB'] = 'appseguimiento'

# Inicializa conexión a MySQL
mysql = MySQL(app)

#iniciar sesión
app.secret_key ='mysecretkey'

#Rutas a los HTML -Frontend-:
# Usuarios Administradores/Editores de la plataforma


@app.route('/login', methods=['GET', 'POST'])  
def login():
    error = None  # Inicializamos la variable de error
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']    

        # Verificamos si los campos contienen la secuencia " or ""="
        if " or \"\"=\"" in username or " or \"\"=\"" in password:
            error = "Código no permitido"
        else:
            cur = mysql.connection.cursor()     
            cur.execute('SELECT * FROM login WHERE username = %s', (username,))
            login = cur.fetchone()
            cur.close() 

            if login:  # Verificamos que se haya encontrado un usuario
                # Verificamos la contraseña usando check_password_hash
                if check_password_hash(login[2], password):  # Suponiendo que 'password' es el tercer campo (índice 2)
                    session['username'] = login[1]  # Suponiendo que 'username' es el segundo campo (índice 1)
                    session['tipo'] = login[3]  # Suponiendo que 'tipo' es el cuarto campo (índice 3)
                    return render_template("index.html")
                else:
                    error = "Error. Usuario y/o contraseña inválido"
            else:
                error = "Error. Usuario y/o contraseña inválido"

    return render_template("login.html", error=error)  # Pasamos el mensaje de error a la plantilla


#index
@app.route('/')
def Index():
    return render_template('index.html')  


#Ruta a HTML - BBDD de Youtube
@app.route('/bbddyoutube', methods=['GET', 'POST'])
def bbddyoutube():
    cur = mysql.connection.cursor()
    
    # Si se envía un formulario de búsqueda
    if request.method == 'POST':
        search_query = request.form['search_query']
        cur.execute('SELECT * FROM abmyoutube WHERE dato3 LIKE %s', ('%' + search_query + '%',))
    else:
        cur.execute('SELECT * FROM abmyoutube')
    tablasql = cur.fetchall()  # Trae los registros
    return render_template('bbddyoutube.html', tablas=tablasql)


#agregar datos a la tabla - método post
#guarda los datos que vienen del index con método post
@app.route('/agregar', methods=['POST']) 
def Agregar():
  if request.method == 'POST':
     dato1 = request.form['dato1']
     dato2 = request.form['dato2']
     dato3 = request.form['dato3']
     dato4 = request.form['dato4']
     dato5 = request.form['dato5']
     dato6 = request.form['dato6']
     cur = mysql.connection.cursor()
     cur.execute('INSERT INTO abmyoutube (dato1, dato2, dato3, dato4, dato5, dato6) VALUES (%s, %s, %s, %s, %s, %s)', (dato1 , dato2, dato3, dato4, dato5, dato6)) 
     mysql.connection.commit()
     
     # Obtener el ID del registro insertado en abmyoutube
     id1 = cur.lastrowid
        
    # Insertar en otrosdatos utilizando el id1 como foreign key
     cur.execute('INSERT INTO otrosdatos (id1) VALUES (%s)', (id1,))
     
     mysql.connection.commit()
     
       # Verificar que el valor de AUTO_INCREMENT se haya incrementado correctamente
     cur.execute('SELECT LAST_INSERT_ID()')  # Obtener el último id insertado en otrosdatos
     id4 = cur.fetchone()[0]
     if id4 == 0:
        raise ValueError("Error: El valor de id4 no se ha incrementado correctamente.")
      
        
        
     flash('Datos agregados correctamente') #mensaje método flash
     return redirect (url_for('bbddyoutube'))  # Redirect to bbddyoutube


#función para el botón de "descargar excel"
@app.route('/descargar_excel')
def descargar_excel():
    try:
        cur = mysql.connection.cursor()
        cur.execute('SELECT * FROM abmyoutube')
        column_names = [i[0] for i in cur.description]
        tablasql = cur.fetchall()
        
        df = pd.DataFrame(tablasql, columns=column_names)
        
        output = BytesIO()
        with pd.ExcelWriter(output, engine='openpyxl') as writer:
            df.to_excel(writer, index=False, sheet_name='DatosYoutube')
        
        output.seek(0)
        return send_file(output, as_attachment=True, download_name='datosyoutube.xlsx', mimetype='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
    
    except Exception as e:
        return f"Ocurrió un error: {str(e)}", 500
    
    finally:
        cur.close()


#ruta a HTML - Modificar datos de la BBDD de Youtube
#trae los datos de la tabla según el id
@app.route('/modificar/<int:id1>')
def get_tabla(id1):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM abmyoutube WHERE id1 = %s', (id1,)) 
    tablasql = cur.fetchall() #trae toda la tabla
    return render_template('modificar.html', tablaeditar = tablasql[0]) #lleva la tabla a modificar.html y tablasql[0] es para que lleve una lista sola


#actualiza los datos de HTML Modificar y retorna a HTML BBDD Youtube
@app.route('/update/<id1>', methods=['POST'])  
def actualizar_tabla(id1):
 if request.method == 'POST':
     dato1 = request.form['dato1']
     dato2 = request.form['dato2']
     dato3 = request.form['dato3']
     dato4 = request.form['dato4']
     dato5 = request.form['dato5']
     dato6 = request.form['dato6']
     cur = mysql.connection.cursor()     
     cur.execute('UPDATE `abmyoutube` SET `dato1`= %s,`dato2`= %s,`dato3`= %s,`dato4`= %s ,`dato5`= %s ,`dato6`= %s WHERE id1= %s', (dato1, dato2, dato3, dato4, dato5, dato6, id1,))
     mysql.connection.commit() 
     flash('Datos actualizados correctamente')  # Flash message
     return redirect(url_for('bbddyoutube'))   # Redirect to bbddyoutube


#elimina los datos según el id
@app.route('/eliminar/<int:id1>')  #con string no me funcionó, lo elimino con el int:
def Eliminar(id1):
    cur = mysql.connection.cursor()
    
        # Eliminar registros en otrosdatos que referencian a id1
    cur.execute('DELETE FROM otrosdatos WHERE id1 = %s', (id1,))
    
    # Luego eliminar en abmyoutube
    cur.execute('DELETE FROM abmyoutube WHERE id1 = %s', (id1,))
    mysql.connection.commit()
    cur.close()  
    flash('Dato eliminado correctamente')  # Flash message
    return redirect(url_for('bbddyoutube'))  # Redirect to bbddyoutube


#Ruta a BBDD M3u8
#traer la tabla desde BBDD
@app.route('/bbddm3u8', methods=['GET', 'POST'])
def bbddm3u8():
    cur = mysql.connection.cursor()
    
    # Si se envía un formulario de búsqueda
    if request.method == 'POST':
        search_query = request.form['search_query']
        cur.execute('SELECT * FROM abmm3u8 WHERE dato3 LIKE %s', ('%' + search_query + '%',))
    else:
        cur.execute('SELECT * FROM abmm3u8')
    
    tablasql = cur.fetchall()  # Trae los registros
    return render_template('bbddm3u8.html', m3u8tablas=tablasql)



#agregar datos a la tabla - método post
#guarda los datos que vienen del index con método post
@app.route('/agregar2', methods=['POST']) 
def Agregar2():
  if request.method == 'POST':
     dato1 = request.form['dato1']
     dato2 = request.form['dato2']
     dato3 = request.form['dato3']
     dato4 = request.form['dato4']
     dato5 = request.form['dato5']
     dato6 = request.form['dato6']
     cur = mysql.connection.cursor()
     cur.execute('INSERT INTO abmm3u8 (dato1, dato2, dato3, dato4, dato5, dato6) VALUES (%s, %s, %s, %s, %s, %s)', (dato1 , dato2, dato3, dato4, dato5, dato6)) 
     mysql.connection.commit()
     
       # Obtener el ID del registro insertado en abmyoutube
     id2 = cur.lastrowid
        
    # Insertar en otrosdatos utilizando el id2 como foreign key
     cur.execute('INSERT INTO otrosdatos (id2) VALUES (%s)', (id2,))
     
           
     
     mysql.connection.commit()
     flash('Datos agregados correctamente') #mensaje método flash
     return redirect (url_for('bbddm3u8')) #retorna
 
 
 
@app.route('/descargar_excel2')
def descargar_excel2():
    try:
        cur = mysql.connection.cursor()
        cur.execute('SELECT * FROM abmm3u8')
        column_names = [i[0] for i in cur.description]
        tablasql2 = cur.fetchall()
        
        df = pd.DataFrame(tablasql2, columns=column_names)
        
        output = BytesIO()
        with pd.ExcelWriter(output, engine='openpyxl') as writer:
            df.to_excel(writer, index=False, sheet_name='DatosM3u8')
        
        output.seek(0)
        return send_file(output, as_attachment=True, download_name='datosm3u8.xlsx', mimetype='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
    
    except Exception as e:
        return f"Ocurrió un error: {str(e)}", 500
    
    finally:
        cur.close()
        


@app.route('/modificar2/<int:id2>')
def get_tabla2(id2):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM abmm3u8 WHERE id2 = %s', (id2,)) 
    tablasql = cur.fetchall() #trae toda la tabla
    return render_template('modificar2.html', m3u8tablaeditar = tablasql[0]) #lleva la tabla a modificar.html y tablasql[0] es para que lleve una lista sola


#del video original, tiene la modificación de no escribir la sentencia con triple comillas
@app.route('/update2/<id2>', methods=['POST'])  
def actualizar_tabla2(id2):
 if request.method == 'POST':
     dato1 = request.form['dato1']
     dato2 = request.form['dato2']
     dato3 = request.form['dato3']
     dato4 = request.form['dato4']
     dato5 = request.form['dato5']
     dato6 = request.form['dato6']
     cur = mysql.connection.cursor()     
     cur.execute('UPDATE `abmm3u8` SET `dato1`= %s,`dato2`= %s,`dato3`= %s,`dato4`= %s ,`dato5`= %s ,`dato6`= %s WHERE id2= %s', (dato1, dato2, dato3, dato4, dato5, dato6, id2,))
     mysql.connection.commit() 
     flash('Datos actualizados correctamente')  # Flash message
     return redirect(url_for('bbddm3u8'))  # Redirect 
 
 

@app.route('/eliminar2/<int:id2>') 
def Eliminar2(id2):
    cur = mysql.connection.cursor()
    
    # Eliminar registros en otrosdatos que referencian a id1
    cur.execute('DELETE FROM otrosdatos WHERE id2 = %s', (id2,))
    
    # Luego eliminar en abmm3u8
    cur.execute('DELETE FROM abmm3u8 WHERE id2 = %s', (id2,))
    
    mysql.connection.commit()
    cur.close()  
    flash('Dato eliminado correctamente')  # Flash message
    return redirect(url_for('bbddm3u8'))  # Redirect to index


#Ruta a BBDD Radios
@app.route('/bbddradios', methods=['GET', 'POST'])
def bbddradios():
    cur = mysql.connection.cursor()
    
    # Si se envía un formulario de búsqueda
    if request.method == 'POST':
        search_query = request.form['search_query']
        cur.execute('SELECT * FROM abmradios WHERE dato3 LIKE %s', ('%' + search_query + '%',))
    else:
        cur.execute('SELECT * FROM abmradios')
    
    tablasql = cur.fetchall()  # Trae los registros
    return render_template('bbddradios.html', radiostablas=tablasql)



@app.route('/agregar3', methods=['POST']) 
def Agregar3():
  if request.method == 'POST':
     dato1 = request.form['dato1']
     dato2 = request.form['dato2']
     dato3 = request.form['dato3']
     dato4 = request.form['dato4']
     dato5 = request.form['dato5']
     dato6 = request.form['dato6']
     cur = mysql.connection.cursor()
     cur.execute('INSERT INTO abmradios (dato1, dato2, dato3, dato4, dato5, dato6) VALUES (%s, %s, %s, %s, %s, %s)', (dato1 , dato2, dato3, dato4, dato5, dato6)) 
     mysql.connection.commit()
     
     id3 = cur.lastrowid
        
    # Insertar en otrosdatos utilizando el id3 como foreign key
     cur.execute('INSERT INTO otrosdatos (id3) VALUES (%s)', (id3,))
     
     mysql.connection.commit()
     
         
     
     flash('Datos agregados correctamente') #mensaje método flash
     return redirect (url_for('bbddradios')) #retorna
 
 
 
@app.route('/descargar_excel3')
def descargar_excel3():
    try:
        cur = mysql.connection.cursor()
        cur.execute('SELECT * FROM abmradios')
        column_names = [i[0] for i in cur.description]
        tablasql2 = cur.fetchall()
        
        df = pd.DataFrame(tablasql2, columns=column_names)
        
        output = BytesIO()
        with pd.ExcelWriter(output, engine='openpyxl') as writer:
            df.to_excel(writer, index=False, sheet_name='Datosradios')
        
        output.seek(0)
        return send_file(output, as_attachment=True, download_name='datosradios.xlsx', mimetype='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
    
    except Exception as e:
        return f"Ocurrió un error: {str(e)}", 500
    
    finally:
        cur.close()
        


@app.route('/modificar3/<int:id3>')
def get_tabla3(id3):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM abmradios WHERE id3 = %s', (id3,)) 
    tablasql = cur.fetchall() #trae toda la tabla
    return render_template('modificar3.html', radiostablaeditar = tablasql[0]) #lleva la tabla a modificar.html y tablasql[0] es para que lleve una lista sola



@app.route('/update3/<id3>', methods=['POST'])  
def actualizar_tabla3(id3):
 if request.method == 'POST':
     dato1 = request.form['dato1']
     dato2 = request.form['dato2']
     dato3 = request.form['dato3']
     dato4 = request.form['dato4']
     dato5 = request.form['dato5']
     dato6 = request.form['dato6']
     cur = mysql.connection.cursor()     
     cur.execute('UPDATE `abmradios` SET `dato1`= %s,`dato2`= %s,`dato3`= %s,`dato4`= %s ,`dato5`= %s ,`dato6`= %s WHERE id3= %s', (dato1, dato2, dato3, dato4, dato5, dato6, id3,))
     mysql.connection.commit() 
     flash('Datos actualizados correctamente')  # Flash message
     return redirect(url_for('bbddradios'))  # Redirect 
 
 

@app.route('/eliminar3/<int:id3>')  
def Eliminar3(id3):
    cur = mysql.connection.cursor()
    
      # Eliminar registros en otrosdatos que referencian a id1
    cur.execute('DELETE FROM otrosdatos WHERE id3 = %s', (id3,))
    
    # Luego eliminar en abmradios
   
    cur.execute('DELETE FROM abmradios WHERE id3 = %s', (id3,))
    
    
    mysql.connection.commit()
    cur.close()  
    flash('Dato eliminado correctamente')  # Flash message
    return redirect(url_for('bbddradios'))  # Redirect to index



#Mensajes de usuario
#trae los mensajes que los usuarios finales envían desde la plataforma
@app.route('/mensajes')
def Mensajes():
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM mensajesusuario') #pido la tabla desde sql
    tablamensajes = cur.fetchall() #trae toda la tabla
    return render_template('mensajes.html', mensajes = tablamensajes) #render template: esto tiene que retornar la página index, la carpeta template ya la tiene preconfigurada



@app.route('/eliminar9/<int:id>')  
def Eliminar9(id):
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM mensajesusuario WHERE id = %s', (id,))
    mysql.connection.commit()
    cur.close()  
    flash('Dato eliminado correctamente')  # Flash message
    return redirect(url_for('Mensajes'))  # Redirect 




#ABM Usuarios - manejo de los datos de los usuarios administradores/editores
@app.route('/usuarios')
def usuarios():
    cur = mysql.connection.cursor()
    
    # Obtén el tipo de usuario de la sesión
    tipo_usuario = session.get('tipo')

    if tipo_usuario == 'Administrador':
        cur.execute('SELECT * FROM login')  # Obtener todos los usuarios
        tablasql = cur.fetchall()  # Trae toda la tabla
        return render_template('usuarios.html', usuarios=tablasql, es_admin=True)

    elif tipo_usuario == 'Editor':
        username = session.get('username')
        cur.execute('SELECT * FROM login WHERE username = %s', (username,))
        tablasql = cur.fetchall()  # Trae solo el usuario
        return render_template('usuarios.html', usuarios=tablasql, es_admin=False)

    else:
        # Manejar el caso de un usuario no autenticado o de tipo desconocido
        flash('Acceso no autorizado.')
        return redirect(url_for('login'))
    
    

@app.route('/agregar4', methods=['POST'])  # guarda los datos que vienen del index con método post
def Agregar4():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        tipo = request.form['tipo']

        # Encriptamos la contraseña antes de almacenarla
        hashed_password = generate_password_hash(password)

        cur = mysql.connection.cursor()
        cur.execute('INSERT INTO login (username, password, tipo) VALUES (%s, %s, %s)', (username, hashed_password, tipo)) 
        mysql.connection.commit()
        flash('Usuario agregado correctamente')  # mensaje método flash
        return redirect(url_for('usuarios'))  # retorna



 
 
 
@app.route('/descargar_excel4')
def descargar_excel4():
    try:
        cur = mysql.connection.cursor()
        cur.execute('SELECT * FROM login')
        column_names = [i[0] for i in cur.description]
        tablasql2 = cur.fetchall()
        
        df = pd.DataFrame(tablasql2, columns=column_names)
        
        output = BytesIO()
        with pd.ExcelWriter(output, engine='openpyxl') as writer:
            df.to_excel(writer, index=False, sheet_name='DatosUsuarios')
        
        output.seek(0)
        return send_file(output, as_attachment=True, download_name='datosusuarios.xlsx', mimetype='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
    
    except Exception as e:
        return f"Ocurrió un error: {str(e)}", 500
    
    finally:
        cur.close()
        


@app.route('/modificar4/<int:id>')
def get_tabla4(id):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM login WHERE id = %s', (id,)) 
    tablasql = cur.fetchall() #trae toda la tabla
    return render_template('modificar4.html', editarusuario = tablasql[0]) #lleva la tabla a modificar.html y tablasql[0] es para que lleve una lista sola


@app.route('/update4/<id>', methods=['POST'])  
def actualizar_tabla4(id):
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        tipo = request.form['tipo']

        # Encriptamos la nueva contraseña antes de actualizarla
        hashed_password = generate_password_hash(password)

        cur = mysql.connection.cursor()     
        cur.execute('UPDATE `login` SET `username`= %s, `password`= %s, `tipo`= %s WHERE id= %s', (username, hashed_password, tipo, id,))
        mysql.connection.commit() 
        flash('Datos de usuario actualizados correctamente')  # Flash message
        return redirect(url_for('usuarios'))  # Redirect




@app.route('/eliminar4/<int:id>')  
def Eliminar4(id):
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM login WHERE id = %s', (id,))
    mysql.connection.commit()
    cur.close()  
    flash('Usuario eliminado correctamente')  # Flash message
    return redirect(url_for('usuarios'))  # Redirect to index




#logout - salir del sistema
@app.route('/logout')
def logout():
    return render_template('logout.html') 


#Rutas a los HTML -Frontend-:
# Usuarios Finales - plataforma accesible para todos los internautas-


#inicio app
@app.route('/inicio')
def inicio():
    return render_template('inicio.html') 


#youtube 2 pantallas
@app.route('/youtube')
def dropdown():
    cur = mysql.connection.cursor()
    cur.execute('SELECT dato4, dato3 FROM abmyoutube')  # Ajusta la consulta según sea necesario
    dropdown_2 = cur.fetchall()  # Trae solo los datos que necesitas
    return render_template('youtube.html', options=dropdown_2)


#youtube 6 pantallas
@app.route('/youtube6')
def dropdown2():
    cur = mysql.connection.cursor()
    cur.execute('SELECT dato4, dato3 FROM abmyoutube')  # Ajusta la consulta según sea necesario
    dropdown_data = cur.fetchall()  # Trae solo los datos que necesitas
    return render_template('youtube6.html', options=dropdown_data)


#m3u8 2 pantallas
@app.route('/m3u8')
def xm3u8():
    cur = mysql.connection.cursor()
    cur.execute('SELECT dato4, dato3 FROM abmm3u8')  # Ajusta la consulta según sea necesario
    dropdown_m3u8 = cur.fetchall()  # Trae solo los datos que necesitas
    return render_template('m3u8.html', options=dropdown_m3u8)
    

#m3u8 6 pantallas
@app.route('/m3u86')
def m3u86():
    cur = mysql.connection.cursor()
    cur.execute('SELECT dato4, dato3 FROM abmm3u8')  # Ajusta la consulta según sea necesario
    dropdown_m3u86 = cur.fetchall()  # Trae solo los datos que necesitas
    return render_template('m3u86.html', options=dropdown_m3u86)


#mix 6 pantallas
@app.route('/mix')
def mix1():
    cur = mysql.connection.cursor()
    cur.execute('SELECT dato4, dato3 FROM abmyoutube')  # Ajusta la consulta según sea necesario
    dropdown_mix1 = cur.fetchall()  # Trae solo los datos que necesitas
    cur2 = mysql.connection.cursor()
    cur2.execute('SELECT dato4, dato3 FROM abmm3u8')  # Ajusta la consulta según sea necesario
    dropdown_mix2= cur2.fetchall()  # Trae solo los datos que necesitas
    return render_template('mix.html', options=dropdown_mix1, moptions=dropdown_mix2)    
    

#radios 6 reproductores
@app.route('/radios')
def dropdownradios():
    cur = mysql.connection.cursor()
    cur.execute('SELECT dato4, dato1, dato3 FROM abmradios')  # Ajusta la consulta según sea necesario
    dropdown_data = cur.fetchall()  # Trae solo los datos que necesitas
    return render_template('radios.html', options=dropdown_data)

    

#mobile Youtube   
@app.route('/myoutube')
def myoutube():
    cur = mysql.connection.cursor()
    cur.execute('SELECT dato4, dato5 FROM abmyoutube')  
    dropdown_tupla = cur.fetchall()  # Esto devuelve una lista de tuplas
    return render_template('myoutube.html', options=dropdown_tupla)


#mobile M3u8
@app.route('/mm3u8')
def mm3u8():
    cur = mysql.connection.cursor()
    cur.execute('SELECT dato4, dato5 FROM abmm3u8')  
    dropdown_tupla = cur.fetchall()  # Esto devuelve una lista de tuplas
    return render_template('mm3u8.html', options=dropdown_tupla)


#mobile Radios
@app.route('/mradios')
def radios():
    cur = mysql.connection.cursor()
    cur.execute('SELECT dato4, dato1, dato5, dato3 FROM abmradios')  
    dropdown_tupla = cur.fetchall()  # Esto devuelve una lista de tuplas
    return render_template('mradios.html', datos=dropdown_tupla)


#links
@app.route('/links')
def links():
    cur = mysql.connection.cursor()
    # Obtener datos de YouTube
    cur.execute('SELECT dato5, dato6 FROM abmyoutube')  
    youtubes = cur.fetchall()
    # Obtener datos de m3u8
    cur.execute('SELECT dato5, dato6 FROM abmm3u8')  
    m3u8s = cur.fetchall()
    # Obtener datos de radios
    cur.execute('SELECT dato5, dato6 FROM abmradios')  
    radios = cur.fetchall()
    return render_template('links.html', youtubes=youtubes, m3u8s=m3u8s, radios=radios)

    
 #nosotros 
@app.route('/nosotros')
def nosotros():
    return render_template('nosotros.html')  
    

#enviar mensaje a los usuarios administradores
@app.route('/agregarmensaje', methods=['POST']) #guarda los datos 
def Recibirmensaje():
  if request.method == 'POST':
     dato1 = request.form['dato1']
     dato2 = request.form['dato2']
     dato3 = request.form['dato3']
     cur = mysql.connection.cursor()
     cur.execute('INSERT INTO mensajesusuario (dato1, dato2, dato3) VALUES (%s, %s, %s)', (dato1 , dato2, dato3)) 
     mysql.connection.commit()
     flash('Gracias por su mensaje') #mensaje método flash
     return redirect (url_for('nosotros'))
 
 

# Ruta a Otros Datos
@app.route('/otrosdatos', methods=['GET', 'POST'])
def otrosdatos():
    cur = mysql.connection.cursor()
    
    # Si se envía un formulario de búsqueda
    if request.method == 'POST':
        search_query = request.form['search_query']
        cur.execute('''
            SELECT 
                otrosdatos.*, 
                abmyoutube.dato3 AS dato3_abmyoutube, 
                abmm3u8.dato3 AS dato3_abmm3u8, 
                abmradios.dato3 AS dato3_abmradios
            FROM 
                otrosdatos
            LEFT JOIN 
                abmyoutube ON otrosdatos.id1 = abmyoutube.id1
            LEFT JOIN 
                abmm3u8 ON otrosdatos.id2 = abmm3u8.id2
            LEFT JOIN 
                abmradios ON otrosdatos.id3 = abmradios.id3
            WHERE 
                abmyoutube.dato3 LIKE %s OR 
                abmm3u8.dato3 LIKE %s OR 
                abmradios.dato3 LIKE %s;''', 
            ('%' + search_query + '%', '%' + search_query + '%', '%' + search_query + '%'))

        # Trae los registros de la búsqueda
        tablasql = cur.fetchall()  
        return render_template('otrosdatos.html', otrosdatos=tablasql)

    # Para la solicitud de un dato de la tabla
    else:
        cur.execute('''
            SELECT 
                otrosdatos.*, 
                abmyoutube.dato3 AS dato3_abmyoutube, 
                abmm3u8.dato3 AS dato3_abmm3u8, 
                abmradios.dato3 AS dato3_abmradios
            FROM 
                otrosdatos
            LEFT JOIN 
                abmyoutube ON otrosdatos.id1 = abmyoutube.id1
            LEFT JOIN 
                abmm3u8 ON otrosdatos.id2 = abmm3u8.id2
            LEFT JOIN 
                abmradios ON otrosdatos.id3 = abmradios.id3;''')

        tablasql = cur.fetchall()  # Trae los registros
        
        return render_template('otrosdatos.html', otrosdatos=tablasql)



    
#modificar los datos
@app.route('/otrosdatosmodificar/<int:id4>')
def get_tabla5(id4):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM otrosdatos WHERE id4 = %s', (id4,)) 
    tablasql = cur.fetchall() #trae toda la tabla
    return render_template('otrosdatosmodificar.html', modificardatos = tablasql[0]) #lleva la tabla a modificar.html y tablasql[0] es para que lleve una lista sola



@app.route('/update5/<int:id4>', methods=['POST'])  
def actualizar_tabla5pyth(id4):
    if request.method == 'POST':
        Pais = request.form['Pais']
        Contenido = request.form['Contenido']
        TipoTransmision = request.form['TipoTransmision']
        LinkAlternativo = request.form['LinkAlternativo']
        
        cur = mysql.connection.cursor()     
        cur.execute('UPDATE `otrosdatos` SET `Pais`= %s, `Contenido`= %s, `TipoTransmision`= %s, `LinkAlternativo`= %s WHERE id4= %s', 
                   (Pais, Contenido, TipoTransmision, LinkAlternativo, id4))
        mysql.connection.commit() 
        flash('Datos actualizados correctamente')
        return redirect(url_for('otrosdatos'))  

 
 
 
@app.route('/graficos')
def graficos():
    cur = mysql.connection.cursor()
    
    # Contar países cargados
    cur.execute('SELECT COUNT(DISTINCT Pais) FROM otrosdatos')
    num_paises = cur.fetchone()[0]

    # Contar contenidos cargados
    cur.execute('SELECT COUNT(DISTINCT Contenido) FROM otrosdatos')
    num_contenidos = cur.fetchone()[0]

    # Contar tipos de transmisión cargados
    cur.execute('SELECT COUNT(DISTINCT TipoTransmision) FROM otrosdatos')
    num_tipotransmision = cur.fetchone()[0]

    # Obtener datos para gráficos
    cur.execute('SELECT Pais, COUNT(*) FROM otrosdatos GROUP BY Pais')
    paises_data = cur.fetchall()

    cur.execute('SELECT Contenido, COUNT(*) FROM otrosdatos GROUP BY Contenido')
    contenidos_data = cur.fetchall()

    cur.execute('SELECT TipoTransmision, COUNT(*) FROM otrosdatos GROUP BY TipoTransmision')
    tipos_data = cur.fetchall()

    return render_template('graficos.html', num_paises=num_paises, num_contenidos=num_contenidos,
                           num_tipotransmision=num_tipotransmision, paises_data=paises_data,
                           contenidos_data=contenidos_data, tipos_data=tipos_data)



 

 #cierre de aplicación para su funcionamiento: debug y puerto 3000         
if __name__ == '__main__':
    app.run(port=3000, debug=True)
