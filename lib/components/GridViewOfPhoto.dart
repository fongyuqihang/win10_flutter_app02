import 'package:flutter/material.dart';
import 'package:win10_flutter_app02/photoView/PhotoView01.dart';
import 'package:win10_flutter_app02/photoView/PhotoView02.dart';
import 'package:win10_flutter_app02/photoView/PhotoView03.dart';
import 'package:win10_flutter_app02/photoView/PhotoView04.dart';
import 'package:win10_flutter_app02/photoView/PhotoView05.dart';
import 'package:win10_flutter_app02/photoView/PhotoView06.dart';


class GridViewOfPhoto extends StatelessWidget{
  const GridViewOfPhoto({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black,
          //手势组件
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const PhotoView01();
              }));
            },
            child: const Center(
              child: Image(
                image: AssetImage("images/01.jpg"),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const PhotoView02();
              }));
            },
            child: const Center(
              child: Image(
                image: AssetImage("images/02.jpg"),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const PhotoView03();
              }));
            },
            child: const Center(
              child: Image(
                image: AssetImage("images/03.jpg"),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const PhotoView04();
              }));
            },
            child: const Center(
              child: Image(
                image: AssetImage("images/04.jpg"),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const PhotoView05();
              }));
            },
            child: const Center(
              child: Image(
                image: AssetImage("images/05.jpg"),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const PhotoView06();
              }));
            },
            child: const Center(
              child: Image(
                image: AssetImage("images/06.jpg"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}