import 'package:expandable/expandable.dart';
import 'package:get/get.dart';

class ItemDetailsController extends GetxController{
  RxBool expand = false.obs;
  RxBool showComments = false.obs;
  var expandableController = ExpandableController();
  changeExpand(){
    expand.value = !expand.value;
    expandableController.expanded = expand.value;
  }
  updateShowComments(){
    showComments.value = !showComments.value;
  }
}