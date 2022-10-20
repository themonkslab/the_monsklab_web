import 'package:the_monkslab_web/src/constants/_index.dart';

final dart = AppCourse(
  id: 1,
  title: 'Introducción a la programación y TDD con Dart',
  authors: [
    const AppAuthor(name: 'Mau Di Bert', picture: ''),
    const AppAuthor(name: 'Tin Smith', picture: ''),
  ],
  description:
      'Un curso que enseñe desde fin a principio, que instale buenas prácticas desde el primer código',
  materialsAuthor: 'Mauro Di Bert and Martin Smith',
  content: [
    CourseSection(id: 0, title: 'Introducción', chapters: [
      CourseChapter(
        id: 0,
        title: 'La verdadera intro',
        description:
            'Acá te contamos qué podés esperar del curso y qué nosotros esperamos de ustedes',
        author: const AppAuthor(name: 'Mau Di Bert', picture: ''),
        published: DateTime.now(),
        readingTime: '1 minuto',
        content: '''
# La verdadera intro

@Mau Di Bert

Creemos que si estás acá, es porque estás interesado o interesada en volverte un/a profesional al nivel requerido para trabajar en Estados Unidos y Europa.

Para ello, preparamos un camino de aprendizaje pensado de atrás hacia adelante: __vas a aprender a testear como primer paso__, de manera que escribir código de alta calidad sea una extensión de tu cuerpo y puedas __destinar tiempo a lo más divertido, crear__.

## Comunidad

Antes de que sigas, [sumate a nuestra comunidad gratuita en Discord](), donde vas a encontrar un grupo hermoso de personas apasionadas por aprender y crecer en este mundo.

Ahí vas a poder presentarte, hacer preguntas, aprender mientras ayudás a otros y a otras a resolver las suyas y divertirte con personas como vos, apasionadas por aprender y compartir este apasionante mundo!

## Algunas recomendaciones

No tengas miedo en __tomarte el tiempo que sea necesario para entender__: mejor lento pero seguro. Volvé a lecciones pasadas, repetí los ejercicios y tratá de aprender como si fueras a enseñarlo.

No copies y pegues __el código__ sino __escribilo vos mismo o misma.__ Es impresionante lo que sucede cuando para escribirlo tenemos que entenderlo.

Tratá de __leer todo desde el comienzo y tranquilamente__: artículos, código, mensajes de error. Traducí lo que no entiendas si está en inglés.

Además, vas a encontrar muchos términos en _inglés_ en cursiva aquí mismo: recomendamos que organices __tu propio glosario de estos términos__ que te va a ayudar a fijar estos conceptos.

Vas a notar, que mucha parte del tiempo, no ahondamos en ciertos conceptos o explicaciones pero quedate tranquilo que eso llegará más adelante. Lo hacemos para que puedas avanzar, aprendiendo lo suficiente para crear y no frustrarte!

__Vas a aprender haciendo__ así que tratá de hacer los ejercicios alternativos propuestos e inventar nuevos y compartirlos luego con otrxs en nuestro Discord.

## Respondiendo a tus preguntas

Si hay algo que no entendés, seguí [esta guía]() para tratar de responderte vos mismx en primer lugar (una habilidad que todo programador debe dominar) y sino lo lográs, buscar respuestas de forma respetuosa e inteligente para con el tiempo de los otros y otras.
''',
      ),
      CourseChapter(
        id: 1,
        title: 'Introducción a Dart',
        description:
            'Acá te contamos qué podés esperar del curso y qué nosotros esperamos de ustedes',
        author: const AppAuthor(name: 'Tin Smith', picture: ''),
        published: DateTime.now(),
        readingTime: '1 minuto',
        content: '''
# Introducción a Dart

@Tin Smith

''',
      ),
      CourseChapter(
        id: 2,
        title: 'Introducción a DartPad',
        description:
            'Acá te contamos qué podés esperar del curso y qué nosotros esperamos de ustedes',
        author: const AppAuthor(name: 'Mau Di Bert', picture: ''),
        published: DateTime.now(),
        readingTime: '1 minuto',
        content: '''
# Introducción a Dartpad

@Mau Di Bert

Dart viene con una herramienta para rápidamente escribir código Dart online y ver el _output_ (la salida, lo que se ve), de dicho código. Esa herramienta se llama [Dartpad](https://dartpad.dev) y es totalmente gratuita. Lo vamos a utilizar para las primeras partes de este curso.

![Dartpad basics](https://raw.githubusercontent.com/themonkslab/courses/main/dart/assets/1.4.1_dartpad_basics.png)

![Dartpad basics errors and rest](https://raw.githubusercontent.com/themonkslab/courses/main/dart/assets/1.4.2_dartpad_basics_errors_and_rest.png)

''',
      ),
    ]),
    CourseSection(id: 1, title: 'Dart Básico', chapters: [
      CourseChapter(
        id: 0,
        title: 'Dart básico',
        description:
            'Esta sección es para incluso quienes jamás vieron una línea de código',
        author: const AppAuthor(name: 'Mau Di Bert', picture: ''),
        published: DateTime.now(),
        readingTime: '1 minuto',
        content: '''
# Dart básico

@Mau Di Bert

Esta sección es para incluso quienes jamás vieron una línea de código. Vamos a ver:

- variables y tipos básicos
- declaración, inicialización y asignación
- strings y tipos numéricos
- operadores

Al final, vas a poder escribir programas simples en Dart!
''',
      ),
      CourseChapter(
        id: 1,
        title: 'El método main',
        description: '',
        author: const AppAuthor(name: 'Mau Di Bert', picture: ''),
        published: DateTime.now(),
        readingTime: '1 minuto',
        content: '''
# El método main

@Mau Di Bert

Un programa de Dart es válido solamente si contiene un método main. Sino, prueben borrar todo y ver lo que aparece en consola. Probaron? 😒 ... 😏 ... 🧐:

![Método main no encontrado](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.dart_basico/2.2.1_metodo_main_no_encontrado.png)

El método main es __también llamado _entry point_ o punto de entrada__ de nuestro programa y es el que va a recibir todo nuestro código.

Prueben ahora crearlo de la siguiente manera agregando las siguientes líneas de código:

``` dart
void main() {

}
```

Ah! Y qué es ese bloque de texto que aparece con colores? En lugar ahora de mostrarles una imagen, les mostramos este __bloque de código__: pueden copiarlo y pegarlo fácilmente aunque ya saben que eso no les va a enseñar nada 🥸: para aprender tienen que escribir ustedes mismos cada letra de cada código. Sin embargo, les queríamos mostrar esto porque a futuro, si ustedes suben código para que alguien más lo vea, por ejemplo en algún ejercicio o en su trabajo, es recomendable hacerlo así para que quien pruebe su código, pueda correrlo fácilmente solo mediante copiar y pegar. Sino, imagínense que quien quiera ayudarlos tiene que copiar miles de líneas además de encontrar cómo darles una mano! 🤣

![Método main escrito, no más problemas!](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.dart_basico/2.2.2_main_sin_problemas.png
)

## TDD o nuestra forma particular de enseñarnos

Vieron lo que hicimos? 

1. Corrimos el programa sin haber escrito un _main method_.
2. eso lo _rompió_ y 
3. lo _arreglamos_ escribiendo un código nuevo, el _main method_.

__Esto se llama _TDD_ o _Test Driven Design_, escribir código desde los tests.__

Si bien no es que vamos a usar este método todo el tiempo, __el hacer _tests_ de aquello que escribimos es una ayuda invaluable__: cada test funciona como un pequeño robot que va a chequear que todo funciona como esperamos sin tener nosotros que manualmente correr la aplicación entera, ir hasta el lugar para hacer esa cosa que debería hacer, esa otra y finalmente, la otra! 🕺🏻 __En cuestión de segundos podemos correr miles de pruebas que nos llevarían días o semanas de probar manualmente__ y asegurarnos que cada pieza nueva que escribamos, va a encajar con el resto.

Esto es un __estándar en la industria__ cuando queremos llegar a trabajar para el primer nivel y __aprenderlo desde el comienzo__, va a hacer que sea muy natural para vos hacerlo luego, sin esfuerzos extras! 💪

''',
      ),
      CourseChapter(
        id: 2,
        title: 'Nuestro primer programa',
        description: '',
        author: const AppAuthor(name: 'Mau Di Bert', picture: ''),
        published: DateTime.now(),
        readingTime: '1 minuto',
        content: '''
# Nuestro primer programa

Como les contamos en el artículo anterior, queremos que aprendan a crear __tests primero__ que nada, ejecuten el programa, el programa se rompa y sepan qué código tienen que escribir.

## Requerimientos?

Como ahora estamos __utilizando _Dartpad_, no contamos con herramientas específicas de testing__ y por ello, vamos a ir cambiando las formas en las que creamos nuestros tests.

Vamos a crear una serie de reglas llamadas __requerimientos o _requirements_: es lo que queremos que nuestro programa haga__. Vamos a obviar aquí los tests o marcado de errores que ya el mismo lenguaje utiliza. Por ejemplo, si no escribimos el _main method_, sin que escribamos ningún test, el lenguaje nos marca automáticamente el error; esto sucederá en muchos otros casos y es una enorme ayuda cuando escribamos cientos de líneas de código.

## Hello world u hola mundo

Es el programa más sencillo de todos y es casi una _convention_ o convención empezar con él: imprimir en pantalla "Hola mundo!" y he allí nuestro requerimiento primero:

_Requirement_: imprimir en pantalla "Hola mundo".

Para ello, vamos a escribir las siguientes líneas de código:

```dart
void main() {
    print('hola mundo')
}
```

Qué pudieron ver en _Dartpad_? Algo así?

![Falta punto y coma](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.dart_basico/2.3.1_falta_punto_y_coma.png)

Prueben correr el programa sin solucionar el error como _Dartpad_ se los recomienda.

![Programa no corre](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.dart_basico/2.3.2_programa_no_corre_falta_punto_y_coma.png)

En este caso, pudieron ver que no tuvimos que crear ningún test para asegurarnos de que la línea tiene que estar escrita de cierta manera, siguiendo [ciertas reglas](https://dart.dev/guides/language/language-tour)?: Dart lo hace él mismo.

Si ustedes agregan dicha línea y lo corren, deberíamos ver el resultado esperado... verdad? 🤔 Qué imprimió la consola? Cuál era el requerimiento? Mientras piensan esto inconscientemente, les contamos algo más.

## Formato

Si ustedes copiaron el código de la misma forma que yo lo escribí, habrían hecho esto:

1. void main () {}
2. Entraron dentro de los {}
3. Dentro teclearon _enter_

Qué pasó? Si no lo hicieron, borren todo y háganlo de vuelta así pueden notar ustedes mismos qué sucede: Dart cuenta con un sistema que __además de corregir los errores, puede corregir cómo escribimos, el estilo__.

Así, agrega espacios para indicar más claramente que un pedazo de código está dentro de otro pedazo, o colores para diferenciar palabras clave y mucho más.

Prueben también qué sucede si borran esos espacios y lo corren. Pudieron ver que funciona perfectamente salvo que es apenas más difícil de leer? Y ustedes dirán 'son dos espacios, no es más difícil'. Pero compruébenlo ustedes mismos: qué código les parece más fácil y placentero de ver? 🤨

![Formato o no formato](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.dart_basico/2.3.3_formato.png)

 y luego hacen click en _Format_ y voilà!

![Formato automático de Dart](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.dart_basico/2.3.4_no_formateado_vs_formateado.png)

## Tests?

Podrían decir que la tarea está terminada? Como dijimos, no tenemos forma de automatizar el proceso de testing sino que tendremos que hacerlo nosotros mismos por ahora. Vuelvan a los _requirements_, revisen su código, luego el _output_ en la consola. Encuentran alguna diferencia? __Logramos exactamente lo que estaba pedido?__

Si no pudieron aun notar la diferencia, busquen un ratito más.

🤔

🤷🏻‍♂️

🤦🏻‍♂️

Ok! El requerimiento decía imprimir "Hola mundo" y el código que escribimos imprime "hola mundo", siendo la primer letra en minúscula cuando debiera ser en mayúscula.

Nuevamente nos encontramos con un caso super simple y pensamos que no genera mucha diferencia pero a veces, en el trabajo cotidiano pensamos de la misma forma dejando de lado lo que la persona que escribió el requerimiento pensó con mucho esfuerzo.

De ser así, lo mejor sería contactarte con esa persona y sugerirle que nuestro código puede solucionar mejor su problema o que no hace mucha falta marcar la diferencia.

__Tratamos de que no solamente aprendan a escribir código de calidad sino también absorvan buenas prácticas__ para con ustedes y sus compañeros y compañeras y tengan la oportunidad de amar esta profesión como nosotros lo hacemos!


''',
      ),
      CourseChapter(
        id: 3,
        title: 'Variables: declaración e inicialización',
        description: '',
        author: const AppAuthor(name: 'Mau Di Bert', picture: ''),
        published: DateTime.now(),
        readingTime: '1 minuto',
        content: '''
# Variables: declaración e inicialización

@Mau Di Bert

_Variables_ o variables (🤣), son __especie de cajas que nos permiten guardar valores__ dentro. Según aquello que queramos guardar vamos a necesitar tipos de cajas diferentes.

Si en nuestro programa quisiéramos __alojar__ nuestro nombre __para luego imprimirlo__, necesitaríamos una de estas variables. Limpien su Dartpad y empecemos!

_Requirement_: guardar nuestro nombre para luego imprimirlo.

```dart
void main() {
    // Ya vimos qué utilizamos en el pasado para imprimir
    // pero no vimos... 🤨 ... este tipo de escritura en el código!
    // Estos son comentarios de código y pueden utilizarse
    // para hacer aclaraciones, guiar a otro programador u 
    // hasta incluso, organizarlo.
    // Ya hablaremos más de ellos!

    // Ya conocemos que 'print()', imprime algo en pantalla.
    // Qué pasa si escribimos solamente esto?
    // Estaríamos creando nuestro primer test! 😍.
    // Hagámosla fallar y veamos qué nos dice!
    print();
}
```

![Faltan argumentos!](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.dart_basico/2.4.1_faltan_argumentos.png)

Ya aprendimos también que una lína de código en _Dart_, tiene que finalizar con ';', por lo que sabemos ese no es el error que nos está mostrando. Pero además de esto, tenemos una explicación bien clara: 'faltan argumentos'. Ya vimos en el pasado que `print('Hola mundo')` mostraba en consola la frase 'Hola mundo'. Cuál les parece entonces que podría ser el siguiente paso para _arreglar_ el test que creamos?

## 💀 Aprendizaje muerto

Lo ideal, es que se tomen un tiempo para resolverlo ustedes solos antes de avanzar. De esa manera, van a hacer las conexiones neuronales necesarias para aprender! Por eso, vamos a introducir esto: 💀. Ese emoji representa la mismísima muerte del aprendizaje! 😵‍💫🙄🤣. __Cada vez que lo vean, saquen los ojos de este artículo y póngase a trabajar duro para resolver el ejercicio__. Pueden poner un cronómetro o _timer_ para determinar cuánto tiempo dedicarle antes de claudicar vilmente! 😂.

Creemos que ha sido suficiente escarmiento, así que podemos continuar!

__Qué es lo que solemos hacer cuando estamos con poco tiempo? Solemos ver parte de aquello que estamos haciendo porque estamos pensando en hacer algo más__. Si hubiéramos querido _intentar resolver_ nuestro problema rápidamente, es probable que hubiéramos hecho algo como esto:

```dart
void main() {
    print('Mau');
}

```

Liiiiiiisto! Nuestro nombre impreso en pantalla! 🙄 Sin embargo, si nos detenemos unos instantes y leemos nuevamente el _requirement_, qué encontramos? Se los dejo por acá así no tienen que volver a buscarlo:

_Requirement_: guardar nuestro nombre para luego imprimirlo.

Si fuéramos lentamente, podríamos dividir este pedido que nos han hecho, en dos partes: _1: guardar nuestro nombre_ para, _2: luego imprimirlo_. Pero cómo guardamos nuestro nombre? Necesitaríamos una... _especie de caja que nos permita guardar valores_! 🚀. Ha llegado el momento de introducir a las _variables_.

## Declaración de variables

Una de estas cajas, __para ser creada, tiene que ser primero declarada__ y se hace escribiendo el tipo de caja que va a ser y luego el nombre que va a llevar y que represente de la forma más clara posible aquello que queremos poner dentro (pensando siempre en que otra persona en el futuro puede llegar a leerla sin tener mucha idea del proyecto y tratando de que no tenga que razonar demasiado para entender su contenido): `String myName`.

_String_ significa 'cadena' y viene a representar un tipo de caja que almacena una serie de caracteres.
_myName_ es el nombre que elegí para representar precisamente lo que quiero hacer sin ser tan _verbose_ o explicarme demasiado de forma redundante, por ejemplo: `String developerThatIsWritingThisCodeName`.

En el nombre podemos utilizar letras, números (siempre y cuando no sea el primer caracter) o _underscore_ ('_'), salvo caracteres o palabras específicas de _Dart_ que van a ir aprendiendo en el camino. Sin embargo, como sus ojos de detectives programadoriles habrán notado, tienen que escribirse de una forma en particular: _Camel case_.

### camelCase

Cada lenguaje tiene sus espcificidades y esta es una de Dart: salvo la primer letra que debe escribirse en minúscula, cada palabra se diferencia comenzando con una mayúscula. En español sería 'algoComoEsto'.

Tenemos entonces hasta ahora la variable declarada. Será que ya podemos utilizarla?

```dart
void main() {
    String myName;
    print(myName);
}
```

Noup! Tenemos el siguiente error:

_'The non-nullable local variable 'myName' must be assigned before it can be used.'._

En este caso, les copié directamente el mensaje de error porque es más fácil que capturar la pantalla pero lo hice porque ustedes ya saben ver los errores y además, en esta profesión van a ver mucho más código que pantallas! 😆.

El mensaje dice: 'La variable local _no nulleable_, debe ser asignada antes de ser utilizada'. Bien extraño no? No lo es si respiramos, bajamos la velocidad y lo dividimos en partes más pequeñas para entenderlo:

_la variable local_: significa que está en la pieza de código que estamos escribiendo.
_no nulleable_: que sí o sí tiene que tener un valor; no puede inicializarse vacía.
_debe ser asignada antes de ser utilizada_: le tenemos que proveer un valor, un contenido antes de usarla, la tenemos que _inicializar._

## Inicialización de variables

Inicializar una variable es, __luego de que la variable ha sido declarada, ponerle un valor dentro__. Para hacerlo, utilizamos el siguiente orden, relación de palabras o _sintáxis_:

![Declaración e inicialización](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.dart_basico/2.4.2_declarar_e_inicializar.png)

En este caso, estamos hablando de una caja o _variable_ que almacenará una cadena de caracteres y la adecuada para este tipo de valores es un _String_.

Para crear un valor del tipo _String_, rodeamos dicho valor con comillas simples o _single-quotes_ ('valor'), con comillas dobles o _double-quotes_ ("valor") o si vamos a necesitar hacer líneas múltiples o _multilines_, utilizamos comillas triples o _triple-quotes_ (\'\'\'
Este valor
Tiene varias
Líneas\'\'\'
).

__La práctica recomendada__ sería utilizar en la mayor cantidad de los casos __single-quotes__.

Ahora bien, ya con todo eso, tendríamos todo lo necesario para completar a la perfección nuestro _requirement_? 💀 Intentalo!

Esperamos que te hayas tomado el tiempo para tratar de hacerlo vos mismo y no hayas sacrificado a tu pobre aprendizaje!

```dart
void main() {
    String myName = 'Mauro';
    print(myName);
}

```

Ahora sí cumplimos con todos los requerimientos necesarios :muscle: :

- [x] Guardar nuestro nombre
- [x] Imprimirlo

### Yendo un poco más allá

Supongamos que en este programa que estamos construyendo queremos guardar además, nuestro segundo nombre, _en caso de que tengamos uno_. Qué pasa con aquellos que no tienen segundo nombre? Cómo va la aplicación a guardar algo que podría no existir o ser... nulo? 😳

#### Null value

Es un __valor utilizado para representar algo que no tiene valor.__
Dicho valor en _Dart_ recibe el nombre de _null_, un tipo especial de valor del que hablaremos bastante y bastantes dolores de cabeza nos vamos ahorrar si aprendemos de el desde el comienzo!

Lo primero que tenemos que hacer es cuando declaramos nuestra caja o _variable_, decirle que puede llegar a contener un valor nulo. Cómo hacemos esto? Simplemente agregando luego de su tipo, el operador de aserción nula o _null assertion operator_ (o bien pobremente llamado, signo de interrogaci´øn '?' 😝) de esta manera: `String?` Todo entero quedaría algo como... Sí! Primero prueben ustedes cómo sería guardar tanto el primer nombre como segundo nombre en sus códigos, previendo que el segundo sea nulo. 💀

```dart
void main() {
    String myFirstName = 'Mauro';
    String? mySecondName = 'Ariel'; // como la 🧜‍♀️ 
    print (myFirstName + mySecondName);
}
```

Bien! Fíjense que introdujimos algo nuevo y es la posibildad de _concatenar_ valores de texto con un '+'. Sin embargo, ya pudieron ver que al imprimirlo, ambos nombres quedan encimados. Vamos a hacer un poco más de espacio, introduciendo justamente, un espacio:

```dart
void main() {
    String myFirstName = 'Mauro';
    String? mySecondName = 'Ariel'; // como la 🧜‍♀️ 
    print (myFirstName + ' ' + mySecondName);
}
```

Todo este tiempo estuvieron con ese subrayado azul y pudieron evitarlo sin decirme nada? No es un error sino una sugerencia. En este caso les dice que usen interpolación para componer textos y valores (cosa que ya les explico) y se vería algo como así:

![Usar interpolación](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.dart_basico/2.4.3_usar_interpolacion.png)

La interpolación sería el proceso de rodear con _single-quotes_ el texto. Va a representar exactamente lo que ustedes escriban incluyendo espacios aunque van a tener que utilizar un \$ para llamar a las variables. En este caso sería algo así:

```dart
void main() {
    String myFirstName = 'Mauro';
    String? mySecondName = 'Ariel'; // como la 🧜‍♀️ 
    print ('\$myFirstName \$mySecondName');
}
```

Vamos a ver que logramos el mismo resultado aunque con una práctica recomendada por _Dart_ y tenemos un código más limpio!

Ahora bien... cómo llenarían ustedes este código si no tuvieran segundo nombre? Hagan un intento solitos y solitas! 💀

Si hubieran introducido el valor nulo, habrían tenido una recomendación en la línea 4: No inicialicen variables explícitamente usando el valor nulo. Por qué es esto? Porque _Dart_ lo hace por nosotros. Y valdría solamente con declarar esa variable. El resultado sería algo así:

```dart
void main() {
    String myFirstName = 'Mauro';
    String? mySecondName; // me sacaron el segundo! 
    print ('\$myFirstName \$mySecondName'); // Imprimiría: Mauro null
}
```

No es tampoco lo esperado verdad? De repente me llamo 'Mauro null'! 🤣 Vamos a cerrar este artículo con algo un poco más avanzado y que va a permitir que si el segundo nombre es nulo, entonces no lo imprima!

Este código nuevo tiene __dos partes nuevas: {} y '??'__. Los __{}__ nos permiten elaborar alguna operación en la que podemos si queremos, llamar a una variable. Por otro lado el __'??'__ es uno de los _null aware operators_ u operadores para trabajar valores nulos y nos permite devolver otra cosa si el valor que nosotros estamos llamando, es nulo. En este caso, si `mySecondName` es nulo, devolvemos una _String_ vacía, representada así: ''.

```dart
void main() {
    String myFirstName = 'Mauro';
    String? mySecondName; // Ahora soy millenial!
    print ('\$myFirstName \${mySecondName??''}');
}
```



''',
      ),
    ]),
  ],
);
