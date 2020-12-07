import 'package:http/http.dart' as http;
import 'dart:convert' as dartPackageConvert;

import '../utilities/constants.dart';

import 'package:fluttertoast/fluttertoast.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<dynamic> getData() async {
    http.Response response;

    String message = '$kNetworkingDotGetDataMethod $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);

    try {

      message = '$kNetworkingDotGetDataMethod = tryBlockStart before await http.get() $kSwiggly';
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        // textColor: Colors.white,
        fontSize: 16.0);
    print(message);


      response = await http.get(url);

      message = '$kNetworkingDotGetDataMethod = awaited http.get() but whats the response value $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);

      message = '$kNetworkingDotGetDataMethod = tryBlockEnd response value: $response $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);


    } catch (e) {

      message = '$kNetworkingDotGetDataMethod = catchBlockStart response value: $response $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);

      message = '$kNetworkingDotGetDataMethod = catchBlockEnd exception value: $e $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);

    }

    if (response?.statusCode == 200) {


      var data = dartPackageConvert.jsonDecode(response.body);

      message = '$kNetworkingDotGetDataMethod = dartPackageConvert.jsonDecoded(response.body) value: $data $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);


      message = '$kNetworkingDotGetDataMethod = returning dartPackageConvert.jsonDecoded(response.body)  $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);

      return data;
    }

    if (response != null) {

      message = '$kNetworkingDotGetDataMethod = response != null $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);

      message = '$kNetworkingDotGetDataMethod = response.statusCode: ${response.statusCode} $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);

      // return 'Not Null';
    } else {

      message = '$kNetworkingDotGetDataMethod = response == null $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);


      message = '$kNetworkingDotGetDataMethod = response.statusCode: ${response.statusCode} $kSwiggly';
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Colors.red,
          // textColor: Colors.white,
          fontSize: 16.0);
      print(message);


    }

  }
}
