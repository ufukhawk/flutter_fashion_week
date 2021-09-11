import 'package:fashion_week/data/service/service.dart';
import 'package:fashion_week/model/explore_model.dart';
import 'package:fashion_week/model/fashion_model_item.dart';
import 'package:get/get.dart';

class HomeProvider extends GetxController {
  var exploreList = <Explore>[].obs;
  var fashionModelList = <FashionModelItem>[].obs;

  initData() async {
    getExploreList();
    getFashionModels();
  }

  getExploreList() {
    this.exploreList.value = exploreListData;
  }

  getFashionModels() async {
    await Future.delayed(const Duration(seconds: 3));
    fashionModelList.value = await Services.getFashionList();
  }

  selectExploreItem(Explore exploreItem) {
    exploreList.forEach(
      (element) {
        element.isSelect = element == exploreItem ? true : false;
      },
    );
  }
}
