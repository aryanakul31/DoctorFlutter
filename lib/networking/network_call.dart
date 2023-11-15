import 'dart:convert';

import 'package:doctors/models/request/SignUpRequestModel.dart';
import 'package:doctors/networking/urls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/custom_base_response.dart';
import '../ui/ui_utils.dart';

sealed class NW<T> {
  void loading();

  void error(String message);

  void success(T data);
}

// DIO
class NetworkCall {
  static Future<SignUpRequestModel?> registerUser(
      {required SignUpRequestModel signUpRequestModel,
      required BuildContext context}) async {
    var result = await NetworkCall().post(
        url: Urls.createUser,
        requestData: signUpRequestModel,
        context: context);
    return result == null ? null : SignUpRequestModel.fromJson(result);
  }

  bool handleResponseCode(
      {required http.Response response, required BuildContext context}) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return true;
    } else if ((response.statusCode >= 100 && response.statusCode < 400) ||
        response.statusCode == 404 ||
        (response.statusCode >= 500 && response.statusCode < 600)) {
      showSnackBar("Some error occurred.", context: context);
    } else if (response.statusCode == 401) {
      showSnackBar("Session Expired", context: context);
      //Handle Session Expired
    } else {
      var json = jsonDecode(response.body);
      showSnackBar(json["message"], context: context);
    }
    return false;
  }

  Future<dynamic> post<T>({
    required BuildContext context,
    required String url,
    String? token,
    required T requestData,
  }) async {
    final response = await http.post(
      Uri.parse("${Urls.baseUrl}$url"),
      headers: getHeaders(token: token),
      body: jsonEncode(requestData),
    );
    if (kDebugMode) {
      print("URLS -->${Urls.baseUrl}$url");
      print("REQUEST -->${jsonEncode(requestData)}");
      print("Response -->${jsonDecode(response.body)}");
    }
    if (context.mounted &&
        handleResponseCode(context: context, response: response)) {
      var data = CustomBaseResponse.fromJson(jsonDecode(response.body));
      return data.data;
    } else {
      return null;
    }
  }

  Map<String, String> getHeaders({String? token}) {
    return <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      if (token != null) 'Auth': token,
    };
  }
}
