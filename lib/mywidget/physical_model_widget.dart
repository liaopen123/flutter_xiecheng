import 'package:flutter/material.dart';





///PhysicalModel 和ClipRRect 使用和区别:https://blog.csdn.net/senkai123/article/details/102638968
class PhysicalModelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: PhysicalModel(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6)),
          clipBehavior: Clip.antiAlias,
          elevation: 6.0,
          shadowColor: Colors.grey,
          child: GridView.count(
            crossAxisCount: 5,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: getWidgetList(),
          ),
        ),
      ),
    );
  }

  List<Widget> getWidgetList() {
    List<ServiceItemViewModel> lists = getData();
    int i = 0;
    return lists.map((value) {
      i++;
      return _item(value, i);
    }).toList();
  }

  Widget _item(ServiceItemViewModel value, int index) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          value.icon,
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(value.title,style: TextStyle(fontSize: 10),),
          )
        ],
      ),
    );
  }

  double sizeicon = 25;

  List<ServiceItemViewModel> getData() {
    List<ServiceItemViewModel> datas = [];

    datas.add(new ServiceItemViewModel(
        title: '精选早餐',
        icon: Icon(
          Icons.backup,
          size: sizeicon,
          color: Colors.lightBlue,
        )));

    datas.add(new ServiceItemViewModel(
        title: '包子',
        icon: Icon(
          Icons.markunread_mailbox,
          size: sizeicon,
          color: Colors.green,
        )));

    datas.add(new ServiceItemViewModel(
        title: '炸鸡',
        icon: Icon(
          Icons.dehaze,
          size: sizeicon,
          color: Colors.orange,
        )));

    datas.add(new ServiceItemViewModel(
        title: '网红甜品',
        icon: Icon(
          Icons.search,
          size: sizeicon,
          color: Colors.pink,
        )));

    datas.add(new ServiceItemViewModel(
        title: '湘菜',
        icon: Icon(
          Icons.delete_sweep,
          size: sizeicon,
          color: Colors.yellow,
        )));

    datas.add(new ServiceItemViewModel(
        title: '免配送费',
        icon: Icon(
          Icons.camera_rear,
          size: sizeicon,
          color: Colors.lightGreen,
        )));

    datas.add(new ServiceItemViewModel(
        title: '美团专送',
        icon: Icon(
          Icons.mobile_screen_share,
          size: sizeicon,
          color: Colors.lime,
        )));

    datas.add(new ServiceItemViewModel(
        title: '到店自取',
        icon: Icon(
          Icons.shop,
          size: sizeicon,
          color: Colors.lightBlueAccent,
        )));

    datas.add(new ServiceItemViewModel(
        title: '跑腿代购',
        icon: Icon(
          Icons.error_outline,
          size: sizeicon,
          color: Colors.purple,
        )));

    datas.add(new ServiceItemViewModel(
        title: '全部分类',
        icon: Icon(
          Icons.category,
          size: sizeicon,
          color: Colors.orangeAccent,
        )));

    return datas;
  }
}

class ServiceItemViewModel {
  String title;
  Icon icon;
  ServiceItemViewModel({
    this.title,
    this.icon,
});
}