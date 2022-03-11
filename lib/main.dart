
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:systemxecommerce/componants/ui_componant.dart';
import 'package:systemxecommerce/utils/lang/en.dart';
import 'package:systemxecommerce/utils/translations.dart';
import 'package:systemxecommerce/view/control_view.dart';
import 'package:systemxecommerce/view/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'helper/binding.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
 // Hive.registerAdapter(UserModelAdapter());
  //await Hive.initFlutter();
  // await Hive.openBox('user');
  // print(box.values.toString()+'      dsfsdfsadfasdfasdfasdfasdfasdfasdfasdf');
// SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  runApp(DevicePreview(builder: (context)=>MyApp(),enabled: !kReleaseMode,));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(

      builder: () => GetMaterialApp(


translations: Translation(),
        locale: const Locale("en"),
        fallbackLocale: const Locale('en'),
        builder: DevicePreview.appBuilder,
        initialBinding: Binding(),
        debugShowCheckedModeBanner: false,
         home:ControlView(),
        theme: ThemeData(primarySwatch: Colors.blue),
      ),
    );
  }
}
