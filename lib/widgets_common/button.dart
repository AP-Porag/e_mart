import 'package:e_mart/consts/consts.dart';

Widget button({onPressed, color, textColor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: () {
      onPressed;
    },
    child: title!.text.color(textColor).fontFamily(bold).make(),
  );
}
