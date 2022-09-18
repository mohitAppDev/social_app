import 'dart:ui';

class AppColors {
  AppColors._();

  static const Map<String, Color> ThemeColor = <String, Color>{
    "colorPrimary": Color(0xFF000000),
    "colorCommon": Color.fromRGBO(11, 152, 175, 1),
    "colorRare":  Color(0xFF20AAFF),
    "colorOffer":  Color(0xFFFF2852),
    "colorHintText":  Color(0xFF464749),
    "colorWhite":  Color(0xFFFFFFFF),
    "snackText":  Color(0xFF000000),
    "snackWarning":  Color(0xFFFFCE00),
    "snackResponse":  Color(0xFF64FF00),
    "colorGrayBorder" :  Color(0xFFD0D0D3),
    "headerTextColor" :  Color(0xFF0B98AF),
    "orangeColor" :  Color(0xFFFB6304),
  };

  static const String ColorPrimary = "colorPrimary";
  static const String ColorCommon = "colorCommon";
  static const String ColorRare = "colorRare";
  static const String ColorOffer = "colorOffer";
  static const String ColorHintText = "colorHintText";
  static const String colorWhite = "colorWhite";
  static const String ColorSnackText = "snackText";
  static const String ColorSnackFailure = "snackWarning";
  static const String ColorSnackSuccess = "snackResponse";
  static const String ColorGrayBorder = "colorGrayBorder";
  static const String HeaderTextColor = "headerTextColor";
  static const String orangeColor = "orangeColor";
  static const Color AppBgColor = Color(0xFFFFFFFF);

  static Color black900B0 = fromHex('#b0000000');

  static Color gray400 = fromHex('#c4c4c4');

  static Color gray500 = fromHex('#ababab');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color orangeA700 = fromHex('#fa6305');

  static Color gray100 = fromHex('#f5f5f5');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#000000');

  static Color black90040 = fromHex('#40000000');

  static Color black901 = fromHex('#0f0f0f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan700 = fromHex('#0a99b0');

  static Color black90059 = fromHex('#59000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
