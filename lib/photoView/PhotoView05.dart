import 'package:flutter/material.dart';

class PhotoView05 extends StatelessWidget{
  const PhotoView05({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const Center(
        child: Image(
          image: AssetImage("images/05.jpg"),
        ),
      ),
    );
  }

}