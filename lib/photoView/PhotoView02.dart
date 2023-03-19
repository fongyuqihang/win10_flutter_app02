import 'package:flutter/material.dart';

class PhotoView02 extends StatelessWidget{
  const PhotoView02({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const Center(
        child: Image(
          image: AssetImage("images/02.jpg"),
        ),
      ),
    );
  }

}