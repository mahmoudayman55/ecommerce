import 'package:systemxecommerce/models/product_model.dart';

class OrderModel {
  String id, date, time;
  int number;
  List<Product> products;

  OrderModel({
    required this.id,
    required this.number,
  required this.date,
  required this.time,
  required this.products});
}