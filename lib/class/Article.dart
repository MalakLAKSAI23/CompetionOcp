class Article {
  int? id_article;

  String? theme_article;
  String? title_article;
  String? desc_article;
  String? date_article;

 Article(
      {this.id_article,
      this.theme_article,
      this.title_article,
      this.desc_article,
      this. date_article,
  });

Article.fromJson(Map<String, dynamic> json) {
    id_article = json[' id_article'];
    theme_article= json['theme_article'];
    title_article= json['title_article'];
    desc_article = json['desc_article'];
     date_article = json[' date_article'];
   
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id_Hotel'] = idHotel;
  //   data['nom_Hotel'] = nomHotel;
  //   data['description_Hotel'] = descriptionHotel;
  //   data['ville_Hotel'] = villeHotel;
  //   data['email_hotel'] = emailHotel;
   
  //   return data;
  // }
}