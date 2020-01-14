import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('你确定要删除吗?'),
            actions: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  print('取消');
                  Navigator.pop(context, "Cancle");
                },
              ),
              FlatButton(
                child: Text('确定'),
                onPressed: () {
                  Navigator.pop(context, "Ok");
                  print('确定');
                },
              )
            ],
          );
        });
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("选择内容"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("Option A"),
                onPressed: () {
                  print("Options A");
                  Navigator.pop(context, "A");
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("Option B"),
                onPressed: () {
                  print("Options B");
                  Navigator.pop(context, "B");
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("Option C"),
                onPressed: () {
                  print("Options C");
                  Navigator.pop(context, "C");
                },
              )
            ],
          );
        });
    print(result);
  }

  _modelBottomSheet() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 220,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("分享 A"),
                  onTap: () {
                    print("分享 A");
                    Navigator.pop(context, "A");
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("分享 B"),
                  onTap: () {
                    print("分享 B");
                    Navigator.pop(context, "B");
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("分享 C"),
                  onTap: () {
                    print("分享 C");
                    Navigator.pop(context, "C");
                  },
                )
              ],
            ),
          );
        });
  }

  _toast() async {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('alert弹出框-AlertDialog'),
              onPressed: _alertDialog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('select弹出框-SimpleDialog'),
              onPressed: _simpleDialog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('ActionSheet弹出框-showModalBottomSheet'),
              onPressed: _modelBottomSheet,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('toast-fluttertoast第三方库'),
              onPressed: _toast,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('显示自定义Dialog'),
              onPressed:(){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(title:Text('关于我们'),content:Text('z这是内容部分'));
                    }
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}