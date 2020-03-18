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
            childAspectRatio: 0.8,//长宽比
          ),
          children: <Widget>[
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579448539485&di=4c72d183ee291e4d4c455a2e63895db5&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fb1ea48b78db4a95239e19f54241db84f83a886e87076-Twe7aD_fw658',
            fit: BoxFit.cover,),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579448539486&di=5b75ec42b1877abe1b96ce7c74b9474c&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0169cc57568ca500000118c542203d.jpg%402o.jpg',
            fit: BoxFit.cover,),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579448539485&di=420481ded231412020b4422b770962e0&imgtype=0&src=http%3A%2F%2Fimg3.redocn.com%2F201512%2F20151215%2F2015121516225616225653.jpg',
            fit: BoxFit.cover,),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579448539485&di=9e90b48a0cd71d44c840259b42d26608&imgtype=0&src=http%3A%2F%2Fimg3.redocn.com%2F201512%2F20151214%2F2015121415023715023705.jpg',
            fit: BoxFit.cover,),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579448539485&di=d036c9a8efe3d8a3c471eebdb59dc846&imgtype=0&src=http%3A%2F%2Fc4.haibao.cn%2Fimg%2F600_0_100_0%2F1502259364.3413%2F2dafa91dd684a03ffa1af75aecef3bdd.jpg',
            fit: BoxFit.cover,),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579448539483&di=bd27d3434108844a4d0852a9188a3444&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130911%2F2828440_135013449000_2.jpg',
            fit: BoxFit.cover,)
          ],
        ),
      ));
  }
}