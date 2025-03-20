# TinHarmonyFlutter

## 环境配置要求

基于Flutter-harmony3.7.12、Dart2.19.6版本开发，使用的三方库都适配了空安全。
目前可运行于Android iOS 鸿蒙三种平台


[Flutter鸿蒙分支](https://gitcode.com/openharmony-sig/flutter_flutter/tree/master)


### 需要安装的Plugin: 
- 基本配置插件: Dart、Kotlin、Flutter
- Flutter Intl 国际化插件，用于生成国际化相关代码
- Json to Dart 对象bean生成插件
- GetX GetX框架插件，用于生成GetX框架相关类和代码


2025-03-19
- 基于TinFlutter创建此项目,适配鸿蒙分支


### 参考文档

- [Flutter GetX使用---简洁的魅力！](https://juejin.cn/post/6924104248275763208)
- [FlutterJsonBeanFactory](https://github.com/fluttercandies/FlutterJsonBeanFactory)


### 其他常用框架
- [Flutter(十七) 实现国际化](https://blog.csdn.net/zhongad007/article/details/106470787/)
- [dio使用文档](https://github.com/flutterchina/dio/blob/master/README-ZH.md)
- [网络框架Dio](https://github.com/flutterchina/dio)
- [Retrofit.dart网络框架](https://github.com/trevorwang/retrofit.dart/)
- [Get框架的快速、超轻量和同步键值存储](https://github.com/jonataslaw/get_storage)
- [fish-redux闲鱼Flutter跨平台解决方案](https://github.com/alibaba/fish-redux)
- [轻量存储库Hive](https://github.com/hivedb/hive)
- [ImagePicker图片选择框架](https://pub.dev/packages/image_picker)
- [json2dart工具网址](https://caijinglong.github.io/json2dart/index_ch.html)


### 问题

- 由于鸿蒙兼容问题,Scaffold中不支持使用floatingActionButton,会闪退!

### harmony常用命令
flutter build hap --release

flutter build app --release

flutter devices

flutter run --debug -d <deviceId>

### retrofit适用命令

# dart
dart pub run build_runner build

# flutter
flutter pub run build_runner build






