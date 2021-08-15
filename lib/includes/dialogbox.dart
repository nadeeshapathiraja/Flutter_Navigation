import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';

class DialogBoxs {
  AwesomeDialog dialogBox(
    BuildContext context,
    String title,
    String desc,
    DialogType dialogtype,
  ) {
    return AwesomeDialog(
      context: context,
      dialogType: dialogtype,
      animType: AnimType.BOTTOMSLIDE,
      title: title,
      desc: desc,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    )..show();
  }
}
