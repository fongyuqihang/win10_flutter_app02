import 'package:flutter/material.dart';

class PhotoView03 extends StatelessWidget{
  const PhotoView03({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const Center(
        child: Image(
          image: AssetImage("images/03.jpg"),
        ),
      ),
    );
  }

}