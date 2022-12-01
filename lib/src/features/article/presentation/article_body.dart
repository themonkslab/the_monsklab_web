import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:the_monkslab_web/src/ui/sizes.dart';

import '../../../constants/_index.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({Key? key, required this.data}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    final htmlData = md.markdownToHtml(data);
    return Padding(
      padding: AppPaddings.padAll12,
      child: Html(
        data: htmlData,
        style: {
          // TODO -HIGH- revisit to check if selectable is possible
          // https://github.com/Sub6Resources/flutter_html/issues/717
          'h1': Style.fromTextStyle(AppTextStyles.h1),
          'h2': Style.fromTextStyle(AppTextStyles.h2)
              .copyWith(padding: const EdgeInsets.only(top: 12.0)),
          'h3': Style.fromTextStyle(AppTextStyles.h3)
              .copyWith(padding: const EdgeInsets.only(top: 12.0)),
          'h4': Style.fromTextStyle(AppTextStyles.h4)
              .copyWith(padding: const EdgeInsets.only(top: 12.0)),
          'p': Style.fromTextStyle(AppTextStyles.p)
              .copyWith(padding: AppPaddings.padV12),
          'li': Style.fromTextStyle(AppTextStyles.li),
          'pre': Style(
            margin:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
            backgroundColor: AppColors.monkChick,
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
          ),
          'code': Style.fromTextStyle(AppTextStyles.code),
        },
      ),
    );
  }
}

