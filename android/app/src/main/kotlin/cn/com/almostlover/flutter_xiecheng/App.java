package cn.com.almostlover.flutter_xiecheng;

import com.facebook.stetho.Stetho;

import io.flutter.app.FlutterApplication;

public class App extends FlutterApplication {

    @Override
    public void onCreate() {
        super.onCreate();
        Stetho.initializeWithDefaults(this);
    }
}
