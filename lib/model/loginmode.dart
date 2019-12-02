class LoginMode{
  String msg;
  int code;

  LoginMode({this.msg, this.code});

  factory LoginMode.fromJson(Map<String,dynamic> json){
    return LoginMode(
      msg:json["msg"],
      code:json["code"],
    );

  }


}