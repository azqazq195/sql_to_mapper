import 'package:fluent/utils/logger.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:url_launcher/url_launcher.dart';

const spacerH = SizedBox(height: 10.0);
const biggerSpacerH = SizedBox(height: 40.0);

const spacerW = SizedBox(width: 10.0);
const biggerSpacerW = SizedBox(width: 40.0);

snackbar(context, text) {
  return showSnackbar(
    context,
    Snackbar(
      extended: true,
      content: Text(text),
    ),
    alignment: Alignment.bottomRight,
  );
}

toCapitalize(str) {
  return str[0].toUpperCase() + str.substring(1);
}

toCamel(str) {
  var result = "";
  var temp = str.split("_");
  for (int k = 0; k < temp.length; k++) {
    if (k == 0) {
      result += temp[k];
    } else {
      result += temp[k][0].toUpperCase() + temp[k].substring(1);
    }
  }
  return result;
}

bugReport() async {
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  Logger.i('bugReport');
  final Uri uri = Uri(
    scheme: 'mailto',
    path: 'azqazq195@gmail.com',
    query: encodeQueryParameters(
      <String, String>{
        'subject': 'Assistant Bug Report',
        'body': '''
------\n\n
내용입력\n\n
------\n\n
${await Logger.logTxt.readAsString()}
'''
      },
    ),
  );
  if (await canLaunch(uri.toString())) {
    Logger.i("launch 'bugReport'");
    await launch(uri.toString());
  } else {
    Logger.w("Could not launch 'bugReport'");
    throw "Could not launch 'bugReport'";
  }
}
