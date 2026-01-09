import 'package:bitsdojo_window/bitsdojo_window.dart';

class WindowHandler {

  WindowHandler._internal();
  final window = appWindow;
  static final _singleInstance = WindowHandler._internal();


  factory WindowHandler(){
    return _singleInstance;
  }

  void initWindow({bool maximized = true, bool minimized = false}){
    if (maximized && minimized){
      throw ArgumentError("Both `maximized` and `minimized` can't be true at same time.");
    }
    doWhenWindowReady(() {
      if (maximized){
        window.maximize();
      }
      if (minimized){
        window.minimize();
      }
      window.show();
    });
  }

  void minimize(){
    window.minimize();
  }

  void maximize(){
    window.maximize();
  }

  void close(){
    window.close();
  }
}