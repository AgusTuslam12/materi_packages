import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Avatar Glow",
          ),
        ),
      ),
      body: Center(
        child: AvatarGlow(
          endRadius: 140.0,
          glowColor: Colors.blueAccent,
          child: Material(
            // Replace this child with your own
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/lego/5.jpg",
              ),
              radius: 80.0,
            ),
          ),
        ),
      ),
    );
  }
}
