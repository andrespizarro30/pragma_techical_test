import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:technicaltestpragma/controllers/breed_page_controler.dart';
import 'package:technicaltestpragma/routes/route_helper.dart';
import 'package:technicaltestpragma/utils/app_colors.dart';
import 'package:technicaltestpragma/widgets/cat_list_item.dart';
import 'package:technicaltestpragma/pages/home/cats_detail_screen.dart';
import 'package:technicaltestpragma/widgets/waiting_container.dart';

import '../../utils/dimensions.dart';
import '../../widgets/search_text.dart';


class BreedsPage extends StatefulWidget {
  const BreedsPage({super.key});

  @override
  State<BreedsPage> createState() => _BreedsPageState();
}

class _BreedsPageState extends State<BreedsPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    SchedulerBinding.instance.addPostFrameCallback((_) async{
      loadResources();
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Cat Breeds"),
        backgroundColor: AppColors.iconColor1,
      ),
      body: Column(
        children: [
          SearchWidget(filterItems: filterItems),
          SizedBox(height: Dimensions.height10,),
          Expanded(
              child: GetBuilder<BreedPageController>(builder: (controller){
                return RefreshIndicator(
                    onRefresh: loadResources,
                    child: controller.catsBreedList.isNotEmpty && !controller.loading ?
                    ListView.builder(
                        itemCount: controller.catsBreedList.length,
                        itemBuilder: (context,index){
                          return GestureDetector(
                              onTap: (){
                                Get.to(() => CatsDetailScreen(cat: controller.catsBreedList[index]),transition: Transition.circularReveal,duration: Duration(milliseconds: 1000));
                              },
                              child: CatItemScreen(key: ValueKey(controller.catsBreedList[index]),cat: controller.catsBreedList[index])
                          );
                        }
                    )
                    :
                    controller.loading ?
                    WaitingContainer() :
                    SizedBox()
                );
              }
            )
          )
        ],
      ),
      backgroundColor: AppColors.iconColor1,
    );
  }

  Future<void> loadResources() async{
    await Get.find<BreedPageController>().getBreedList();
  }

  void filterItems(String query) {
    Get.find<BreedPageController>().filterCatBreedList(query);
  }

}
