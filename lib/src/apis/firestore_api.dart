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
        "path": "1.Introduction",
        "title": "1.Introduction",
        "description": "",
        "articles": [
          {
            "path": "1.Introduction_1_Introduction",
            "title": "1.Introduction",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introduction/1_Introduction.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.448405"
          },
          {
            "path": "1.Introduction_2_What_we_expect",
            "title": "2.What we expect",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introduction/2_What_we_expect.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.448538"
          },
          {
            "path": "1.Introduction_3_Introduction_to_Dart",
            "title": "3.Introduction to Dart",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introduction/3_Introduction_to_Dart.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.448713"
          },
          {
            "path": "1.Introduction_4_Introduction_to_Dartpad",
            "title": "4.Introduction to Dartpad",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.Introduction/4_Introduction_to_Dartpad.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.448636"
          }
        ]
      },
      {
        "path": "2.Dart_basics",
        "title": "2.Dart basics",
        "description": "",
        "articles": [
          {
            "path": "2.Dart_basics_1_Introduction",
            "title": "1.Introduction",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/1_Introduction.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452740"
          },
          {
            "path": "2.Dart_basics_2_Main_method",
            "title": "2.Main method",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/2_Main_method.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453911"
          },
          {
            "path": "2.Dart_basics_3_First_program",
            "title": "3.First program",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/3_First_program.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452886"
          },
          {
            "path": "2.Dart_basics_4_Variables_declaration_and_initialization",
            "title": "4.Variables declaration and initialization",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/4_Variables_declaration_and_initialization.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452941"
          },
          {
            "path": "2.Dart_basics_5_Basic_types",
            "title": "5.Basic types",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/5_Basic_types.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453780"
          },
          {
            "path": "2.Dart_basics_6_Escaping_character",
            "title": "6.Escaping character",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/6_Escaping_character.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453025"
          },
          {
            "path": "2.Dart_basics_7_Multilines",
            "title": "7.Multilines",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/7_Multilines.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453671"
          },
          {
            "path": "2.Dart_basics_8_Common_methods_in_texts",
            "title": "8.Common methods in texts",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/8_Common_methods_in_texts.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453625"
          },
          {
            "path": "2.Dart_basics_9_Initialization_and_assignment",
            "title": "9.Initialization and assignment",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/9_Initialization_and_assignment.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453254"
          },
          {
            "path": "2.Dart_basics_10_Contains_and_replace",
            "title": "10.Contains and replace",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/10_Contains_and_replace.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452832"
          },
          {
            "path": "2.Dart_basics_11_Type_conversions",
            "title": "11.Type conversions",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/11_Type_conversions.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452675"
          },
          {
            "path": "2.Dart_basics_12_Arithmetic_operations",
            "title": "12.Arithmetic operations",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/12_Arithmetic_operations.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453575"
          },
          {
            "path": "2.Dart_basics_13_Increment_and_decrement_operators",
            "title": "13.Increment and decrement operators",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/13_Increment_and_decrement_operators.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453864"
          },
          {
            "path":
                "2.Dart_basics_14_Logical_equality_and_relational_operators",
            "title": "14.Logical equality and relational operators",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/14_Logical_equality_and_relational_operators.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453491"
          },
          {
            "path": "2.Dart_basics_15_Conditional_operator",
            "title": "15.Conditional operator",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/15_Conditional_operator.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453312"
          },
          {
            "path": "2.Dart_basics_16_Comments",
            "title": "16.Comments",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/16_Comments.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.454287"
          },
          {
            "path": "2.Dart_basics_17_Expressions_and_statements",
            "title": "17.Expressions and statements",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/17_Expressions_and_statements.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.453114"
          },
          {
            "path": "2.Dart_basics_18_Assertions",
            "title": "18.Assertions",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_basics/18_Assertions.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.454212"
          }
        ]
      },
      {
        "path": "3.Type_system",
        "title": "3.Type system",
        "description": "",
        "articles": [
          {
            "path": "3.Type_system_1_introduction",
            "title": "1.introduction",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Type_system/1_introduction.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.456022"
          },
          {
            "path": "3.Type_system_2_Static_and_dnamic_languages",
            "title": "2.Static and dnamic languages",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Type_system/2_Static_and_dnamic_languages.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.456170"
          },
          {
            "path": "3.Type_system_3_type_inference",
            "title": "3.type inference",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Type_system/3_type_inference.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.456260"
          },
          {
            "path": "3.Type_system_4_final_keyword",
            "title": "4.final keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Type_system/4_final_keyword.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.456214"
          },
          {
            "path": "3.Type_system_5_const_keyword",
            "title": "5.const keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Type_system/5_const_keyword.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.456302"
          },
          {
            "path": "3.Type_system_6_dynamic_keyword",
            "title": "6.dynamic keyword",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Type_system/6_dynamic_keyword.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.456097"
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
            "published": "2023-02-21 17:25:12.451942"
          },
          {
            "path": "4.Flujo_de_control_2_if_else",
            "title": "2.if else",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/2_if_else.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452167"
          },
          {
            "path": "4.Flujo_de_control_3_while_loop",
            "title": "3.while loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/3_while_loop.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452328"
          },
          {
            "path": "4.Flujo_de_control_4_for_loop",
            "title": "4.for loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/4_for_loop.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.451996"
          },
          {
            "path": "4.Flujo_de_control_5_break_continue",
            "title": "5.break continue",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/5_break_continue.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452049"
          },
          {
            "path": "4.Flujo_de_control_6_switch",
            "title": "6.switch",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/6_switch.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452276"
          },
          {
            "path": "4.Flujo_de_control_7_enumerations",
            "title": "7.enumerations",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/7_enumerations.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.452224"
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
            "published": "2023-02-21 17:25:12.450025"
          },
          {
            "path": "5.App_linea_comando_2_Dart_sdk",
            "title": "2.Dart sdk",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/2_Dart_sdk.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.449900"
          },
          {
            "path":
                "5.App_linea_comando_3_Crear,_correr_y_debuggear_en_VS_Code",
            "title": "3.Crear, correr y debuggear en VS Code",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/3_Crear,_correr_y_debuggear_en_VS_Code.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.450121"
          },
          {
            "path": "5.App_linea_comando_4_Resúmen_del_juego",
            "title": "4.Resúmen del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/4_Resúmen_del_juego.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.449704"
          },
          {
            "path": "5.App_linea_comando_5_Creando_una_app_en_línea_de_comando",
            "title": "5.Creando una app en línea de comando",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/5_Creando_una_app_en_línea_de_comando.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.450501"
          },
          {
            "path": "5.App_linea_comando_6_pseudo_code_del_juego",
            "title": "6.pseudo code del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/6_pseudo_code_del_juego.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.450371"
          },
          {
            "path": "5.App_linea_comando_7_Obteniendo_user_input",
            "title": "7.Obteniendo user input",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/7_Obteniendo_user_input.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.449604"
          },
          {
            "path": "5.App_linea_comando_8_Implementando_el_loop",
            "title": "8.Implementando el loop",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/8_Implementando_el_loop.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.449811"
          },
          {
            "path": "5.App_linea_comando_9_Implementando_la_lógica_del_juego",
            "title": "9.Implementando la lógica del juego",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.App_linea_comando/9_Implementando_la_lógica_del_juego.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.450208"
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
            "published": "2023-02-21 17:25:12.455517"
          },
          {
            "path": "6.Collections_2_Lists",
            "title": "2.Lists",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/2_Lists.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455248"
          },
          {
            "path": "6.Collections_3_List_methods",
            "title": "3.List methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/3_List_methods.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455293"
          },
          {
            "path": "6.Collections_4_Type_annotations",
            "title": "4.Type annotations",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/4_Type_annotations.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455568"
          },
          {
            "path": "6.Collections_5_var_final_const_with_lists",
            "title": "5.var final const with lists",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/5_var_final_const_with_lists.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455702"
          },
          {
            "path": "6.Collections_6_Sets",
            "title": "6.Sets",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/6_Sets.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455745"
          },
          {
            "path": "6.Collections_7_Maps",
            "title": "7.Maps",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/7_Maps.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455339"
          },
          {
            "path": "6.Collections_8_Type_test_operators",
            "title": "8.Type test operators",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/8_Type_test_operators.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455384"
          },
          {
            "path": "6.Collections_9_Iterating_on_maps",
            "title": "9.Iterating on maps",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/9_Iterating_on_maps.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455613"
          },
          {
            "path": "6.Collections_10_Nested_collections",
            "title": "10.Nested collections",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/10_Nested_collections.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455803"
          },
          {
            "path": "6.Collections_11_Nuevos_operadores_y_statements",
            "title": "11.Nuevos operadores y statements",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/11_Nuevos_operadores_y_statements.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455452"
          },
          {
            "path": "6.Collections_12_Copiando_colecciones",
            "title": "12.Copiando colecciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/6.Collections/12_Copiando_colecciones.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.455657"
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
            "published": "2023-02-21 17:25:12.446740"
          },
          {
            "path":
                "7.Procesamiento_de_datos_2_Parseando_argumentos_desde_línea_de_comando",
            "title": "2.Parseando argumentos desde línea de comando",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/2_Parseando_argumentos_desde_línea_de_comando.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.446988"
          },
          {
            "path": "7.Procesamiento_de_datos_3_Leyendo_archivos_línea_a_línea",
            "title": "3.Leyendo archivos línea a línea",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/3_Leyendo_archivos_línea_a_línea.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.446619"
          },
          {
            "path": "7.Procesamiento_de_datos_4_Requerimientos_del_ejercicio",
            "title": "4.Requerimientos del ejercicio",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/4_Requerimientos_del_ejercicio.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.445171"
          },
          {
            "path": "7.Procesamiento_de_datos_5_Implementando_la_lógica",
            "title": "5.Implementando la lógica",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/5_Implementando_la_lógica.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.447075"
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
            "published": "2023-02-21 17:25:12.449264"
          },
          {
            "path": "8.Null_safety_2_Nullable_and_non_nullable_variables",
            "title": "2.Nullable and non nullable variables",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/2_Nullable_and_non_nullable_variables.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.449142"
          },
          {
            "path": "8.Null_safety_3_Flow_analysis",
            "title": "3.Flow analysis",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/3_Flow_analysis.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.449320"
          },
          {
            "path": "8.Null_safety_4_jerarquías",
            "title": "4.jerarquías",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/4_jerarquías.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.448972"
          },
          {
            "path": "8.Null_safety_5_Assertion_operator",
            "title": "5.Assertion operator",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/8.Null_safety/5_Assertion_operator.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.449203"
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
            "published": "2023-02-21 17:25:12.451250"
          },
          {
            "path": "9.Functions_2_Primeras_funciones",
            "title": "2.Primeras funciones",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/2_Primeras_funciones.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.450732"
          },
          {
            "path": "9.Functions_3_Function_arguments",
            "title": "3.Function arguments",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/3_Function_arguments.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.451352"
          },
          {
            "path": "9.Functions_4_Valor_de_retorno",
            "title": "4.Valor de retorno",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/4_Valor_de_retorno.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.451460"
          },
          {
            "path": "9.Functions_5_Argumentos_posicionales_y_nombrados",
            "title": "5.Argumentos posicionales y nombrados",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/5_Argumentos_posicionales_y_nombrados.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.450856"
          },
          {
            "path": "9.Functions_6_Fat_arrow_notation",
            "title": "6.Fat arrow notation",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/6_Fat_arrow_notation.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.451073"
          },
          {
            "path": "9.Functions_7_Lexical_scope",
            "title": "7.Lexical scope",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/7_Lexical_scope.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.450914"
          },
          {
            "path": "9.Functions_8_Pure_functions",
            "title": "8.Pure functions",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/8_Pure_functions.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.451405"
          },
          {
            "path": "9.Functions_9_Anonymous_functions",
            "title": "9.Anonymous functions",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/9_Anonymous_functions.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.450966"
          },
          {
            "path": "9.Functions_10_Function_types",
            "title": "10.Function types",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/10_Function_types.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.451019"
          },
          {
            "path": "9.Functions_11_New_methods_on_collections",
            "title": "11.New methods on collections",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/11_New_methods_on_collections.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.451197"
          },
          {
            "path": "9.Functions_12_Code_reusability",
            "title": "12.Code reusability",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/12_Code_reusability.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.451301"
          },
          {
            "path": "9.Functions_13_New_methods_part_two",
            "title": "13.New methods part two",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/13_New_methods_part_two.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.450792"
          },
          {
            "path": "9.Functions_14_Functional_vs_Imperative_Programming",
            "title": "14.Functional vs Imperative Programming",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/9.Functions/14_Functional_vs_Imperative_Programming.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.451130"
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
            "published": "2023-02-21 17:25:12.454729"
          },
          {
            "path": "10.Classes_2_Introducción_a_Classes",
            "title": "2.Introducción a Classes",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/2_Introducción_a_Classes.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.454665"
          },
          {
            "path": "10.Classes_3_Instance_methods",
            "title": "3.Instance methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/3_Instance_methods.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.454979"
          },
          {
            "path": "10.Classes_4_Class_constructors",
            "title": "4.Class constructors",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/4_Class_constructors.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.454848"
          },
          {
            "path": "10.Classes_5_Getters_y_setters",
            "title": "5.Getters y setters",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/5_Getters_y_setters.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.454572"
          },
          {
            "path": "10.Classes_6_Más_sobre_variables_y_methods",
            "title": "6.Más sobre variables y methods",
            "description": "",
            "contentUrl":
                "https://raw.githubusercontent.com/themonkslab/courses/main/dart/10.Classes/6_Más_sobre_variables_y_methods.md",
            "author": "The Monkslab",
            "published": "2023-02-21 17:25:12.454928"
          }
        ]
      }
    ];
    return _addCourse(
      docId: '4q3OBzCmxhQye1DU0mla',
      title: 'Dart y TDD',
      description:
          'Aprender a programar desde cero desde fin a principio, aprendiendo a testear a cada paso',
      course: course,
    );
  }

  Future<void> createCicdCourseIndexes() async {}

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
        'description': description,
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
    final formattedContent =
        formatGitHubImagesUrls(articleContent, urlWithoutArticlePath);
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
