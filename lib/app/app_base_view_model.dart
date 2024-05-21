import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tiktok_flutter/di/locator.dart';
import 'package:tiktok_flutter/services/firebase_service.dart';

class AppBaseViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  final FirebaseService firebaseService = locator<FirebaseService>();
  ThemeMode theme = ThemeMode.dark;
  AppBaseViewModel baseModel = locator<AppBaseViewModel>();
  init() {
    // App çalışır çalışmaz Firebase başlatma
    firebaseService.init();
  }

  changeTheme() {
    if (theme == ThemeMode.dark) {
      theme = ThemeMode.light;
    } else {
      theme = ThemeMode.dark;
    }
    baseModel.notifyListeners();
  }
}
