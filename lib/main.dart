import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_flutter/app/tiktok_app.dart';
import 'package:tiktok_flutter/di/locator.dart';
import 'package:tiktok_flutter/firebase_options.dart';

Future<void> main() async {
  // Widget'ler bind oldu mu, olduysa uygulamayı ayağa kaldır.
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupLocator();
  // Uygulamanın sadece portrait mode ile çalışmasını istiyoruz. (Android ve iOS için ayrı ayrı da yapılabilir)
  // SystemChrome ile cihazın ana canvasıyla ilgili işlemleri yapabiliriz.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const TikTokApp());
}
