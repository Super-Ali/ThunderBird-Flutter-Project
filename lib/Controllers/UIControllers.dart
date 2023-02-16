import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thunder_bird/Pages/Auth/SignUpFlow_Widgets.dart';

class UIController extends GetxController {
  static UIController instance = Get.find();

//--------Dashboard Buttons Hover------------------------------->
  var list = [false, false, false, false].obs;

  setHover(index) {
    list[index] = true;
  }

  removeHover(index) {
    list[index] = false;
  }

//------ Form Button Hover ----------------------------------->
  var formButtonhover = false.obs;
  var suHover = false.obs;

  setfbHover() {
    formButtonhover.value = true;
  }

  removefbHover() {
    formButtonhover.value = false;
  }

  setsuHover() {
    suHover.value = true;
  }

  removesuHover() {
    suHover.value = false;
  }

  // -------- ChoiceListBox --------------------------------->

  RxList<Image> boxes = (List<Image>.of([emptybox, emptybox, emptybox, emptybox])).obs;
  activateBox(index) {
    boxes[index] = checkedBox;
  }

  deactivateBox(index) {
    boxes[index] = emptybox;
  }
}
