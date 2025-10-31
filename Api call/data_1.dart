// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Data {
//   String baseURL = "http://localhost:56009/firstapp/students/";

//   Future<List<dynamic>> getData() async {
//     try {
//       final response = await http.get(Uri.parse(baseURL));

//       if (response.statusCode == 200) {
//         return jsonDecode(response.body) as List<dynamic>;
//       } else {
//         return [];
//       }
//     } catch (e) {
//       return [];
//     }
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Data {
//   final String baseURL = "http://localhost:56009/firstapp/students/";

//   Future<List<dynamic>> getData() async {
//     try {
//       final response = await http.get(Uri.parse(baseURL));

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         if (data is List) {
//           return data; // Ensure the response body is a List
//         } else {
//           debugPrint("Unexpected data format: ${response.body}");
//           return [];
//         }
//       } else {
//         debugPrint("Failed to fetch data. Status code: ${response.statusCode}");
//         return [];
//       }
//     } catch (e) {
//       debugPrint("Error fetching data: $e");
//       return [];
//     }
//   }
// }
import 'dart:convert';

// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Data {
  String url = 'http://127.0.0.1:8000/firstapp/students/';
  Future<List> getData() async {
    var response = await http.get(Uri.parse(url));
    try{

      if (response.statusCode == 200) {
        return jsonDecode(response.body) as List<dynamic>;
     } else{
      return [];
     }
  } catch(error){
    return [];
  }

}
}
