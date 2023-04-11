import 'package:e_mart/consts/consts.dart';

Widget applogowidget() {
  //using velocity x here
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
