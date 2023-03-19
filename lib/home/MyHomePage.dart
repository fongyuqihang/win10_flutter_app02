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
        //   '''   君不见黄河之水天上来，奔流到海不复回。
        // 君不见高堂明镜悲白发，朝如青丝暮成雪。
        // 人生得意须尽欢，莫使金樽空对月。
        // 天生我材必有用，千金散尽还复来。
        // 烹羊宰牛且为乐，会须一饮三百杯。
        // 岑夫子，丹丘生，将进酒，杯莫停。
        // 与君歌一曲，请君为我倾耳听。(倾耳听 一作：侧耳听)
        // 钟鼓馔玉不足贵，但愿长醉不愿醒。(不足贵 一作：何足贵；不愿醒 一作：不复醒)
        // 古来圣贤皆寂寞，惟有饮者留其名。(古来 一作：自古；惟 通：唯)
        // 陈王昔时宴平乐，斗酒十千恣欢谑。
        // 主人何为言少钱，径须沽取对君酌。
        // 五花马、千金裘，呼儿将出换美酒，与尔同销万古愁。''',
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
