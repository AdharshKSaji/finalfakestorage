

class ProductResmodel {
  
  String? title;
  String? image;
  double?price;
    String? rating;


  ProductResmodel({
  
    this.title,
    this.price,
    this.image,
    this.rating
  
  });

  factory ProductResmodel.fromJson(Map<String, dynamic> json) =>
      ProductResmodel(
        
        title: json["title"],
        price: json["price"]?.toDouble(),
        image: json["image"],
        rating:json["rating"]
       
      );

  Map<String, dynamic> toJson() => {
        
        "title": title,
        "price": price,
        "image": image,
        "rating":rating
        
      };
}

