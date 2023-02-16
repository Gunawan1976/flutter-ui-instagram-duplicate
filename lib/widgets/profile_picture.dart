import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.amber]),
              borderRadius: BorderRadius.circular(60)),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/536/354"),
                  fit: BoxFit.cover),
              color: Colors.grey,
              border: Border.all(color: Colors.white, width: 5),
              borderRadius: BorderRadius.circular(60)),
        ),
      ],
    );
  }
}
