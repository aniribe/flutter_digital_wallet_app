import 'package:flutter/cupertino.dart';

Widget verticalSpace(double height) => SizedBox(height: height);
Widget horizontalSpace(double width) => SizedBox(width: width);

double? screenWidth(BuildContext context) {
  return context.size?.width;
}

double? screenHeight(BuildContext context) {
  return context.size?.height;
}
