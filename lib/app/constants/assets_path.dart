part of constants;

class Font {
  // static const _path = "assets/fonts";

  // static const  roboto = "$_path/Roboto-Regular.ttf";
  // static const  Ubuntu = "$_path/Ubuntu-Regular.ttf";
  // static const  UbuntuBold = "$_path/Ubuntu-Bold.ttf";
}

class ImagePath {
  // static const _path = "assets/images";
  // static const logo = "$_path/icon.png";

}

abstract class ImageVectorConstant {
  static const _folder = "assets/images/vector/";

  static const loginIllustration = "${_folder}login_illustration.svg";
  static const registrationIllustration =
      "${_folder}registration_illustration.svg";
  static const authenticationIllustration =
      "${_folder}authentication_illustration.svg";
}

abstract class ImageRasterConstant {
  static const _folder = "assets/images/raster/";

  static const logo = "${_folder}logo.png";
}
