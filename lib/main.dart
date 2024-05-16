import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_flutter/app/tiktok_app.dart';
import 'package:tiktok_flutter/di/locator.dart';

Future<void> main() async {
  // Widget'ler bind oldu mu, olduysa uygulamayı ayağa kaldır.
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  // Uygulamanın sadece portrait mode ile çalışmasını istiyoruz. (Android ve iOS için ayrı ayrı da yapılabilir)
  // SystemChrome ile cihazın ana canvasıyla ilgili işlemleri yapabiliriz.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const TikTokApp());
}
