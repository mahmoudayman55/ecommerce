class Product{
  int id;
  String name ;
  String category ;
  String image ;
  String description ;
  double price ;
  double discount ;
  bool isliked ;
  double rate;
  bool isSelected ;
  Product({
    required this.id,
    this.description="",
     this.discount =0,
    required this.rate,
   required this.name,
   required this.category,
   required this.price,
   required this.isliked,
   required this.isSelected,
   required this.image});
}