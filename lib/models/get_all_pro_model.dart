class ProductModel {
  final int id;
  final String titel;
  final dynamic price;
  final String description;
  final String categories;
  final String img;
  // final RatingModel rating;

  ProductModel(
      {
      // required this.rating,
      required this.id,
      required this.titel,
      required this.price,
      required this.description,
      required this.categories,
      required this.img});
  factory ProductModel.fromJson(json) {
    return ProductModel(
      id: json['id'],
      titel: json['title'],
      price: json['price'],
      description: json['description'],
      categories: json['category'],
      img: json['image'],
      // rating: RatingModel.fromJson(json['rating']),
    );
  }
}

// class RatingModel {
//   final dynamic rate;
//   final dynamic count;

//   RatingModel({
//   required this.rate,
//   required this.count
  
//    });

//   factory RatingModel.fromJson(json) {
//     return RatingModel(
//       rate: json["rate"],
//       count: json['count'],
//     );
//   }
// }
