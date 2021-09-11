class FashionModelItem {
  FashionModelItem(
      {this.id,
      this.modelName,
      this.modelCity,
      this.modelImage,
      this.commentCount,
      this.likeCount,
      this.timeCount});

  String? id;
  String? modelName;
  String? modelCity;
  String? modelImage;
  String? likeCount;
  String? commentCount;
  String? timeCount;

  factory FashionModelItem.fromJson(Map<String, dynamic> json) =>
      FashionModelItem(
        id: json["id"] == null ? null : json["id"],
        modelName: json["model_name"] == null ? null : json["model_name"],
        modelCity: json["model_city"] == null ? null : json["model_city"],
        modelImage: json["model_image"] == null ? null : json["model_image"],
        commentCount:
            json["comment_count"] == null ? null : json["comment_count"],
        likeCount: json["like_count"] == null ? null : json["like_count"],
        timeCount: json["time_count"] == null ? null : json["time_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "model_name": modelName == null ? null : modelName,
        "model_city": modelCity == null ? null : modelCity,
        "model_image": modelImage == null ? null : modelImage,
        "like_count": likeCount == null ? null : likeCount,
        "comment_count": commentCount == null ? null : commentCount,
        "time_count": timeCount == null ? null : timeCount,
      };
}
