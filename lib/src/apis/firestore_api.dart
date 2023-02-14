import 'dart:convert';

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
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.113830"
          },
          {
            "path": "1.Introducción_2_Qué_esperamos_nosotros",
            "title": "2.Qué esperamos nosotros",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/2_Qué_esperamos_nosotros.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.113734"
          },
          {
            "path": "1.Introducción_3_Introducción_a_Dart",
            "title": "3.Introducción a Dart",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/3_Introducción_a_Dart.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.113888"
          },
          {
            "path": "1.Introducción_4_Introducción_a_Dartpad",
            "title": "4.Introducción a Dartpad",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introducción/4_Introducción_a_Dartpad.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.114046"
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
            "published": "2022-12-15 08:10:48.110681"
          },
          {
            "path": "2.Dart_básico_2_Método_main",
            "title": "2.Método main",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/2_Método_main.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111942"
          },
          {
            "path": "2.Dart_básico_3_Primer_programa",
            "title": "3.Primer programa",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/3_Primer_programa.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.110294"
          },
          {
            "path": "2.Dart_básico_4_Variables,declaración_e_inicialización",
            "title": "4.Variables,declaración e inicialización",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/4_Variables,declaración_e_inicialización.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111244"
          },
          {
            "path": "2.Dart_básico_5_Tipos_básicos",
            "title": "5.Tipos básicos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/5_Tipos_básicos.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111830"
          },
          {
            "path": "2.Dart_básico_6_Escape_caracteres",
            "title": "6.Escape caracteres",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/6_Escape_caracteres.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111770"
          },
          {
            "path": "2.Dart_básico_7_Líneas_múltiples_de_texto",
            "title": "7.Líneas múltiples de texto",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/7_Líneas_múltiples_de_texto.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111056"
          },
          {
            "path": "2.Dart_básico_8_Métodos_comunes_en_textos",
            "title": "8.Métodos comunes en textos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/8_Métodos_comunes_en_textos.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111350"
          },
          {
            "path": "2.Dart_básico_9_Inicialización_y_asignación",
            "title": "9.Inicialización y asignación",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/9_Inicialización_y_asignación.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111653"
          },
          {
            "path": "2.Dart_básico_10_Contiene_y_reemplazar",
            "title": "10.Contiene y reemplazar",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/10_Contiene_y_reemplazar.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111712"
          },
          {
            "path": "2.Dart_básico_11_Conversiones_entre_tipos",
            "title": "11.Conversiones entre tipos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/11_Conversiones_entre_tipos.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.110399"
          },
          {
            "path": "2.Dart_básico_12_Operaciones_aritméticas",
            "title": "12.Operaciones aritméticas",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/12_Operaciones_aritméticas.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.110177"
          },
          {
            "path": "2.Dart_básico_13_Operadores_de_incremento_y_decremento",
            "title": "13.Operadores de incremento y decremento",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/13_Operadores_de_incremento_y_decremento.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.110873"
          },
          {
            "path":
                "2.Dart_básico_14_Operadores_lógicos_,_de_igualdad_y_relaciones",
            "title": "14.Operadores lógicos , de igualdad y relaciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/14_Operadores_lógicos_,_de_igualdad_y_relaciones.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.112009"
          },
          {
            "path": "2.Dart_básico_15_Operador_condicional",
            "title": "15.Operador condicional",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/15_Operador_condicional.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111172"
          },
          {
            "path": "2.Dart_básico_16_Comentarios",
            "title": "16.Comentarios",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/16_Comentarios.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.110804"
          },
          {
            "path": "2.Dart_básico_17_Expresiones_y_declaraciones",
            "title": "17.Expresiones y declaraciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/17_Expresiones_y_declaraciones.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.111473"
          },
          {
            "path": "2.Dart_básico_18_Afirmaciones",
            "title": "18.Afirmaciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_básico/18_Afirmaciones.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.110505"
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
            "published": "2022-12-15 08:10:48.114408"
          },
          {
            "path": "3.Sistema_de_tipado_2_Lenguajes_estáticos_y_dinámicos",
            "title": "2.Lenguajes estáticos y dinámicos",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/2_Lenguajes_estáticos_y_dinámicos.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.114515"
          },
          {
            "path": "3.Sistema_de_tipado_3_Inferencia_de_tipo",
            "title": "3.Inferencia de tipo",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/3_Inferencia_de_tipo.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.114323"
          },
          {
            "path": "3.Sistema_de_tipado_4_final_keyword",
            "title": "4.final keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/4_final_keyword.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.114456"
          },
          {
            "path": "3.Sistema_de_tipado_5_const_keyword",
            "title": "5.const keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/5_const_keyword.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.114567"
          },
          {
            "path": "3.Sistema_de_tipado_6_dynamic_keyword",
            "title": "6.dynamic keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/6_dynamic_keyword.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.114272"
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
            "published": "2022-12-15 08:10:48.114998"
          },
          {
            "path": "4.Flujo_de_control_2_if_else",
            "title": "2.if else",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/2_if_else.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115186"
          },
          {
            "path": "4.Flujo_de_control_3_while_loop",
            "title": "3.while loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/3_while_loop.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115353"
          },
          {
            "path": "4.Flujo_de_control_4_for_loop",
            "title": "4.for loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/4_for_loop.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115057"
          },
          {
            "path": "4.Flujo_de_control_5_break_continue",
            "title": "5.break continue",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/5_break_continue.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115108"
          },
          {
            "path": "4.Flujo_de_control_6_switch",
            "title": "6.switch",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/6_switch.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115304"
          },
          {
            "path": "4.Flujo_de_control_7_enumerations",
            "title": "7.enumerations",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/7_enumerations.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115232"
          }
        ]
      },
      {
        "path": "5.app_linea_comando",
        "title": "5.app linea comando",
        "description": "",
        "articles": [
          {
            "path": "5.app_linea_comando_1_Introducción",
            "title": "1.Introducción",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/1_Introducción.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.113045"
          },
          {
            "path": "5.app_linea_comando_2_Dart_sdk",
            "title": "2.Dart sdk",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/2_Dart_sdk.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.112930"
          },
          {
            "path":
                "5.app_linea_comando_3_Crear,_correr_y_debuggear_en_VS_Code",
            "title": "3.Crear, correr y debuggear en VS Code",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/3_Crear,_correr_y_debuggear_en_VS_Code.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.113132"
          },
          {
            "path": "5.app_linea_comando_4_Resúmen_del_juego",
            "title": "4.Resúmen del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/4_Resúmen_del_juego.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.112799"
          },
          {
            "path": "5.app_linea_comando_5_Creando_una_app_en_línea_de_comando",
            "title": "5.Creando una app en línea de comando",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/5_Creando_una_app_en_línea_de_comando.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.113428"
          },
          {
            "path": "5.app_linea_comando_6_pseudo_code_del_juego",
            "title": "6.pseudo code del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/6_pseudo_code_del_juego.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.113320"
          },
          {
            "path": "5.app_linea_comando_7_Obteniendo_user_input",
            "title": "7.Obteniendo user input",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/7_Obteniendo_user_input.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.112738"
          },
          {
            "path": "5.app_linea_comando_8_Implementando_el_loop",
            "title": "8.Implementando el loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/8_Implementando_el_loop.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.112849"
          },
          {
            "path": "5.app_linea_comando_9_Implementando_la_lógica_del_juego",
            "title": "9.Implementando la lógica del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/9_Implementando_la_lógica_del_juego.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.113191"
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
            "published": "2022-12-15 08:10:48.115809"
          },
          {
            "path": "6.Collections_2_Lists",
            "title": "2.Lists",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/2_Lists.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115571"
          },
          {
            "path": "6.Collections_3_List_methods",
            "title": "3.List methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/3_List_methods.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115618"
          },
          {
            "path": "6.Collections_4_Type_annotations",
            "title": "4.Type annotations",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/4_Type_annotations.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115859"
          },
          {
            "path": "6.Collections_5_var_final_const_with_lists",
            "title": "5.var final const with lists",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/5_var_final_const_with_lists.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.116001"
          },
          {
            "path": "6.Collections_6_Sets",
            "title": "6.Sets",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/6_Sets.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.116045"
          },
          {
            "path": "6.Collections_7_Maps",
            "title": "7.Maps",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/7_Maps.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115661"
          },
          {
            "path": "6.Collections_8_Type_test_operators",
            "title": "8.Type test operators",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/8_Type_test_operators.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115706"
          },
          {
            "path": "6.Collections_9_Iterating_on_maps",
            "title": "9.Iterating on maps",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/9_Iterating_on_maps.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115906"
          },
          {
            "path": "6.Collections_10_Nested_collections",
            "title": "10.Nested collections",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/10_Nested_collections.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.116091"
          },
          {
            "path": "6.Collections_11_Nuevos_operadores_y_statements",
            "title": "11.Nuevos operadores y statements",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/11_Nuevos_operadores_y_statements.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115755"
          },
          {
            "path": "6.Collections_12_Copiando_colecciones",
            "title": "12.Copiando colecciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/12_Copiando_colecciones.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.115953"
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
            "published": "2022-12-15 08:10:48.108530"
          },
          {
            "path":
                "7.Procesamiento_de_datos_2_Parseando_argumentos_desde_línea_de_comando",
            "title": "2.Parseando argumentos desde línea de comando",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/2_Parseando_argumentos_desde_línea_de_comando.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.108725"
          },
          {
            "path": "7.Procesamiento_de_datos_3_Leyendo_archivos_línea_a_línea",
            "title": "3.Leyendo archivos línea a línea",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/3_Leyendo_archivos_línea_a_línea.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.108408"
          },
          {
            "path": "7.Procesamiento_de_datos_4_Requerimientos_del_ejercicio",
            "title": "4.Requerimientos del ejercicio",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/4_Requerimientos_del_ejercicio.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.106790"
          },
          {
            "path": "7.Procesamiento_de_datos_5_Implementando_la_lógica",
            "title": "5.Implementando la lógica",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/5_Implementando_la_lógica.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.108795"
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
            "published": "2022-12-15 08:10:48.112443"
          },
          {
            "path": "8.Null_safety_2_Nullable_and_non_nullable_variables",
            "title": "2.Nullable and non nullable variables",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/2_Nullable_and_non_nullable_variables.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.112382"
          },
          {
            "path": "8.Null_safety_3_Flow_analysis",
            "title": "3.Flow analysis",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/3_Flow_analysis.md",
            "author": "Mau Di Bert",
            "published": "2022-12-15 08:10:48.112497"
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

class _CourseSectionModel {
  _CourseSectionModel({
    required this.path,
    required this.title,
  });
  final String path;
  final String title;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'path': path});
    result.addAll({'title': title});
  
    return result;
  }

  String toJson() => json.encode(toMap());
}
