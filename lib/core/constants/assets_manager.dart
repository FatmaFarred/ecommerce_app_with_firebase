const String imagePath = "assets/images";
const String jsonPath = "assets/json";
const String iconsPath = "assets/icons";
const String svgPath = "assets/svg_images";
const String lottiePath = "assets/lottie";


abstract class ImageAssets {
  static const String routeLogo = "$imagePath/splash_logo.png";
  static const String categoryCardImage = "$imagePath/category_card_image.png";
  static const String shoppinglogo = "$imagePath/entirelogo.png";
  static const String facelogo = "$imagePath/facebook-logo.webp";
  static const String googlelogo = "$imagePath/Google__G__logo.webp";

  static const String subcategoryCardImage =
      "$imagePath/sub_category_card_image.png";
  static const String carouselSlider1 = "$imagePath/CarouselSlider1.png";

  static const String categoryHomeImage = "$imagePath/category_image.jpg";
  static const String carouselSlider2 = "$imagePath/CarouselSlider2.png";
  static const String carouselSlider3 = "$imagePath/CarouselSlider3.png";
  static const String brandHomeImage = "$imagePath/brands_section_image.png";
  static const String productImage = "$imagePath/product_image.png";

  static const String rate = "$imagePath/rate.png";

  static const String shoppingCart = "$imagePath/shopping_cart.png";
  static const String favoriteIcon = "$imagePath/favorite.png";
  static const String notFavoriteIcon = "$imagePath/not_favorite.png";
  static const String searchIcon = "$imagePath/search.png";
}

abstract class SvgAssets {
  static const String icGoogle = "$svgPath/ic_google.svg";
  static const String icSwitchEnglish = "$svgPath/ic_en.svg";
  static const String icSwitchArabic = "$svgPath/ic_eg.svg";
  static const String icArrow = "$svgPath/ic_arrow.svg";
  static const String icBookmark = "$svgPath/ic_bookmark.svg";
  static const String icExplore = "$svgPath/ic_explore.svg";
  static const String icFavorite = "$svgPath/ic_favorite.svg";
  static const String icFolder = "$svgPath/ic_folder.svg";
  static const String icHome = "$svgPath/ic_home.svg";
  static const String icList = "$svgPath/ic_list.svg";
  static const String icPlay = "$svgPath/ic_play.svg";
  static const String icProfile = "$svgPath/ic_profile.svg";
  static const String icRate = "$svgPath/ic_rate.svg";
  static const String icSearch = "$svgPath/ic_search.svg";
  static const String icRuntime = "$svgPath/ic_runtime.svg";
  static const String icEmail = "$svgPath/ic_email.svg";
  static const String icName = "$svgPath/ic_name.svg";
  static const String icPassword = "$svgPath/ic_password.svg";
  static const String icPhone = "$svgPath/ic_phone.svg";
  static const String icUser = "$svgPath/ic_user.svg";
  static const String forgotPasswordImage = "$svgPath/forgot_password.svg";
}


abstract class IconsAssets {
  static const String _icCategory = "$iconsPath/ic_category.png";
  static const String _icHome = "$iconsPath/ic_home.png";
  static const String _icProfile = "$iconsPath/ic_profile.png";
  static const String _icWithList = "$iconsPath/ic_wish_list.png";
  static const String _icCart = "$iconsPath/ic_cart.png";
  static const String _icSearch = "$iconsPath/ic_search.png";
  static const String icDelete = "$iconsPath/ic_delete.png";
  static const String _icHeart = "$iconsPath/heart.png";
  static const String _icClickedHeart = "$iconsPath/clicked_heart.png";

  static String get icCategory => _icCategory;
  static String get icHome => _icHome;
  static String get icProfile => _icProfile;
  static String get icWithList => _icWithList;
  static String get icCart => _icCart;
  static String get icSearch => _icSearch;
  static String get icHeart => _icHeart;
  static String get icClickedHeart => _icClickedHeart;
}



class JsonAssets {
  static const String loading = "$jsonPath/loading.json";
  static const String error = "$jsonPath/error.json";
  static const String empty = "$jsonPath/empty.json";
  static const String success = "$jsonPath/success.json";
}
class LottieAssets {
  static const String onboarding1 = "$lottiePath/onboraing1.json";
  static const String onboarding2 = "$lottiePath/onboarding2.json";
  static const String onboarding3 = "$lottiePath/onboarding3.json";
  static const String verfication = "$lottiePath/verfication.json";
  static const String successful = "$lottiePath/successful.json";

}
