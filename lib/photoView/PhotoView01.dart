import 'package:flutter/material.dart';

class PhotoView01 extends StatelessWidget{
  const PhotoView01({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const Center(
        child: Image(
          image: AssetImage("images/01.jpg"),
        ),
      ),
    );
  }

}