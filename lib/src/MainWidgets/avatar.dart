import 'package:avatar_glow/avatar_glow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;

  const Avatar({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: Colors.red,
      endRadius: 90.0,
      duration: Duration(milliseconds: 2000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: Duration(milliseconds: 100),
      child: Material(
        elevation: 8.0,
        shape: CircleBorder(),
        child: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(image),
          radius: 60,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