/*
<h1>Contiene y reemplazar</h1>
<p>Supongamos que el ajo no me hace muy bien y <strong>quiero elaborar una app</strong> que lea los ingredientes de una receta en un menú y pueda decirme si tiene o no ajo. <strong>Podríamos empezar escribiendo los pasos para elaborarla</strong>, de la siguiente manera:</p>
<ol>
<li>Crear una variable que almacene si la receta tiene o no ajo.</li>
<li>Crear una variable para la receta.</li>
<li>Guardar la receta en la variable.</li>
<li>Chequear si la receta contiene la palabra ajo.</li>
<li>Asignar la respuesta del chequeo del paso previo a nuestra variable que nos dice si tiene ajo o no.</li>
<li>Imprimir en consola el resultado de comprobar si la receta tiene ajo o no, segun la variable creada.</li>
</ol>
<p>Esto que acabamos de hacer recibe el nombre de <strong>Pseudo code</strong> y es una metodología que nos permite <strong>representar los pasos</strong> para crear un algoritmo o solucionar un problema, <strong>de forma coloquial o corriente</strong>. Desde aquí, lo único que tenemos que hacer, es traducirlo a código! Vamos a ir haciendo esa conversión de a poquito y yendo de atrás hacia adelante, siguiendo nuestra <strong>estrategia de crear desde los tests o desde qué deberíamos tener cuando nuestro programa esté terminado</strong>.</p>
<p>El objetivo final es '6. Imprimir en consola el resultado de comprobar si la receta tiene ajo o no, según la variable creada'. Se vería algo así:</p>
<pre><code class="language-dart">void main() {
    print('Contains \'garlic\': $containsGarlic');
}
</code></pre>
<p>Como ya vieron, esto nos da un error porque la variable <em>containsGarlic</em> (contieneAjo),  aun no ha sido declarada ni inicializada y esta es la forma en la que vamos creando desde el final: sabemos que nuestro paso entonces es crear dicha variable.</p>
<pre><code class="language-dart">void main() {
    bool containsGarlic;
    print('Contains \'garlic\': $containsGarlic');
}
</code></pre>
<p>Ahora nos tira otro error: <em>'The non-nullable local variable 'containsGarlic' must be assigned before it can be used.'</em> Dice que la variable local no nulleable (no puede estar vacía) debe estar asignada antes de ser utilizada. Sin embargo, antes de asignarle un valor, tenemos que chequear si la receta contiene o no ajo. Observen cómo <strong>de esta forma, es más bien Dart que nos va guiando qué código escribir</strong>.</p>
<h2><em>Contains</em> o contiene</h2>
<p>Para hacerlo, podemos utilizar otro método propio de este tipo de <em>primitive object</em> (objeto primitivo) que ya conocemos, llamado <code>String</code>. Primero, guardamos la receta en una variable:</p>
<pre><code class="language-dart">void main() {
    bool containsGarlic;
    String recipe = '''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
''';
    print('Contains \'garlic\': $containsGarlic');
}
</code></pre>
<p>Sigue quejándose de la misma forma así que vamos a resolverlo utilizando el método <em>contains</em>. Este método <strong>se encarga de buscar dentro de nuestras cadenas de texto el patrón que decidamos y nos devuelve o retorna un valor booleano</strong>: es verdadero o falso que nuestro texto contiene dicho patrón. En el siguiente caso, si solamente tuviéramos la receta, sería algo así:</p>
<pre><code class="language-dart">void main() {
    print('''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
'''.contains('garlic'));
}
</code></pre>
<p>Vieron? Respondió que no contiene la palabra <em>'garlic'</em> ('ajo') aunque yo no estoy convencido de que realmente funcione. 💀 Prueben con otras palabras y vean si el método funciona.</p>
<p>Como pudieron comprobar, salvo un caso 🤨, funciona a la perfección. Sin embargo, recuerden que nosotros tratamos de escribir código para personas además de computadoras, por lo que vamos a retomar nuestro enfoque inicial y reescribirlo de forma tal que sea más simple de entender :</p>
<pre><code class="language-dart">void main() {
    bool containsGarlic;
    String recipe = '''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
''';
    containsGarlic = recipe.contains('garlic');
    print('Contains \'garlic\': $containsGarlic');
}
</code></pre>
<p>De esta manera, nuestro código se entiende sin tener que explicar cómo está escrito pero... qué caso no estaríamos cubriendo? 💀 Lo siguiente que van a ver, debería dejar en claro qué nos faltó. Sin embargo, para entenderlo del todo, deben saber qué hace el operador '||'.</p>
<h2>El operador || (OR)</h2>
<p>Va a retornar el primer <em>true</em> que encuentre. Si de analizar la primer operación resulta un <em>true</em>, ya no continua y retorna ese valor; si la primera da <em>false</em>, continua a la siguiente y solamente retorna <em>false</em> si todas dieron como resultado <em>false</em>. No se preocupen que esto lo veremos luego, aunque me gusta ir mostrándole estas cosas de apoquito, con el uso.</p>
<pre><code class="language-dart">void main() {
    bool containsCheese;
    String recipe = '''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
''';
    containsCheese = recipe.contains('Cheese') || recipe.contains('cheese');
    print('Contains \'Cheese\' or \'cheese\': $containsCheese');
}
</code></pre>
<p>Exacto! Estábamos buscando una palabra toda en minúsculas pero ya vimos que de empezar la oración con dicha palabra, podría estar en mayúsculas y nos perderíamos del ingrediente. Además, por supuesto puede haber errores en la receta y decir <em>'gralic'</em> en lugar de <em>'garlic'</em> por lo que en el futuro van a ver formas más avanzadas de chequear. 💀 Bien! Anímense solitos y solitas a escribir el ejemplo final!</p>
<pre><code class="language-dart">void main() {
    bool containsGarlic;
    String recipe = '''
Vegan Pizza without TACC
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil
''';
    containsGarlic = recipe.contains('Garlic') || recipe.contains('garlic');
    print('Contains \'Garlic\' or \'garlic\': $containsGarlic');
}
</code></pre>
<p>Bien! Qué pasa si fueron ustedes los que escribieron esta receta y no solo listaron ingredientes sino que luego, explicaron cómo utilizarlos, algo que les podría haber llevado mucho tiempo y, finalmente, luego de mucho esfuerzo se dieron cuenta que en realidad, en lugar de llevar <em>'Arugula'</em> ('rúcula'), llevaba <em>'Spinach'</em> ('espinaca')?</p>
<h2><em>Replace</em> o reemplazar</h2>
<p>Podríamos <strong>buscar el <em>Pattern</em> (patrón) que representa a esa palabra y reemplazarlo</strong> y eso es básicamente lo que hace el método. Primero, cómo se vería el problema:</p>
<pre><code class="language-dart">void main() {
    String recipe = '''
Vegan Pizza without TACC
------------------------

Ingredients
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil

Steps to reproduce
---
1. Put arugula into it.
2. Then do a particular thing with arugula.
3. After that, do much more things with the arugula.
4. Finally, eat the arugula... and the pizza!
''';
    print(recipeWithSpinach);
}
</code></pre>
<p>Aquí podemos ver una recomendación en azul y un error en rojo. 💀 Solucionaremos los dos de una vez aunque con los conocimientos que ya tienen (<em>tip</em>: recuerden que si colocan un '.' luego de la variable <code>String</code>, les aparecen una lista de métodos; busquen <em>replaceAll</em>) pueden tratar de entender cómo funciona ese método e intentarlo ustedes mismos! Vale la pena probar!</p>
<p>💀 Algo más antes de que vean la solución: recuerden que la palabra puede empezar con mayúsculas o minúsculas:</p>
<pre><code class="language-dart">void main() {
  String recipe = '''
Vegan Pizza without TACC
------------------------

Ingredients
---
Dehidrated tomatos
Vegan cheese
Arugula
Olive oil

Steps to reproduce
---
1. Put arugula into it.
2. Then do a particular thing with arugula.
3. After that, do much more things with the arugula.
4. Finally, eat the arugula... and the pizza!
''';
  String recipeWithSpinach = recipe.replaceAll('Arugula', 'Spinach');
  recipeWithSpinach = recipeWithSpinach.replaceAll('arugula', 'spinach');

  print(recipeWithSpinach);
}
</code></pre>
<p>Fíjense que tienen una enorme cantidad de métodos a disposición para el tipo <code>String</code>! Pruébenlos! También les recomiendo se sumen a nuestro <a href="">Discord</a> en donde van a encontrar más ejercicios!</p>


*/