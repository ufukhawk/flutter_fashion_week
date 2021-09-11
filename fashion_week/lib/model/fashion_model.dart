import 'fashion_model_item.dart';

class FashionModel {
  FashionModel({
    this.models,
  });

  List<FashionModelItem>? models;

  factory FashionModel.fromJson(Map<String, dynamic> json) => FashionModel(
        models: json["models"] == null
            ? null
            : List<FashionModelItem>.from(
                json["models"].map((x) => FashionModelItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "models": models == null
            ? null
            : List<dynamic>.from(models!.map((x) => x.toJson())),
      };
}
