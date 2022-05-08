# Pruebas_E2E Grupo-21

## Integrantes:
- José Alexander Palacio Muñoz - j.palaciom@uniandes.edu.co
- Oscar Andrés Alba
- Diego Castro
- Diego Fernando Ramírez Rodríguez - df.ramirezr1@uniandes.edu.co

## Introducción.

Las pruebas E2E permiten validar combinaciones de casos de uso, debido a que las pruebas de reconocimiento no cuentan con la inteligencia suficiente para validar ni combinar los casos de usos. Por tal motivo, el siguiente tutorial pretende explicar el procedimiento para el desarrollo de pruebas E2E a partir de dos herramientas para el desarrollo de pruebas: cypress y kraken. Adicionalmente, se desean establecer los pro y contras que pueden tener estas herramientas para el desarrollo de pruebas. 

## Versiones de software usados.

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
