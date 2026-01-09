import 'dart:io';

class WindowsCore{
  static void checkOS(){
    if(!Platform.isWindows){
      throw UnsupportedError("This application only supports windows.");
    }
  }
}