import 'package:flutter/material.dart';

class SocialSignBtn extends StatelessWidget {
  final Function onTap;
  final String logo;
  final String lable;

  const SocialSignBtn({Key key, this.onTap, this.logo, this.lable})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage(logo), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                lable,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
