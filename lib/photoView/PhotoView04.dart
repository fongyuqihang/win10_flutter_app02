import 'package:flutter/material.dart';

class PhotoView04 extends StatelessWidget{
  const PhotoView04({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const Center(
        child: Image(
          image: AssetImage("images/04.jpg"),
        ),
      ),
    );
  }

}