<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="https://i.ibb.co/b5cbJgq/logo-plebes.png" alt="Logo" width="160" height="160">
  </a>

  <h3 align="center">Desafio de programación URSS</h3>

  <p align="center">
    Desafio para práctica y diversión:)
    <br />
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## Acerca del desafio

El desafio consistirá en una aplicación (Ya sea móvil o web) de un mini juego con temática de Valorant. 

1. Al abrir la aplicación, el usuario podrá seleccionar en un dropbox/select algún agente (mínimo 3 agentes).

2. Luego, al darle clic a un botón "Jugar", se le abrirá una interfaz (Nueva página o en la misma) donde estarán los íconos de 5 agentes. Al darle clic a alguno será como "matarlo", por lo que ese enemigo desaparecerá y sonará el sonido de kill. Cada que vaya haciendo una kill, el sonido cambiará dependiendo de cuantas kills lleve (Como en el juego) Así hasta hacer el ACE y que no hayan enemigos.

3. Al hacer ACE se tiene que mostrar en pantalla el título "ACE".

4. Al matar a todos los enemigos, se tendrá que escuchar el diálogo del agente que haya seleccionado.

5. Al finalizar todo esto, se habilitará un botón de "volver a jugar" (El cual le permitirá al usuario jugar con el mismo agente) y otro boton de "Regresar al menu" donde lo regresará a la selección de agente.

Se evaluará:
* Estética visual (Diseño).
* Explicación de código.
* Limpieza y orden en el código.

Puntos extra:
1. Mientras más parecidos sean los tiempos de ejecución de los sonidos, mejor.
  * Que los sonidos de kill no se ejecuten al mismo tiempo si los enemigos mueren muy rápido. Lo ideal seria que se detuviera el sonido anterior y se reproduzca el nuevo (Como en el juego).
  * Como en el juego, el diálogo de ACE del agente se super pone sobre el sonido del ACE y no inicia al mismo momento que se hace la kill, se reproduce unos segundos después.
2.- Mostrar el ícono de muertes como en el juego (Se encuentran en archivos y ya sé que no son como en el juego, pero es lo que hay).

## Archivos anexados

En los "Archivos" de este repositorio, se encuentran:

* Íconos de agentes enemigos (A los que matarán dandoles clic).
* Diálogos de ACE de cada agente (Si falta alguno, omitan dicho agente para que no pierdan tiempo buscando).
* Sonidos de muerte.

## ADVERTENCIA

NO suban su proyecto a este repositorio. No hagan push, ni commits, ni nada por el estilo. Clonen este repositorio SOLO para que tengan los archivos anexados mencionados anteriormente

* Clonar repositorio
   ```sh
   git clone https://github.com/gloperena/DesafioPlebes.git
   ```
