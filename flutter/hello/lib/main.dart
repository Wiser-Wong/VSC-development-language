import 'package:flutter/material.dart';

main() => runApp(MyApp(
    //传递List集合 generate->500长度 每一条数值是Item 0.1.2.3...
    items: List<String>.generate(500, (i)=>"Item $i"),
));

class MyApp extends StatelessWidget{
  final List<String> items;
  //构造函数
  MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Title",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Flutter Widget"),
        ),
        // body: Center(//Text
          //------------------------------------------------------------------------------------------------
          // child: Text("24岁斯坦福博士退学，20多年后在3个领域内改变世界，麾下特斯拉市值突破800亿美元超过奔驰宝马，科技狂人埃隆·马斯克的巅峰之路",
          // textAlign: TextAlign.left,
          // // maxLines: 3,
          // // overflow: TextOverflow.fade
          // style: TextStyle(
          //   fontSize: 25,
          //   color: Color.fromARGB(255, 255, 150, 150),
          //   decoration: TextDecoration.underline,//下划线
          //   decorationStyle: TextDecorationStyle.solid//实线样式
          // ),
          // ),
          //------------------------------------------------------------------------------------------------
          // child: Container(//padding margin
          //   child: Text('24岁斯坦福博士退学，20多年后在3个领域内改变世界，麾下特斯拉市值突破800亿美元超过奔驰宝马，科技狂人埃隆·马斯克的巅峰之路',
          //   textAlign: TextAlign.left,
          //   style: TextStyle(
          //     fontSize: 30,
          //     color: Color.fromARGB(255, 255, 120, 200),
          //   ),),
          //   alignment: Alignment.topCenter,
          //   width: 500,
          //   height: 400,
          //   // color: Colors.blue,//与渐变不可一起用
          //   // padding: const EdgeInsets.all(40),
          //   padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          //   // margin: const EdgeInsets.all(50),
          //   margin: const EdgeInsets.fromLTRB(50, 20, 10, 25),
          //   decoration: BoxDecoration(//渐变
          //     gradient: const LinearGradient(
          //       colors: [Colors.lightBlue,
          //       Colors.lightGreen,Colors.limeAccent]
          //     ),
          //   ),
          // ),
          //------------------------------------------------------------------------------------------------
          // child: Container(//图片
          //   child: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2806989148,1612705122&fm=26&gp=0.jpg',//网络图片
          //   scale: 1.5,//缩放
          //   fit: BoxFit.none,//填充
          //   colorBlendMode: BlendMode.color,//混合模式
          //   repeat: ImageRepeat.repeatY,//重复填充
          //   ),
          //   width: 500,
          //   height: 600,
          //   color: Colors.limeAccent,
          // ),
          //------------------------------------------------------------------------------------------------
        // ),
        // body: ListView(//列表
        //   children: <Widget>[
        //     ListTile(
        //       leading: Icon(Icons.ac_unit),
        //       title: Text('测试数据1'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.access_alarm),
        //       title: Text('测试数据2'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.access_time),
        //       title: Text('测试数据3'),
        //     ),
        //     Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2806989148,1612705122&fm=26&gp=0.jpg',
        //     height: 150,
        //     fit: BoxFit.cover),
        //     Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2806989148,1612705122&fm=26&gp=0.jpg',
        //     height: 150,
        //     fit: BoxFit.cover),
        //     Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2806989148,1612705122&fm=26&gp=0.jpg',
        //     height: 150,
        //     fit: BoxFit.cover),
        //   ],
        // ),
          //------------------------------------------------------------------------------------------------
        // body: Center(//横向滚动列表
        //   child: Container(
        //     height: 200,
        //     child: ListView(
        //       scrollDirection: Axis.horizontal,
        //       children: <Widget>[
        //         Container(
        //           width: 200,
        //           color: Colors.lightBlue,
        //         ),
        //         Container(
        //           width: 200,
        //           color: Colors.yellow,
        //         ),
        //         Container(
        //           width: 200,
        //           color: Colors.green,
        //         ),Container(
        //           width: 200,
        //           color: Colors.red,
        //         )
        //       ],
        //     ),
        //   ),
        // ),
          //------------------------------------------------------------------------------------------------
        // body: Center(//自定义组件ListView列表
        //   child: Container(
        //     height: 500,
        //     child: MyListView(),//封装列表
        //   ),),
          //------------------------------------------------------------------------------------------------
        // body: ListView.builder(//动态列表
        //   itemCount: items.length,
        //   itemBuilder: (context,index){
        //     return ListTile(
        //       title: Text('${items[index]}'),
        //     );
        //   },
        // ),
          //------------------------------------------------------------------------------------------------
        body: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisCount: 3,//列
          crossAxisSpacing: 10,//间距
          children: <Widget>[
            Container(
              child: const Text("网格布局"),
              alignment: Alignment.center,
            ),
           Container(
              child: const Text("网格布局"),
              alignment: Alignment.center,
            ),
          Container(
              child: const Text("网格布局"),
              alignment: Alignment.center,
            ),
          Container(
              child: const Text("网格布局"),
              alignment: Alignment.center,
            ),
          Container(
              child: const Text("网格布局"),
              alignment: Alignment.center,
            ),
          Container(
              child: const Text("网格布局"),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}

//自定义ListView组件
class MyListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
                Container(
                  width: 200,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 200,
                  color: Colors.yellow,
                ),
                Container(
                  width: 200,
                  color: Colors.green,
                ),Container(
                  width: 200,
                  color: Colors.red,
                )
              ],      
    );
  }

}

