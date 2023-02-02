import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "电影海报",
      home: Scaffold(
        appBar: AppBar(
          title: Text('电影海报'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: GridView(
          padding: EdgeInsets.all(3),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,//列数
            crossAxisSpacing: 2,//横距离
            mainAxisSpacing: 2,//纵距离
            childAspectRatio: 0.7,//长宽比
          ),
          children: <Widget>[
            Image.network('https://img2.baidu.com/it/u=2937349167,2032183793&fm=253&fmt=auto&app=120&f=PNG?w=713&h=893',
            fit: BoxFit.cover,),
            Image.network('https://img1.baidu.com/it/u=2973829005,4213632389&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=714',
            fit: BoxFit.cover,),
            Image.network('https://img0.baidu.com/it/u=1776141792,3674151934&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=722',
            fit: BoxFit.cover,),
            Image.network('https://img1.baidu.com/it/u=2394138984,4226809517&fm=224&fmt=auto&gp=0.jpg',
            fit: BoxFit.cover,),
            Image.network('https://img1.baidu.com/it/u=3791626273,1118179220&fm=253&fmt=auto&app=138&f=JPEG?w=337&h=500',
            fit: BoxFit.cover,),
            Image.network('https://img0.baidu.com/it/u=2717943654,2751898586&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=890',
            fit: BoxFit.cover,)
          ],
        ),
      ));
  }
}