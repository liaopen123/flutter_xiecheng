class SplashAd {
    Data data;
    int error;
    String msg;

    @override
    String toString() {
        return 'SplashAd{data: $data, error: $error, msg: $msg}';
    }

    SplashAd({this.data, this.error, this.msg});

    factory SplashAd.fromJson(Map<String, dynamic> json) {
        return SplashAd(
            data: json['data'] != null ? Data.fromJson(json['data']) : null,
            error: json['error'],
            msg: json['msg'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['error'] = this.error;
        data['msg'] = this.msg;
        if (this.data != null) {
            data['data'] = this.data.toJson();
        }
        return data;
    }
}

class Data {

    String des;
    String htmlUrl;
    String pageUri;

    Data({this.des, this.htmlUrl, this.pageUri});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            des: json['des'],
            htmlUrl: json['htmlUrl'],
            pageUri: json['pageUri'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['des'] = this.des;
        data['htmlUrl'] = this.htmlUrl;
        data['pageUri'] = this.pageUri;
        return data;
    }

    @override
    String toString() {
        return 'Data{des: $des, htmlUrl: $htmlUrl, pageUri: $pageUri}';
    }
}