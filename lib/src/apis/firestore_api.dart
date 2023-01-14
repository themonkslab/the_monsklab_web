import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:the_monkslab_web/src/apis/_index.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

class FirestoreApi {
  FirestoreApi({
    FirebaseFirestore? firestore,
    HttpApi? httpApi,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _httpApi = httpApi ?? HttpApi();

  final FirebaseFirestore _firestore;
  final HttpApi _httpApi;

  //TODO -MEDIUM/HARD- make better solution
  Future<void> createEmptyArticles() async {
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.695413"
          },
          {
            "path": "1.Introducción_2_Qué_esperamos_nosotros",
            "title": "2.Qué esperamos nosotros",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/2_Qué_esperamos_nosotros.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.695315"
          },
          {
            "path": "1.Introducción_3_Introducción_a_Dart",
            "title": "3.Introducción a Dart",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/3_Introducción_a_Dart.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.695469"
          },
          {
            "path": "1.Introducción_4_Introducción_a_Dartpad",
            "title": "4.Introducción a Dartpad",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/4_Introducción_a_Dartpad.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.695526"
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.691654"
          },
          {
            "path": "2.Dart_básico_2_Método_main",
            "title": "2.Método main",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/2_Método_main.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692993"
          },
          {
            "path": "2.Dart_básico_3_Primer_programa",
            "title": "3.Primer programa",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/3_Primer_programa.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.691214"
          },
          {
            "path": "2.Dart_básico_4_Variables,declaración_e_inicialización",
            "title": "4.Variables,declaración e inicialización",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/4_Variables,declaración_e_inicialización.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692266"
          },
          {
            "path": "2.Dart_básico_5_Tipos_básicos",
            "title": "5.Tipos básicos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/5_Tipos_básicos.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692876"
          },
          {
            "path": "2.Dart_básico_6_Escape_caracteres",
            "title": "6.Escape caracteres",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/6_Escape_caracteres.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692818"
          },
          {
            "path": "2.Dart_básico_7_Líneas_múltiples_de_texto",
            "title": "7.Líneas múltiples de texto",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/7_Líneas_múltiples_de_texto.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692085"
          },
          {
            "path": "2.Dart_básico_8_Métodos_comunes_en_textos",
            "title": "8.Métodos comunes en textos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/8_Métodos_comunes_en_textos.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692380"
          },
          {
            "path": "2.Dart_básico_9_Inicialización_y_asignación",
            "title": "9.Inicialización y asignación",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/9_Inicialización_y_asignación.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692701"
          },
          {
            "path": "2.Dart_básico_10_Contiene_y_reemplazar",
            "title": "10.Contiene y reemplazar",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/10_Contiene_y_reemplazar.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692761"
          },
          {
            "path": "2.Dart_básico_11_Conversiones_entre_tipos",
            "title": "11.Conversiones entre tipos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/11_Conversiones_entre_tipos.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.691327"
          },
          {
            "path": "2.Dart_básico_12_Operaciones_aritméticas",
            "title": "12.Operaciones aritméticas",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/12_Operaciones_aritméticas.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.691086"
          },
          {
            "path": "2.Dart_básico_13_Operadores_de_incremento_y_decremento",
            "title": "13.Operadores de incremento y decremento",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/13_Operadores_de_incremento_y_decremento.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.691884"
          },
          {
            "path":
                "2.Dart_básico_14_Operadores_lógicos_,_de_igualdad_y_relaciones",
            "title": "14.Operadores lógicos , de igualdad y relaciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/14_Operadores_lógicos_,_de_igualdad_y_relaciones.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.693062"
          },
          {
            "path": "2.Dart_básico_15_Operador_condicional",
            "title": "15.Operador condicional",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/15_Operador_condicional.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692195"
          },
          {
            "path": "2.Dart_básico_16_Comentarios",
            "title": "16.Comentarios",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/16_Comentarios.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.691802"
          },
          {
            "path": "2.Dart_básico_17_Expresiones_y_declaraciones",
            "title": "17.Expresiones y declaraciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/17_Expresiones_y_declaraciones.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.692486"
          },
          {
            "path": "2.Dart_básico_18_Afirmaciones",
            "title": "18.Afirmaciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/18_Afirmaciones.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.691435"
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696929"
          },
          {
            "path": "3.Sistema_de_tipado_2_Lenguajes_estáticos_y_dinámicos",
            "title": "2.Lenguajes estáticos y dinámicos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/2_Lenguajes_estáticos_y_dinámicos.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697027"
          },
          {
            "path": "3.Sistema_de_tipado_3_Inferencia_de_tipo",
            "title": "3.Inferencia de tipo",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/3_Inferencia_de_tipo.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696850"
          },
          {
            "path": "3.Sistema_de_tipado_4_final_keyword",
            "title": "4.final keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/4_final_keyword.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696975"
          },
          {
            "path": "3.Sistema_de_tipado_5_const_keyword",
            "title": "5.const keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/5_const_keyword.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697072"
          },
          {
            "path": "3.Sistema_de_tipado_6_dynamic_keyword",
            "title": "6.dynamic keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/6_dynamic_keyword.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696796"
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697435"
          },
          {
            "path": "4.Flujo_de_control_2_if_else",
            "title": "2.if else",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/2_if_else.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697600"
          },
          {
            "path": "4.Flujo_de_control_3_while_loop",
            "title": "3.while loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/3_while_loop.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697758"
          },
          {
            "path": "4.Flujo_de_control_4_for_loop",
            "title": "4.for loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/4_for_loop.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697482"
          },
          {
            "path": "4.Flujo_de_control_5_break_continue",
            "title": "5.break continue",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/5_break_continue.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697527"
          },
          {
            "path": "4.Flujo_de_control_6_switch",
            "title": "6.switch",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/6_switch.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697695"
          },
          {
            "path": "4.Flujo_de_control_7_enumerations",
            "title": "7.enumerations",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/7_enumerations.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697647"
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.694395"
          },
          {
            "path": "5.App_linea_comando_2_Dart_sdk",
            "title": "2.Dart sdk",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/2_Dart_sdk.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.694195"
          },
          {
            "path":
                "5.App_linea_comando_3_Crear,_correr_y_debuggear_en_VS_Code",
            "title": "3.Crear, correr y debuggear en VS Code",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/3_Crear,_correr_y_debuggear_en_VS_Code.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.694504"
          },
          {
            "path": "5.App_linea_comando_4_Resúmen_del_juego",
            "title": "4.Resúmen del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/4_Resúmen_del_juego.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.694057"
          },
          {
            "path": "5.App_linea_comando_5_Creando_una_app_en_línea_de_comando",
            "title": "5.Creando una app en línea de comando",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/5_Creando_una_app_en_línea_de_comando.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.694810"
          },
          {
            "path": "5.App_linea_comando_6_pseudo_code_del_juego",
            "title": "6.pseudo code del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/6_pseudo_code_del_juego.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.694705"
          },
          {
            "path": "5.App_linea_comando_7_Obteniendo_user_input",
            "title": "7.Obteniendo user input",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/7_Obteniendo_user_input.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.693998"
          },
          {
            "path": "5.App_linea_comando_8_Implementando_el_loop",
            "title": "8.Implementando el loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/8_Implementando_el_loop.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.694111"
          },
          {
            "path": "5.App_linea_comando_9_Implementando_la_lógica_del_juego",
            "title": "9.Implementando la lógica del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/9_Implementando_la_lógica_del_juego.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.694573"
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699369"
          },
          {
            "path": "6.Collections_2_Lists",
            "title": "2.Lists",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/2_Lists.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699041"
          },
          {
            "path": "6.Collections_3_List_methods",
            "title": "3.List methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/3_List_methods.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699085"
          },
          {
            "path": "6.Collections_4_Type_annotations",
            "title": "4.Type annotations",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/4_Type_annotations.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699412"
          },
          {
            "path": "6.Collections_5_var_final_const_with_lists",
            "title": "5.var final const with lists",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/5_var_final_const_with_lists.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699540"
          },
          {
            "path": "6.Collections_6_Sets",
            "title": "6.Sets",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/6_Sets.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699581"
          },
          {
            "path": "6.Collections_7_Maps",
            "title": "7.Maps",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/7_Maps.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699127"
          },
          {
            "path": "6.Collections_8_Type_test_operators",
            "title": "8.Type test operators",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/8_Type_test_operators.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699169"
          },
          {
            "path": "6.Collections_9_Iterating_on_maps",
            "title": "9.Iterating on maps",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/9_Iterating_on_maps.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699455"
          },
          {
            "path": "6.Collections_10_Nested_collections",
            "title": "10.Nested collections",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/10_Nested_collections.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699654"
          },
          {
            "path": "6.Collections_11_Nuevos_operadores_y_statements",
            "title": "11.Nuevos operadores y statements",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/11_Nuevos_operadores_y_statements.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699215"
          },
          {
            "path": "6.Collections_12_Copiando_colecciones",
            "title": "12.Copiando colecciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/12_Copiando_colecciones.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.699497"
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.689111"
          },
          {
            "path":
                "7.Procesamiento_de_datos_2_Parseando_argumentos_desde_línea_de_comando",
            "title": "2.Parseando argumentos desde línea de comando",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/2_Parseando_argumentos_desde_línea_de_comando.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.689403"
          },
          {
            "path": "7.Procesamiento_de_datos_3_Leyendo_archivos_línea_a_línea",
            "title": "3.Leyendo archivos línea a línea",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/3_Leyendo_archivos_línea_a_línea.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.688925"
          },
          {
            "path": "7.Procesamiento_de_datos_4_Requerimientos_del_ejercicio",
            "title": "4.Requerimientos del ejercicio",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/4_Requerimientos_del_ejercicio.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.687220"
          },
          {
            "path": "7.Procesamiento_de_datos_5_Implementando_la_lógica",
            "title": "5.Implementando la lógica",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/5_Implementando_la_lógica.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.689498"
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.693701"
          },
          {
            "path": "8.Null_safety_2_Nullable_and_non_nullable_variables",
            "title": "2.Nullable and non nullable variables",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/2_Nullable_and_non_nullable_variables.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.693602"
          },
          {
            "path": "8.Null_safety_3_Flow_analysis",
            "title": "3.Flow analysis",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/3_Flow_analysis.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.693749"
          },
          {
            "path": "8.Null_safety_4_jerarquías",
            "title": "4.jerarquías",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/4_jerarquías.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.693479"
          },
          {
            "path": "8.Null_safety_5_Assertion_operator",
            "title": "5.Assertion operator",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/5_Assertion_operator.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.693650"
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696291"
          },
          {
            "path": "9.Functions_2_Primeras_funciones",
            "title": "2.Primeras funciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/2_Primeras_funciones.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.695720"
          },
          {
            "path": "9.Functions_3_Function_arguments",
            "title": "3.Function arguments",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/3_Function_arguments.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696435"
          },
          {
            "path": "9.Functions_4_Valor_de_retorno",
            "title": "4.Valor de retorno",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/4_Valor_de_retorno.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696527"
          },
          {
            "path": "9.Functions_5_Argumentos_posicionales_y_nombrados",
            "title": "5.Argumentos posicionales y nombrados",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/5_Argumentos_posicionales_y_nombrados.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.695924"
          },
          {
            "path": "9.Functions_6_Fat_arrow_notation",
            "title": "6.Fat arrow notation",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/6_Fat_arrow_notation.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696113"
          },
          {
            "path": "9.Functions_7_Lexical_scope",
            "title": "7.Lexical scope",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/7_Lexical_scope.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.695971"
          },
          {
            "path": "9.Functions_8_Pure_functions",
            "title": "8.Pure functions",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/8_Pure_functions.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696481"
          },
          {
            "path": "9.Functions_9_Anonymous_functions",
            "title": "9.Anonymous functions",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/9_Anonymous_functions.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696019"
          },
          {
            "path": "9.Functions_10_Function_types",
            "title": "10.Function types",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/10_Function_types.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696066"
          },
          {
            "path": "9.Functions_11_New_methods_on_collections",
            "title": "11.New methods on collections",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/11_New_methods_on_collections.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696214"
          },
          {
            "path": "9.Functions_12_Code_reusability",
            "title": "12.Code reusability",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/12_Code_reusability.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696384"
          },
          {
            "path": "9.Functions_13_New_methods_part_two",
            "title": "13.New methods part two",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/13_New_methods_part_two.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.695820"
          },
          {
            "path": "9.Functions_14_Functional_vs_Imperative_Programming",
            "title": "14.Functional vs Imperative Programming",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/14_Functional_vs_Imperative_Programming.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.696165"
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
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.698591"
          },
          {
            "path": "10.Classes_2_Introducción_a_Classes",
            "title": "2.Introducción a Classes",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/2_Introducción_a_Classes.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.698536"
          },
          {
            "path": "10.Classes_3_Instance_methods",
            "title": "3.Instance methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/3_Instance_methods.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.698782"
          },
          {
            "path": "10.Classes_4_Class_constructors",
            "title": "4.Class constructors",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/4_Class_constructors.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.698675"
          },
          {
            "path": "10.Classes_5_Getters_y_setters",
            "title": "5.Getters y setters",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/5_Getters_y_setters.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.698475"
          },
          {
            "path": "10.Classes_6_Más_sobre_variables_y_methods",
            "title": "6.Más sobre variables y methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/6_Más_sobre_variables_y_methods.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.698735"
          }
        ]
      },
      {
        "path": "11.Dart_medio",
        "title": "11.Dart medio",
        "description": "",
        "articles": [
          {
            "path": "11.Dart_medio_1.Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/1.Introducción.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.698187"
          },
          {
            "path": "11.Dart_medio_2.La_terminal",
            "title": "2.La.terminal",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/2.La_terminal.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.698070"
          },
          {
            "path": "11.Dart_medio_3_Crear,_correr_y_debuggear",
            "title": "3.Crear, correr y debuggear",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/11.Dart_medio/3_Crear,_correr_y_debuggear.md",
            "author": "Mau Di Bert",
            "published": "2023-01-14 07:05:10.697986"
          }
        ]
      }
    ];

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
      _firestore.collection('course').doc('4q3OBzCmxhQye1DU0mla').set({
        'title': 'Dart y TDD',
        'description':
            'Aprender a programar desde cero desde fin a principio, aprendiendo a testear a cada paso',
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
    final articleContent = await _httpApi.getRequest(doc.data()!['contentUrl']);
    return Article(
      id: doc.id,
      title: doc.data()!['title'],
      description: doc.data()!['description'],
      content: articleContent,
      author: Author(name: doc.data()!['author'], picture: 'mau_photo'),
      published: doc.data()!['published'],
    );
  }
}
