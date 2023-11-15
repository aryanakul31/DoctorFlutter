// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

closeKeyboard({required BuildContext context}) =>
    FocusScope.of(context).unfocus();

standardPadding({required Widget child}) =>
    Padding(padding: const EdgeInsets.all(20), child: child);

standardMargin({required Widget child}) =>
    Container(margin: const EdgeInsets.all(20), child: child);

loadImage(String imageUrl,
        {String? placeHolder,
        bool loading = false,
        double? height,
        double? width,
        BoxFit fit = BoxFit.fill,
        bool round = false}) =>
    loading ? const CircularProgressIndicator() : Image.network(imageUrl);
// : CachedNetworkImage(
//     width: width,
//     height: height,
//     fit: fit,
//     imageBuilder: round
//         ? (context, imageProvider) => Container(
//               width: height,
//               height: width,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(image: imageProvider, fit: fit),
//               ),
//             )
//         : null,
//     placeholder: (context, url) => placeHolder?.isNotEmpty == true
//         ? Image.asset(placeHolder!)
//         : const CircularProgressIndicator(),
//     errorWidget: (context, url, error) => const Icon(Icons.error),
//     imageUrl: imageUrl);

showSnackBar(
  String text, {
  required BuildContext context,
  SnackBarAction? snackBarHandling,
}) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      action: snackBarHandling,
    ));
