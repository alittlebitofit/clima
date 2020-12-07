import 'package:http/http.dart' as http;
import 'dart:convert' as dartPackageConvert;

import 'package:fluttertoast/fluttertoast.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<dynamic> getData() async {
    http.Response response;

    try {
      response = await http.get(url);
    } catch (e) {
      Fluttertoast.showToast(
          msg: e,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          fontSize: 16.0);
    }

    if (response?.statusCode == 200)
      return dartPackageConvert.jsonDecode(response.body);


    if (response == null) {
      Fluttertoast.showToast(
          msg: 'Something is wrong ${response?.statusCode}, coudln\'t fetch data from api :(',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          fontSize: 16.0);
    }

  }
}
