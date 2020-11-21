import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String lable;
  final Function onTap;

  const CustomBtn({Key key, this.lable, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onTap,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          lable,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    );
  }
}
