import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class ThemeConfig {
  ThemeConfig._();

  static ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: AppColors.primary,
        primarySwatch: AppColors.primary,
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primary,
          titleTextStyle: GoogleFonts.poppins(
            color: AppColors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
            height: 1.2,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          hintStyle: GoogleFonts.poppins(
            color: AppColors.black.shade100,
            fontSize: 16,
            fontWeight: FontWeight.w200,
          ),
          iconColor: AppColors.black.shade100,
          prefixIconColor: AppColors.black.shade100,
          labelStyle: GoogleFonts.poppins(
            color: AppColors.white,
          ),
          floatingLabelStyle: GoogleFonts.poppins(
            color: AppColors.white,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: AppColors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: AppColors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: AppColors.white),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.white,
          selectionColor: AppColors.blue,
          selectionHandleColor: AppColors.blue,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AppColors.white.shade50,
          elevation: 2,
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return const IconThemeData(
                  color: AppColors.white,
                  size: 24,
                );
              }

              return const IconThemeData(
                color: AppColors.black,
                size: 24,
              );
            },
          ),
          labelTextStyle: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return GoogleFonts.poppins(
                  color: AppColors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                );
              }

              return GoogleFonts.poppins(
                color: AppColors.black,
                fontSize: 10,
              );
            },
          ),
          indicatorColor: AppColors.blue,
          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          surfaceTintColor: AppColors.white,
        ),
      );
}
