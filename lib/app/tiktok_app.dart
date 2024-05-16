import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/app/app_base_view_model.dart';
import 'package:tiktok_flutter/constants/theme.dart';

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppBaseViewModel>.reactive(
        viewModelBuilder: () => AppBaseViewModel(),
        onModelReady: (viewModel) => viewModel.init(),
        builder: (context, viewModel, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeConst.light,
              darkTheme: ThemeConst.dark,
              home: Scaffold(
                body: Container(
                  child: Center(
                    child: Text("Hello from TikTok App"),
                  ),
                ),
              ),
            ));
  }
}
