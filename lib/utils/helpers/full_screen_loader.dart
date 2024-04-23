import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_template/utils/consts/colors.dart';
import 'package:flutter_template/utils/helpers/external_helper_functions.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyLoader {
  late BuildContext context;

  MyLoader(this.context);

  // this is where you would do your fullscreen loading
  Future<void> startLoading() async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const SimpleDialog(
          elevation: 0.0,
          backgroundColor:
              Colors.transparent, // can change this to your prefered color
          children: <Widget>[
            Center(
              child: SpinKitFadingCircle(
                color: MyColors.light,
              ),
            )
          ],
        );
      },
    );
  }

  Future<void> stopLoading() async {
    Navigator.of(context).pop();
  }

  Future<void> showError(Object? error) async {
    MyExternalHelperFunction.showToast(message: error.toString());
  }
}
