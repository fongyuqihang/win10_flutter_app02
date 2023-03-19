import 'package:flutter/material.dart';

class PhotoView06 extends StatelessWidget{
  const PhotoView06({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const Center(
        child: Image(
          image: AssetImage("images/06.jpg"),
        ),
      ),
    );
  }

}