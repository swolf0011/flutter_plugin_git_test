import 'package:flutter/material.dart';

//矩形》可带边框
Widget nyContainerRectangle(double width, double height, Widget child, {Color bgCol: Colors.white, borderWidth: 0.0, borderCol: Colors.black}) {
  return Container(
    width: width,
    height: height,
    decoration: _boxDecorationRectangle(bgCol, borderWidth, borderCol),
    child: child,
  );
}

//圆形》可带边框
Widget nyContainerCircle(double width_height, Widget child, {Color bgCol = Colors.white, borderWidth: 0.0, borderCol: Colors.black}) {
  return Container(
    width: width_height,
    height: width_height,
    decoration: _boxDecorationCircle(width_height, bgCol, borderWidth, borderCol),
    child: child,
  );
}

//圆角》可带边框
Widget nyContainerRadius(double width, double height, Widget child, double r, {Color bgCol: Colors.white, borderWidth: 0.0, borderCol: Colors.black}) {
  return Container(
    width: width,
    height: height,
    decoration: _boxDecorationRadius(r, bgCol, borderWidth, borderCol),
    child: child,
  );
}

//圆角分别设置4个角带》可带边框
Widget nyContainerRadius4(double width, double height, Widget child, double topLeftRadius, double tl, double tr, double bl, double br,
    {Color bgCol: Colors.white, borderWidth: 0.0, borderCol: Colors.black}) {
  return Container(
    width: width,
    height: height,
    decoration: _boxDecorationRadius4(tl, tr, bl, br, bgCol, borderWidth, borderCol),
    child: child,
  );
}

BoxDecoration _boxDecorationRectangle(Color bgCol, double borderWidth, Color borderCol) {
  Border border = null;
  if (borderWidth > 0.0) {
    border = Border.all(width: borderWidth, color: borderCol);
  }
  return BoxDecoration(color: bgCol, shape: BoxShape.rectangle, border: border);
}

BoxDecoration _boxDecorationCircle(double r, Color bgCol, double borderWidth, Color borderCol) {
  Border border = null;
  if (borderWidth > 0.0) {
    border = Border.all(width: borderWidth, color: borderCol);
  }
  return BoxDecoration(
    color: bgCol,
    borderRadius: BorderRadius.circular(r),
    border: border,
  );
}

BoxDecoration _boxDecorationRadius(double r, Color bgCol, double borderWidth, Color borderCol) {
  Border border = null;
  if (borderWidth > 0.0) {
    border = Border.all(width: borderWidth, color: borderCol);
  }
  return BoxDecoration(
    color: bgCol,
    borderRadius: BorderRadius.all(Radius.circular(r)),
    border: border,
  );
}

BoxDecoration _boxDecorationRadius4(double tl, double tr, double bl, double br, Color bgCol, double borderWidth, Color borderCol) {
  Border border = null;
  if (borderWidth > 0.0) {
    border = Border.all(width: borderWidth, color: borderCol);
  }
  return BoxDecoration(
    color: bgCol,
    borderRadius:
        BorderRadius.only(topLeft: Radius.circular(tl), topRight: Radius.circular(tr), bottomLeft: Radius.circular(bl), bottomRight: Radius.circular(br)),
    border: border,
  );
}
