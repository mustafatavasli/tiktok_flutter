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
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeConst.light,
              darkTheme: ThemeConst.dark,
              themeMode: model.theme,
              home: Scaffold(
                appBar: AppBar(
                  actions: [
                    IconButton(
                      onPressed: () {
                        model.changeTheme();
                      },
                      icon: model.theme == ThemeMode.dark
                          ? Icon(Icons.dark_mode)
                          : Icon(Icons.light_mode),
                    )
                  ],
                ),
                body: Container(
                  child: Center(
                    child: Text(
                      "Hello from TikTok App",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
            ));
  }
}
