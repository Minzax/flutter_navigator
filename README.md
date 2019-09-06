# flutter_global_navigator

Flutter中实现无Context跳转

## Get Start

### 初始化配置

在 **main.dart** 中配置 **navigatorKey** 参数

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: MopNavigator.navigatorKey,
    );
  }
}
```

### 使用方式

与 **Navigator** 调用方式一致

```dart
MopNavigator.pushName('/jumpRoute');
```