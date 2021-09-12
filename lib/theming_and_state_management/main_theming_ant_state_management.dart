import 'package:delivery_app/theming_and_state_management/presentation/main_binding.dart';
import 'package:delivery_app/theming_and_state_management/presentation/routes/delivery_navigation.dart';
import 'package:delivery_app/theming_and_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainThemingAndStateManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      initialRoute: DeliveryRoutes.splash,
      getPages: DeliveryPages.pages,
      initialBinding: MainBinding(),
    );
  }
}
