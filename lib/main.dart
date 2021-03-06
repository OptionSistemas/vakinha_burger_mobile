import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vakinha_burger_mobile/app/core/bindings/application_bindings.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/modules/routes/auth_routers.dart';
import 'package:vakinha_burger_mobile/app/modules/routes/home_routers.dart';
import 'package:vakinha_burger_mobile/app/modules/routes/product_detail_routers.dart';
import 'package:vakinha_burger_mobile/app/modules/routes/splash_routers.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const VakinhaBurgerMyApp());
}

class VakinhaBurgerMyApp extends StatelessWidget {
  const VakinhaBurgerMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vakinha Burger',
      theme: VakinhaUI.theme,
      initialBinding: ApplicationBinding(),
      getPages: [
        ...SplashRouters.routers,
        ...AuthRouters.routers,
        ...HomeRouters.routers,
        ...ProductDetailRouters.routers,
      ],
    );
  }
}
