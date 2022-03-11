import 'package:get/get.dart';
import 'package:systemxecommerce/core/view_models/controle_view_model.dart';

import '../core/view_models/home_view_model.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeViewModel(),fenix: true,);
    Get.lazyPut(() => ControlViewModel(),fenix: true,);
  }

}