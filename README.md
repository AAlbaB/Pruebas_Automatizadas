# Pruebas_E2E Grupo-21

## Integrantes:
- José Alexander Palacio Muñoz - j.palaciom@uniandes.edu.co
- Oscar Andrés Alba Barragán - o.alba@uniandes.edu.co
- Diego Fernando Castro Plazas - df.castrop1@uniandes.edu.co
- Diego Fernando Ramírez Rodríguez - df.ramirezr1@uniandes.edu.co

## Introducción.

Las pruebas E2E permiten validar combinaciones de casos de uso, debido a que las pruebas de reconocimiento no cuentan con la inteligencia suficiente para validar ni combinar los casos de usos. Por tal motivo, el siguiente tutorial pretende explicar el procedimiento para el desarrollo de pruebas E2E a partir de dos herramientas para el desarrollo de pruebas: cypress y kraken. Adicionalmente, se desean establecer los pro y contras que pueden tener estas herramientas para el desarrollo de pruebas. 


## Funcionalidades

Para el desarrollo de las pruebas E2E es necesario establecer las funcionalidades con las que cuenta la aplicación, con el fin de construir los diversos escenarios que permitan establecer el correcto funcionamiento del sistema. En la tabla 1, se puede apreciar la construcción de algunas funcionalidades de la aplicación, las cuales serán aplicadas para la creación de diferentes escenarios.



Tabla 1. Funcionalidades de la aplicación 

| Funcionalidades            | Descripción                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Login                      | El administrador ingresa correo electrónico y contraseña de forma correcta                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Crear post                 | El administrador ubica en la lista del lado izquierdo de la página el ítem de "Posts". Luego crea un nuevo post con el botón "New post". Escribe el título del post en “Post title” y la descripción en “Begin writing your post…”. Posterior a llenar los campos, se activa el selector “Publish”, Selecciona “Select it live now” y pulsa el botón “Publish”. Aquí le aparecerá un mensaje emergente el cual establece si quiere publicar inmediatamente la publicación; se selecciona “Publish”. El “post” queda publicado. |
| Eliminar post              | En la lista de “Posts” de la página principal se escoge un post y se pulsa “PUBLISHED”. Se selecciona el botón “settings” en la parte superior derecha (ubíquese el puntero sobre este para establecer que es el botón “settings”). En el menú emergente se desplaza con el scroll a la parte inferior y pulsa “Delete post”. Aparecerá una ventana emergente. Seleccione “Delete” para eliminar el post.                                                                                                                      |
| Editar post                | En la lista de “Posts” de la página principal se escoge un post y se pulsa “PUBLISHED”. Se cambian los valores del titulo y de la descripción. Se pulsa en el selector “Update” en la parte superior de la pantalla. Se selecciona “Published” y se pulsa “Update”.                                                                                                                                                                                                                                                            |
| Logout                     | En la pantalla principal, en el menú izquierdo, diríjase a la parte inferior y seleccione el icono con la imagen de una persona. En el selector pulse “Sign out”.                                                                                                                                                                                                                                                                                                                                                              |
| Verificar post existente   | En la pantalla principal, en el menú izquierdo, pulse en “Published” y verifique en la lista el nombre de la publicación.                                                                                                                                                                                                                                                                                                                                                                                                      |
| Verificar post inexistente | En la pantalla principal, en el menú izquierdo, pulse en “Published” y verifique en la lista que no existe publicación con el nombre asignado.                                                                                                                                                                                                                                                                                                                                                                                 |


## Escenarios

Las funcionalidades descritas en la tabla 1, permiten crear un número determinado de escenarios a partir de su combinación. En la tabla 2, se pueden observar veinte escenarios diferentes. La primera columna corresponde al número de escenario (1,2, 3...), cuya secuencia se puede leer de izquierda a derecha de la tabla.  

