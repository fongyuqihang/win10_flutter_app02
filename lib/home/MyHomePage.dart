import 'package:flutter/material.dart';
import 'package:win10_flutter_app02/components/ColumnOfMain.dart';
import 'package:win10_flutter_app02/components/GridViewOfPhoto.dart';
import 'package:win10_flutter_app02/components/SetingOfMe.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold
  );
   static List<Widget>  widgetOptions = <Widget>[

     ColumnOfMain(),
      GridViewOfPhoto(),
    // const Text(
      // 'Index 2: 我的',
      // style: optionStyle,
    // ),
     SetingOfMe(),
  ];

//设置index方法
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
        // const Text(
        //   '''   俄乌冲突即将一周年。2月20日,美国总统拜登抵达基辅与乌克兰总统泽连斯基会面，这是冲突以来他首次访乌。此次访问出人意料，公开行程表明他原本要访问的是波兰。''',
        //   textAlign: TextAlign.start,
        //   maxLines: 3,
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 20,
        //     fontStyle: FontStyle.normal,
        //   ),
        // ),
      ),
      //底部导航栏
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "主页"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo),
                label: "相册"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.man),
                label: "我"
            ),
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
      ),
    );
  }
}
