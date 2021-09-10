import 'package:delivery_app/theming_and_state_management/presentation/main_binding.dart';
import 'package:delivery_app/theming_and_state_management/presentation/routes/delivery_navigation.dart';
import 'package:delivery_app/theming_and_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainThemingAndStateManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _borderLight = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: DeliveryColors.veryLightGrey,
        width: 2,
        style: BorderStyle.solid,
      ),
    );

    final _borderDark = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: DeliveryColors.grey,
        width: 2,
        style: BorderStyle.solid,
      ),
    );

    final lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: DeliveryColors.white,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          headline6: TextStyle(
            fontSize: 20,
            color: DeliveryColors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      canvasColor: DeliveryColors.white,
      accentColor: DeliveryColors.purple,
      bottomAppBarColor: DeliveryColors.veryLightGrey,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.purple,
        displayColor: DeliveryColors.purple,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: _borderLight,
        enabledBorder: _borderLight,
        focusedBorder: _borderLight,
        contentPadding: EdgeInsets.zero,
        labelStyle: TextStyle(
          color: DeliveryColors.purple,
        ),
        hintStyle: GoogleFonts.poppins(
          color: DeliveryColors.lightGrey,
          fontSize: 12,
        ),
      ),
      iconTheme: IconThemeData(
        color: DeliveryColors.purple,
      ),
      primaryIconTheme: IconThemeData(
        color: DeliveryColors.purple,
      ),
    );

    final darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: DeliveryColors.purple,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          headline6: TextStyle(
            fontSize: 20,
            color: DeliveryColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomAppBarColor: Colors.transparent,
      canvasColor: DeliveryColors.grey,
      accentColor: DeliveryColors.white,
      scaffoldBackgroundColor: DeliveryColors.dark,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.green,
        displayColor: DeliveryColors.green,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: _borderDark,
        enabledBorder: _borderDark,
        focusedBorder: _borderDark,
        contentPadding: EdgeInsets.zero,
        labelStyle: TextStyle(
          color: DeliveryColors.white,
        ),
        fillColor: DeliveryColors.grey,
        filled: true,
        hintStyle: GoogleFonts.poppins(
          color: DeliveryColors.white,
          fontSize: 12,
        ),
      ),
      iconTheme: IconThemeData(
        color: DeliveryColors.white,
      ),
      primaryIconTheme: IconThemeData(
        color: DeliveryColors.white,
      ),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      initialRoute: DeliveryRoutes.splash,
      getPages: DeliveryPages.pages,
      initialBinding: MainBinding(),
    );
  }
}
