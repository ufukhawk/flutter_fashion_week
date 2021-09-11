import 'package:fashion_week/component/widget/shimmer_widget.dart';
import 'package:fashion_week/screen/home/provider/home_provider.dart';
import 'package:fashion_week/screen/model_detail/ui/model_detail_screen.dart';
import 'package:fashion_week/util/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'model_list_item.dart';

class ModelListView extends StatefulWidget {
  const ModelListView({Key? key}) : super(key: key);

  @override
  _ModelListViewState createState() => _ModelListViewState();
}

class _ModelListViewState extends State<ModelListView> {
  final HomeProvider homeProvider = Get.find<HomeProvider>();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: Obx(
          () => homeProvider.fashionModelList.length > 0
              ? StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  itemCount: homeProvider.fashionModelList.length,
                  itemBuilder: (BuildContext context, int index) {
                    var modelItem = homeProvider.fashionModelList[index];
                    return GestureDetector(
                      child: ModelListItem(fashionModelItem: modelItem),
                      onTap: () {
                        Get.to(() => ModelDetailScreen(
                              fashionModelItem: modelItem,
                            ));
                      },
                    );
                  },
                  staggeredTileBuilder: (int index) => (index + 1) % 3 == 0
                      ? new StaggeredTile.count(4, 3.6)
                      : new StaggeredTile.count(2, 3.6),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                )
              : modelShimmerItem(),
        ),
      ),
    );
  }

  StaggeredGridView modelShimmerItem() {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerWidget(
              child: Container(
                height: 250,
                width: DeviceUtils.size(context).width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerWidget(
                    child: Container(
                      width: 100,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  ShimmerWidget(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
      staggeredTileBuilder: (int index) => (index + 1) % 3 == 0
          ? new StaggeredTile.count(4, 3.6)
          : new StaggeredTile.count(2, 3.6),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 10.0,
    );
  }
}