Tabla 2. Escenarios de prueba
| #  | Fun 1 | Fun 2         | Fun 3         | Fun 4                        | Fun 5                        | Fun 6                        | Fun 7                        |
|----|-------|---------------|---------------|------------------------------|------------------------------|------------------------------|------------------------------|
| 1  | Login | Crear post    | Editar post   | Eliminar post                | Crear post                   | Logout                       | Verificar que post existe    |
| 2  | Login | Eliminar post | Logout        | Login                        | crear post                   | Logout                       | Verificar que post existe    |
| 3  | Login | Crear post    | Eliminar post | Crear post                   | Editar post                  | Logout                       | Verificar que post existe    |
| 4  | Login | Crear post    | Logout        | Login                        | editar post                  | Logout                       | Verificar que post existe    |
| 5  | Login | Crear post    | Logout        | Login                        | Eliminar post                | Logout                       | verificar que post no existe |
| 6  | Login | Editar post   | Logout        | Login                        | Eliminar post                | Logout                       | verificar que post no existe |
| 7  | Login | Eliminar post | Crear post    | Editar post                  | Logout                       | Verificar que el post existe |                              |
| 8  | Login | Eliminar post | Crear post    | Editar post                  | Logout                       | Verificar que post existe    |                              |
| 9  | Login | Crear post    | Eliminar post | Crear post                   | Logout                       | Verificar que post existe    |                              |
| 10 | Login | Crear post    | Logout        | Login                        | Logout                       | Verificar que post existe    |                              |
| 11 | Login | Crear post    | Editar post   | Eliminar post                | Logout                       | Verificar que post no existe |                              |
| 12 | Login | Crear post    | Editar post   | Logout                       | Verificar que post existe    |                              |                              |
| 13 | Login | Editar post   | Crear post    | Logout                       | Verificar que post existe    |                              |                              |
| 14 | Login | Eliminar post | Crear post    | Logout                       | Verificar que post existe    |                              |                              |
| 15 | Login | Editar post   | Eliminar post | Logout                       | Verificar que post existe    |                              |                              |
| 16 | Login | Crear post    | Eliminar post | Logout                       | Verificar que post no existe |                              |                              |
| 17 | Login | Editar post   | Eliminar post | Logout                       | verificar que post no existe |                              |                              |
| 18 | Login | Crear post    | Logout        | Verificar que post existe    |                              |                              |                              |
| 19 | Login | Editar post   | Logout        | Verificar que el post existe |                              |                              |                              |
| 20 | Login | Eliminar post | Logout        | verificar que post no existe |                              |                              |                              |

# Ejecución de las pruebas

## Pros y contras de las herramientas utilizadas
En la wiki de este proyecto puede encontrar los pros y contras de Kraken y Cypress. El enlace se encuetra a continuación:
https://github.com/AAlbaB/Pruebas_Automatizadas/wiki/Pros-y-Contras-de-las-herramientas-utilizadas


## Instrucciones para la ejecución de las Pruebas con Kraken

Para la ejecución de las pruebas en Kraken se deben tener los siguientes requisitos:
* Node.js actualizado en una versión estable.
* El manejador de paquetes NPM actualizado según la versión de Node.js
* Una herramienta de manejo de versiones Git
* Visual Studio Code
* Ejecutar los siguientes comandos para instalar Ghost:

```
docker pull ghost
docker run -d --name some-ghost ghost
```

y crear un usuario administrador. con las credenciales que se encuentran en el archivo properties.json del repositorio

### Configuración del ambiente para Kraken:

A continuación se detallan las instrucciones ofrecidas por The  Software Design Lab, quienes son los responsables del desarrollo de Kraken:

Para instalar la herramienta, abra una terminal e ingrese el siguiente comando:
`npm install kraken-node -g`

Esto iniciará el proceso de descarga de la herramienta Kraken a nivel global en la máquina y todas las dependencias que son necesarias para que este se ejecute de forma adecuada. Una vez termine, podrá ver múltiples mensajes en su terminal que le indican que se están instalando varias librerías.

Cuando el proceso finalice, podrá ver un mensaje que le indica que se ha terminado de instalar todas las dependencias, como el de la siguiente imagen:

