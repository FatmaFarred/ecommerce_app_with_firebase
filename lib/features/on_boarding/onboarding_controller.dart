import 'package:ecommerce_app_with_firebase/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingControlller extends GetxController{
static OnBoardingControlller get instanse => Get.find();

final pageController = PageController();
Rx <int> currentPageIndex=0.obs;

void updatePageIndicator (index)=>currentPageIndex.value=index;

void dotNavigationClick (index) {
  currentPageIndex.value=index;
  pageController.jumpToPage(index);
}
void nextPage (){
  if (currentPageIndex.value==2){
    Get.offAllNamed(LoginScreen.loginScreenRoueName);
  }else {
    int page = currentPageIndex.value+1;
    pageController.jumpToPage(page);
  }

}

void skipPage (){
  currentPageIndex.value = 2;
  pageController.jumpToPage(2);
}



}