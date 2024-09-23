import 'package:flutter/material.dart';
import 'package:chatty/common/routes/routes.dart';
import 'package:chatty/common/store/store.dart';

import 'package:get/get.dart';

// Check if the user has logged in
class RouteAuthMiddleware extends GetMiddleware {
  // Priority smaller the more important
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin ||
        route == AppRoutes.SIGN_IN ||
        route == AppRoutes.INITIAL) {
      return null;
    } else {
      Future.delayed(
        const Duration(seconds: 2),
        () => Get.snackbar(
            "Tip", "Su sesión ha expierado, porfavor inicia sesión de nuevo."),
      );
      return const RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}
