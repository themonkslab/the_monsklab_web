
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:the_monkslab_web/src/apis/_index.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class FirestoreApi {
  FirestoreApi({
    FirebaseFirestore? firestore,
    HttpApi? httpApi,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _httpApi = httpApi ?? HttpApi();

  final FirebaseFirestore _firestore;
  final HttpApi _httpApi;

  Future<void> createCoursesIndexes() async {
    await createDartCourseIndexes();
    await createCicdCourseIndexes();
  }

  //TODO -HIGH- write in firebase from json
  Future<void> createDartCourseIndexes() async {
    final course = [
      {
        "path": "1.Introducción",
        "title": "1.Introducción",
        "description": "",
        "articles": [
          {
            "path": "1.Introducción_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/1_Introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306132"
          },
          {
            "path": "1.Introducción_2_Qué_esperamos_nosotros",
            "title": "2.Qué esperamos nosotros",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/2_Qué_esperamos_nosotros.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306040"
          },
          {
            "path": "1.Introducción_3_Introducción_a_Dart",
            "title": "3.Introducción a Dart",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/3_Introducción_a_Dart.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306188"
          },
          {
            "path": "1.Introducción_4_Introducción_a_Dartpad",
            "title": "4.Introducción a Dartpad",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/4_Introducción_a_Dartpad.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306249"
          }
        ]
      },
      {
        "path": "2.Dart_básico",
        "title": "2.Dart básico",
        "description": "",
        "articles": [
          {
            "path": "2.Dart_básico_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/1_Introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.302377"
          },
          {
            "path": "2.Dart_básico_2_Método_main",
            "title": "2.Método main",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/2_Método_main.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.303749"
          },
          {
            "path": "2.Dart_básico_3_Primer_programa",
            "title": "3.Primer programa",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/3_Primer_programa.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.302004"
          },
          {
            "path": "2.Dart_básico_4_Variables,declaración_e_inicialización",
            "title": "4.Variables,declaración e inicialización",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/4_Variables,declaración_e_inicialización.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.303020"
          },
          {
            "path": "2.Dart_básico_5_Tipos_básicos",
            "title": "5.Tipos básicos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/5_Tipos_básicos.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.303603"
          },
          {
            "path": "2.Dart_básico_6_Escape_caracteres",
            "title": "6.Escape caracteres",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/6_Escape_caracteres.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.303545"
          },
          {
            "path": "2.Dart_básico_7_Líneas_múltiples_de_texto",
            "title": "7.Líneas múltiples de texto",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/7_Líneas_múltiples_de_texto.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.302823"
          },
          {
            "path": "2.Dart_básico_8_Métodos_comunes_en_textos",
            "title": "8.Métodos comunes en textos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/8_Métodos_comunes_en_textos.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.303126"
          },
          {
            "path": "2.Dart_básico_9_Inicialización_y_asignación",
            "title": "9.Inicialización y asignación",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/9_Inicialización_y_asignación.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.303429"
          },
          {
            "path": "2.Dart_básico_10_Contiene_y_reemplazar",
            "title": "10.Contiene y reemplazar",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/10_Contiene_y_reemplazar.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.303488"
          },
          {
            "path": "2.Dart_básico_11_Conversiones_entre_tipos",
            "title": "11.Conversiones entre tipos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/11_Conversiones_entre_tipos.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.302107"
          },
          {
            "path": "2.Dart_básico_12_Operaciones_aritméticas",
            "title": "12.Operaciones aritméticas",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/12_Operaciones_aritméticas.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.301897"
          },
          {
            "path": "2.Dart_básico_13_Operadores_de_incremento_y_decremento",
            "title": "13.Operadores de incremento y decremento",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/13_Operadores_de_incremento_y_decremento.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.302627"
          },
          {
            "path":
                "2.Dart_básico_14_Operadores_lógicos_,_de_igualdad_y_relaciones",
            "title": "14.Operadores lógicos , de igualdad y relaciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/14_Operadores_lógicos_,_de_igualdad_y_relaciones.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.303823"
          },
          {
            "path": "2.Dart_básico_15_Operador_condicional",
            "title": "15.Operador condicional",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/15_Operador_condicional.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.302947"
          },
          {
            "path": "2.Dart_básico_16_Comentarios",
            "title": "16.Comentarios",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/16_Comentarios.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.302540"
          },
          {
            "path": "2.Dart_básico_17_Expresiones_y_declaraciones",
            "title": "17.Expresiones y declaraciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/17_Expresiones_y_declaraciones.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.303248"
          },
          {
            "path": "2.Dart_básico_18_Afirmaciones",
            "title": "18.Afirmaciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/18_Afirmaciones.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.302204"
          }
        ]
      },
      {
        "path": "3.Sistema_de_tipado",
        "title": "3.Sistema de tipado",
        "description": "",
        "articles": [
          {
            "path": "3.Sistema_de_tipado_1_introducción",
            "title": "1.introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/1_introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307595"
          },
          {
            "path": "3.Sistema_de_tipado_2_Lenguajes_estáticos_y_dinámicos",
            "title": "2.Lenguajes estáticos y dinámicos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/2_Lenguajes_estáticos_y_dinámicos.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307695"
          },
          {
            "path": "3.Sistema_de_tipado_3_Inferencia_de_tipo",
            "title": "3.Inferencia de tipo",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/3_Inferencia_de_tipo.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307517"
          },
          {
            "path": "3.Sistema_de_tipado_4_final_keyword",
            "title": "4.final keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/4_final_keyword.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307640"
          },
          {
            "path": "3.Sistema_de_tipado_5_const_keyword",
            "title": "5.const keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/5_const_keyword.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307740"
          },
          {
            "path": "3.Sistema_de_tipado_6_dynamic_keyword",
            "title": "6.dynamic keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/6_dynamic_keyword.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307470"
          }
        ]
      },
      {
        "path": "4.Flujo_de_control",
        "title": "4.Flujo de control",
        "description": "",
        "articles": [
          {
            "path": "4.Flujo_de_control_1_introducción",
            "title": "1.introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/1_introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.308086"
          },
          {
            "path": "4.Flujo_de_control_2_if_else",
            "title": "2.if else",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/2_if_else.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.308334"
          },
          {
            "path": "4.Flujo_de_control_3_while_loop",
            "title": "3.while loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/3_while_loop.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.308482"
          },
          {
            "path": "4.Flujo_de_control_4_for_loop",
            "title": "4.for loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/4_for_loop.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.308179"
          },
          {
            "path": "4.Flujo_de_control_5_break_continue",
            "title": "5.break continue",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/5_break_continue.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.308247"
          },
          {
            "path": "4.Flujo_de_control_6_switch",
            "title": "6.switch",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/6_switch.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.308420"
          },
          {
            "path": "4.Flujo_de_control_7_enumerations",
            "title": "7.enumerations",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/7_enumerations.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.308378"
          }
        ]
      },
      {
        "path": "5.App_linea_comando",
        "title": "5.App linea comando",
        "description": "",
        "articles": [
          {
            "path": "5.App_linea_comando_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/1_Introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.305146"
          },
          {
            "path": "5.App_linea_comando_2_Dart_sdk",
            "title": "2.Dart sdk",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/2_Dart_sdk.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.304988"
          },
          {
            "path":
                "5.App_linea_comando_3_Crear,_correr_y_debuggear_en_VS_Code",
            "title": "3.Crear, correr y debuggear en VS Code",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/3_Crear,_correr_y_debuggear_en_VS_Code.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.305244"
          },
          {
            "path": "5.App_linea_comando_4_Resúmen_del_juego",
            "title": "4.Resúmen del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/4_Resúmen_del_juego.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.304849"
          },
          {
            "path": "5.App_linea_comando_5_Creando_una_app_en_línea_de_comando",
            "title": "5.Creando una app en línea de comando",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/5_Creando_una_app_en_línea_de_comando.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.305547"
          },
          {
            "path": "5.App_linea_comando_6_pseudo_code_del_juego",
            "title": "6.pseudo code del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/6_pseudo_code_del_juego.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.305442"
          },
          {
            "path": "5.App_linea_comando_7_Obteniendo_user_input",
            "title": "7.Obteniendo user input",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/7_Obteniendo_user_input.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.304788"
          },
          {
            "path": "5.App_linea_comando_8_Implementando_el_loop",
            "title": "8.Implementando el loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/8_Implementando_el_loop.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.304903"
          },
          {
            "path": "5.App_linea_comando_9_Implementando_la_lógica_del_juego",
            "title": "9.Implementando la lógica del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/9_Implementando_la_lógica_del_juego.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.305308"
          }
        ]
      },
      {
        "path": "6.Collections",
        "title": "6.Collections",
        "description": "",
        "articles": [
          {
            "path": "6.Collections_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/1_Introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311594"
          },
          {
            "path": "6.Collections_2_Lists",
            "title": "2.Lists",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/2_Lists.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311350"
          },
          {
            "path": "6.Collections_3_List_methods",
            "title": "3.List methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/3_List_methods.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311405"
          },
          {
            "path": "6.Collections_4_Type_annotations",
            "title": "4.Type annotations",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/4_Type_annotations.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311639"
          },
          {
            "path": "6.Collections_5_var_final_const_with_lists",
            "title": "5.var final const with lists",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/5_var_final_const_with_lists.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311773"
          },
          {
            "path": "6.Collections_6_Sets",
            "title": "6.Sets",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/6_Sets.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311816"
          },
          {
            "path": "6.Collections_7_Maps",
            "title": "7.Maps",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/7_Maps.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311452"
          },
          {
            "path": "6.Collections_8_Type_test_operators",
            "title": "8.Type test operators",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/8_Type_test_operators.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311499"
          },
          {
            "path": "6.Collections_9_Iterating_on_maps",
            "title": "9.Iterating on maps",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/9_Iterating_on_maps.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311683"
          },
          {
            "path": "6.Collections_10_Nested_collections",
            "title": "10.Nested collections",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/10_Nested_collections.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311887"
          },
          {
            "path": "6.Collections_11_Nuevos_operadores_y_statements",
            "title": "11.Nuevos operadores y statements",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/11_Nuevos_operadores_y_statements.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311547"
          },
          {
            "path": "6.Collections_12_Copiando_colecciones",
            "title": "12.Copiando colecciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/12_Copiando_colecciones.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.311728"
          }
        ]
      },
      {
        "path": "7.Procesamiento_de_datos",
        "title": "7.Procesamiento de datos",
        "description": "",
        "articles": [
          {
            "path": "7.Procesamiento_de_datos_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/1_Introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.300283"
          },
          {
            "path":
                "7.Procesamiento_de_datos_2_Parseando_argumentos_desde_línea_de_comando",
            "title": "2.Parseando argumentos desde línea de comando",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/2_Parseando_argumentos_desde_línea_de_comando.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.300470"
          },
          {
            "path": "7.Procesamiento_de_datos_3_Leyendo_archivos_línea_a_línea",
            "title": "3.Leyendo archivos línea a línea",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/3_Leyendo_archivos_línea_a_línea.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.300161"
          },
          {
            "path": "7.Procesamiento_de_datos_4_Requerimientos_del_ejercicio",
            "title": "4.Requerimientos del ejercicio",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/4_Requerimientos_del_ejercicio.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.298369"
          },
          {
            "path": "7.Procesamiento_de_datos_5_Implementando_la_lógica",
            "title": "5.Implementando la lógica",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/5_Implementando_la_lógica.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.300535"
          }
        ]
      },
      {
        "path": "8.Null_safety",
        "title": "8.Null safety",
        "description": "",
        "articles": [
          {
            "path": "8.Null_safety_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/1_Introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.304455"
          },
          {
            "path": "8.Null_safety_2_Nullable_and_non_nullable_variables",
            "title": "2.Nullable and non nullable variables",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/2_Nullable_and_non_nullable_variables.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.304347"
          },
          {
            "path": "8.Null_safety_3_Flow_analysis",
            "title": "3.Flow analysis",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/3_Flow_analysis.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.304508"
          },
          {
            "path": "8.Null_safety_4_jerarquías",
            "title": "4.jerarquías",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/4_jerarquías.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.304223"
          },
          {
            "path": "8.Null_safety_5_Assertion_operator",
            "title": "5.Assertion operator",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/5_Assertion_operator.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.304397"
          }
        ]
      },
      {
        "path": "9.Functions",
        "title": "9.Functions",
        "description": "",
        "articles": [
          {
            "path": "9.Functions_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/1_Introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306967"
          },
          {
            "path": "9.Functions_2_Primeras_funciones",
            "title": "2.Primeras funciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/2_Primeras_funciones.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306440"
          },
          {
            "path": "9.Functions_3_Function_arguments",
            "title": "3.Function arguments",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/3_Function_arguments.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307104"
          },
          {
            "path": "9.Functions_4_Valor_de_retorno",
            "title": "4.Valor de retorno",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/4_Valor_de_retorno.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307198"
          },
          {
            "path": "9.Functions_5_Argumentos_posicionales_y_nombrados",
            "title": "5.Argumentos posicionales y nombrados",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/5_Argumentos_posicionales_y_nombrados.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306621"
          },
          {
            "path": "9.Functions_6_Fat_arrow_notation",
            "title": "6.Fat arrow notation",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/6_Fat_arrow_notation.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306812"
          },
          {
            "path": "9.Functions_7_Lexical_scope",
            "title": "7.Lexical scope",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/7_Lexical_scope.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306669"
          },
          {
            "path": "9.Functions_8_Pure_functions",
            "title": "8.Pure functions",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/8_Pure_functions.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307149"
          },
          {
            "path": "9.Functions_9_Anonymous_functions",
            "title": "9.Anonymous functions",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/9_Anonymous_functions.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306717"
          },
          {
            "path": "9.Functions_10_Function_types",
            "title": "10.Function types",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/10_Function_types.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306764"
          },
          {
            "path": "9.Functions_11_New_methods_on_collections",
            "title": "11.New methods on collections",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/11_New_methods_on_collections.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306913"
          },
          {
            "path": "9.Functions_12_Code_reusability",
            "title": "12.Code reusability",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/12_Code_reusability.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.307050"
          },
          {
            "path": "9.Functions_13_New_methods_part_two",
            "title": "13.New methods part two",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/13_New_methods_part_two.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306531"
          },
          {
            "path": "9.Functions_14_Functional_vs_Imperative_Programming",
            "title": "14.Functional vs Imperative Programming",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/14_Functional_vs_Imperative_Programming.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.306863"
          }
        ]
      },
      {
        "path": "10.Classes",
        "title": "10.Classes",
        "description": "",
        "articles": [
          {
            "path": "10.Classes_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/1_Introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.310652"
          },
          {
            "path": "10.Classes_2_Introducción_a_Classes",
            "title": "2.Introducción a Classes",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/2_Introducción_a_Classes.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.310607"
          },
          {
            "path": "10.Classes_3_Instance_methods",
            "title": "3.Instance methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/3_Instance_methods.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.310974"
          },
          {
            "path": "10.Classes_4_Class_constructors",
            "title": "4.Class constructors",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/4_Class_constructors.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.310728"
          },
          {
            "path": "10.Classes_5_Getters_y_setters",
            "title": "5.Getters y setters",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/5_Getters_y_setters.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.310556"
          },
          {
            "path": "10.Classes_6_Más_sobre_variables_y_methods",
            "title": "6.Más sobre variables y methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/6_Más_sobre_variables_y_methods.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.310921"
          }
        ]
      },
      {
        "path": "11.Dart_medio",
        "title": "11.Dart medio",
        "description": "",
        "articles": [
          {
            "path": "11.Dart_medio_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/1_Introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.309548"
          },
          {
            "path": "11.Dart_medio_2_La_terminal",
            "title": "2.La terminal",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/2_La_terminal.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.310256"
          },
          {
            "path": "11.Dart_medio_3_Crear_y_correr_un_proyecto",
            "title": "3.Crear y correr un proyecto",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/3_Crear_y_correr_un_proyecto.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.309901"
          },
          {
            "path": "11.Dart_medio_4_Debuggear_un_proyecto",
            "title": "4.Debuggear un proyecto",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/4_Debuggear_un_proyecto.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.310207"
          },
          {
            "path": "11.Dart_medio_5_Componentes_de_un_proyecto",
            "title": "5.Componentes de un proyecto",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/5_Componentes_de_un_proyecto.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.309293"
          },
          {
            "path": "11.Dart_medio_6_Paquetes_en_detalle",
            "title": "6.Paquetes en detalle",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/6_Paquetes_en_detalle.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.309473"
          },
          {
            "path": "11.Dart_medio_7_Dart_Dev_Tools",
            "title": "7.Dart Dev Tools",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/7_Dart_Dev_Tools.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.308750"
          },
          {
            "path": "11.Dart_medio_8_Dart_tests,_introducción",
            "title": "8.Dart tests, introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/8_Dart_tests,_introducción.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.309833"
          },
          {
            "path": "11.Dart_medio_9_Test_driven_development",
            "title": "9.Test driven development",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/9_Test_driven_development.md",
            "author": "The Monkslab",
            "published": "2023-02-15 08:56:34.309372"
          }
        ]
      }
    ];

    return _addCourse(
      docId: '4q3OBzCmxhQye1DU0mla', 
      title: 'Dart y TDD', 
      description: 'Aprender a programar desde cero desde fin a principio, aprendiendo a testear a cada paso', 
      course: course,
    );
  }

  Future<void> createCicdCourseIndexes() async {

  }

  Future<void> _addCourse({
    required String docId, 
    required String title, 
    required String description, 
    required dynamic course,
  }) async {
    try {
      final sectionsList = [];
      // sections
      for (var i = 0; i < course.length; i++) {
        final sectionPath = course[i]['path'] as String;
        sectionsList.add({
          'path': sectionPath,
          'title': course[i]['title'],
        });
        //! delete
        _firestore.collection('section').doc('section_$i').delete();
        //! set
        _firestore.collection('section').doc(sectionPath).set(course[i]);

        // articles
        final List<Map<String, dynamic>> articlesList =
            course[i]['articles'] as List<Map<String, dynamic>>;

        for (var j = 0; j < articlesList.length; j++) {
          final articlePath = articlesList[j]['path'] as String;

          //! delete
          _firestore.collection('article').doc('article_$j').delete();
          //! set
          _firestore
              .collection('article')
              .doc(articlePath)
              .set((articlesList[j]));
        }
      }
      _firestore.collection('course').doc(docId).set({
        'title': title,
        'description':
            description,
        'sections': sectionsList,
      });
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<LearningPath> getLearningPath(String path) async {
    final doc = await _firestore.collection('learningPath').doc(path).get();
    return LearningPath.fromDocumentSnapshot(doc);
  }

  Future<Course> getCourse(String path) async {
    final doc = await _firestore.collection('course').doc(path).get();
    return Course.fromDocumentSnapshot(doc);
  }

  Future<Section> getSection(String path) async {
    final doc = await _firestore.collection('section').doc(path).get();
    return Section.fromDocumentSnapshot(doc);
  }

  Future<Article> getArticle(String path) async {
    final doc = await _firestore.collection('article').doc(path).get();
    final contentUrl = doc.data()!['contentUrl'];
    final articleContent = await _httpApi.getRequest(contentUrl);
    final articleNameUrl = contentUrl.split('/').last;
    final urlWithoutArticlePath = contentUrl.replaceAll(articleNameUrl, '');
    final formattedContent = formatGitHubImagesUrls(articleContent, urlWithoutArticlePath);
    return Article(
      id: doc.id,
      title: doc.data()!['title'],
      description: doc.data()!['description'],
      content: formattedContent,
      author: Author(name: doc.data()!['author'], picture: 'mau_photo'),
      published: doc.data()!['published'],
    );
  }
}