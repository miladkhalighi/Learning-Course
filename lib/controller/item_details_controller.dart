import 'package:expandable/expandable.dart';
import 'package:get/get.dart';

class ItemDetailsController extends GetxController{
  RxBool expand = true.obs;
  var expandableController = ExpandableController();
  changeExpand(){
    expand.value = !expand.value;
    expandableController.expanded = expand.value;
  }
}