import 'package:bookly_app/core/functions/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url !=null) {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    //lw yanf3 t3ml launch
    await launchUrl(uri);
  } else {
    snackBar(context, 'can\'t load $url');
  }
}
}

