import 'package:the_monkslab_web/src/constants/index.dart';

final limitless = AppCourse(
  title: 'Sin límites',
  description:
      'Mejora tus capacidades, aprende más rápido alcanza una vida excepcional',
  materialsAuthor: 'Jim Kwik',
  authors: [
    const AppAuthor(name: 'Mau Di Bert', picture: ''),
    const AppAuthor(name: 'Tin Smith', picture: ''),
  ],
  structure: [
    CourseSection(title: 'Parte I', chapters: [
      CourseChapter(
        title: '🏁 Utiliza el método más rápido (p84)',
        description: 'Cómo enfrentar cada proceso de aprendizaje',
        author: const AppAuthor(name: 'Mau Di Bert', picture: ''),
        data: '''# 🏁 Utiliza el método más rápido (p84)

## Cómo enfrentar cada proceso de aprendizaje

### Olvidar

1. Mente de principiante: olvidar lo que creés saber.
2. Volver al foco: olvidar lo que no es urgente para ese aprendizaje.
3. No escuchar al crítico: olvidar lo que no podees hacer.

### Actuar

1. El aprender es un deporte: hacer.
2. Tomar notas, hacer diagramas... cualquier herramienta que te ayude a entender mejor.

### Estado

1. Cuidar la postura
2. Atender la respiración, buscando relajar la base de la pelvis (perineo) antes inspirar.
3. Alerta para volver al foco.

### Enseñar

1. Aprender pensando que se va a enseñar.
2. Buscarse aprendices o compañeros de estudio.

### Agendar

1. Reservar tiempo para el aprendizaje.
2. La rutina hace que cada vez demande menos energía.

### Revisar

1. Estudiar por ciclos (pomodoro: 25/5, otro: 52/17).
2. Al final de cada ciclo, hacer un cierre de lo estudiado y qué está por venir.
3. Al volver al ciclo siguiente, revisar lo aprendido explicándolo.
''',
      ),
      CourseChapter(
          title: '❓ Las preguntas son la respuesta (p93)',
          description: 'Preguntar para responder',
          author: const AppAuthor(name: 'Mau Di Bert', picture: ''),
          data: '''
# ❓ Las preguntas son la respuesta (p93)

> "El único objetivo real de la educación es dejar a una persona en la condición de hacer preguntas continuamente".

## Preguntas dominantes

Una vez que te hacés una pregunta, no podés dejar de responderla.
Hay preguntas que nos hacemos todo el tiempo, dominan nuestro comportamiento. Qué pregunta me hago todo el tiempo?

- cómo puedo mejorar?
- cómo puedo hacer este momento más mágico?

### Para leer y aprender

1. cómo puedo utilizar esto?
2. por qué debo utilizar esto?
3. cuándo utilizaré esto?
'''),
    ]),
    CourseSection(title: 'Parte II', chapters: [
      CourseChapter(
          title: '🪐 Mentalidad sin límites (p105)',
          description: 'Cómo incrementar las posibilidades de nuestro cerebro',
          author: const AppAuthor(name: 'Mau Di Bert', picture: ''),
          data: '''

# 🪐 Mentalidad sin límites (p105)

> "No es lo que no sabes lo que te mete en problemas. Es lo que sabes con certeza que simplemente no es así". Mark Twain

Mentalidad es la **disposición mental que limita o expande las posibilidades de lo que uno puede hacer**.

Cuando asumimos la responsabilidad de algo nos imbuimos de un gran poder para mejorar las cosas.

## Cuatro formas de genialidad

1. Dínamo: creatividad
2. Resplandeciente: interacción
3. Tiempo: visión largo plazo
4. Acero: detalles, información

## Minimizar las creencias limitantes

- Nombrar las creencias limitantes.
- Crear una personalidad externa para el crítico interior. Distinguirse más fácilmente del yo real.
- Crear una nueva creencia en su lugar mediante la razón, fundamentación, experimentación y hechos.
- Cultivar experiencias que emocionalmente sean positivas en la interacción con el entorno.
- Buscar quiénes nos generan inspiración y volver a ellos.

### Creencias o mentiras limitantes más comunes

> "Aceptar la genialidad es tomar responsabilidad".

1. La inteligencia es fija
La inteligencia no es una sola y es fluida. Se trata de cómo la nutras.
2. Utilizamos el 20% del cerebro
3. Los errores son fracasos
"Una persona que nunca cometió un error es porque nunca intentó nada nuevo". Einstein.
4. El conocimiento es poder.
No es la posesión sino el uso de ellos. Conocimiento x acción = poder.
5. Aprender cosas nuevas es muy difícil
La clave es dar pasos pequeños y sencillos.
6. La crítica de otras personas es importante
"En el último suspiro, solo valdrá cómo viviste"
7. El genio nace
El individuo es más importante que cualquier sistema.
La ignición es la motivación, el combustible para hacer lo que haces.
El genio no nace, se hace a través de una práctica profunda.

## [4 claves para la genialidad]((https://www.jimkwik.com/podcast/kwik-brain-032-4-keys-to-genius))

> "Lo que no está agendado, no va a suceder".

### Crecer

- Práctica constante y el progreso mediante pequeños logros.
- No buscar la perfección sino la continuidad.
- Agendar las prácticas.
- Lista de crecimiento: cuáles son tus próximos objetivos de aprendizaje.

### Dar

- No se trata de _yo_ sino de _nosotros_.
- Dar, enseñar, entregar. Crecer para poder dar más.
- Dar como parte de uno.

### Agradecer

- Hacer una lista de todo lo que el dinero no puede comprar y que te da ganas de agradecer.
- Agradecer por lo que ya tenés.

### Resistir

- Desarrollar la resiliencia para superar las dificultades.
- Perservar y ver los problemas como desafíos o rompecabezas.
- Esta habilidad es como cualquier otra, un músculo que solo necesita entrenarse.
'''),
    ]),
  ],
);