![image](https://user-images.githubusercontent.com/98669202/167321497-677c6381-fe03-423c-b4b4-f77aba8e9ed1.png)

#### Clonación del repositorio

Primero se debe clonar el proyecto con los siguientes pasos

* Visitar la página prncipal del repositorio https://github.com/AAlbaB/Pruebas_Automatizadas
* Sobre la lista de archivos, dar clic en Código y copiar la url especificada
* Para descargar el código fuente del repositorio en su máquina utilizando Git, debe tener instalado el sistema manejador de versiones Git, (cuyos detalles y documentación podrá ver en la página oficial, en el siguiente enlace  https://git-scm.com/). 
* La instalación de Git le agrega a su máquina local las herramientas de línea de comandos y otras particularidades que pueden depender de la personalización de su instalación. Usted debió configurar las terminales que tienen acceso a Git. Ahora debe abrir una de ellas, como, por ejemplo, puede ser Git Bash
* Desde esta herramienta, ejecute el comando cd <path/del/directorio>, indicando la ruta absoluta de un directorio en el que usted desea que se descarguen los directorios con el código fuente. 
* Ahora que se encuentra en dicha ubicación, ejecute el comando
`git clone  https://github.com/AAlbaB/Pruebas_Automatizadas.git`
Esto descargará el contenido del repositorio en un directorio local en su máquina.

#### Creación del proyecto base
Una vez que haya terminado la instalación, ya podrá usar las herramientas de Kraken. Lo primero que debe hacer para comenzar a utilizarlas es crear un proyecto base. Para ello, desde la misma terminal, cree el directorio que dedicará al escenario de prueba de este tutorial, si no lo ha hecho, y ubíquese en él. Desde allí, ejecute el siguiente comando:
`kraken-node gen`

Este comando le mostrará un mensaje en la terminal que solicita su confirmación sobre el procedimiento. Presione la tecla Enter y luego podrá ver desde el explorador de archivos, que en su directorio se ha creado una carpeta llamada “features”, la cual contiene la estructura base del proyecto con el detalle de los archivos explicados en el paso anterior.

Consideraciones adicionales
Al momento de la ejecución de sus pruebas con Kraken, puede encontrarse con varios problemas. En primer lugar, como esta librería tiene dependencias internas, como lo son Appium y Cucumber, es necesario que ambas sean accesibles para su entorno de ejecución. Es posible que se encuentre con un error como el siguiente:
![image](https://user-images.githubusercontent.com/98669202/167321556-55941635-0af3-4dcc-9bf6-b5955e670a87.png)

Esto se debe a conflictos internos del manejo de librerías a nivel local y global por parte de npm. Para solucionar dicha situación, es necesario que, en el directorio que se generó con el `comando kraken-node gen`, usted instale de forma local la herramienta kraken-node. Es decir, en esta misma terminal, ejecute el siguiente comando:
`npm install kraken-node`

Luego de esto, debe ejecutar todos los comandos de kraken-node, indicando la ruta relativa de la librería que se instala en el directorio node_modules. Es decir, al momento de ejecutar la prueba, el comando debe ser:
`./node_modules/kraken-node/bin/kraken-node run`

De esta forma, se asegura que la librería tenga acceso local a sus dependencias de cucumber.

Otro posible error es que el comando appium no se reconozca a nivel del sistema operativo y, por ende, Kraken no lo pueda utilizar. Si esto le sucede, ejecute el siguiente comando para instalarlo:
`npm install -g appium`

### Ejecución de las pruebas

Puede ejecutar Visual Studio Code y ubicarse sobre la carpeta raiz del proyecto. 

Hecho esto puede abrir una terminal dando click en Terminal > New terminal

En la terminal debe ejecutar las pruebas con el comando 
`npx kraken-node run`

Sus pruebas deben comenzar a ejecutarse.


## Ejecución de pruebas con Cypress.

### Prerequisitos:

1. Tener docker instalado.
2. Tener instalado Node JS, NPM y Cypress de acuerdo a [la documentación oficial de Cypress] (https://docs.cypress.io/guides/getting-started/installing-cypress)

### Pruebas de la versión 4.47 de Ghost

3. Ejecutar los siguientes comandos para instalar Ghost en su versión latest (4.47):

```
docker pull ghost
docker run -d --name some-ghost ghost
```

Con esto, el servicio estará disponible en la URL: http://localhost:3001/


4. Crear un usuario administrador con las siguientes credenciales:

```
userName = 'hola@miso.com'
password = 'Misotest2022*'

```

5. Dentro de la carpeta del proyecto, ir al directorio cypress. Una vez ahí, ejecutar las pruebas para la versión 3.x de Ghost con el siguiente comando:

```
cypress run --headless --spec "cypress/integration/regression_test_v3*" 

```

6. Y para la versión 4.x de Ghost usar el siguiente comando

```
cypress run --headless --spec "cypress/integration/regression_test_v4*" 

```

### Pruebas de regresión.

El informe detallado de las pruebas de regresión puede ser consultado en https://github.com/AAlbaB/Pruebas_Automatizadas/wiki/Resultados-de-las-pruebas-de-regresi%C3%B3n-con-Cypress
