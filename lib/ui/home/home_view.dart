import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tiktok_flutter/ui/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                    onPressed: () {
                      model.baseModel.changeTheme();
                    },
                    icon: model.baseModel.theme == ThemeMode.dark
                        ? Icon(Icons.dark_mode)
                        : Icon(Icons.light_mode),
                  )
                ],
              ),
              body: Container(
                child: Center(
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            model.navigationService
                                .navigateTo(Routes.detailView);
                          },
                          child: Text("Go to Detail View")),
                      Text(
                        "Hello from TikTok App",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
