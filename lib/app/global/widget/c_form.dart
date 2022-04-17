// import 'package:flutter/material.dart';
// import 'package:test_task/l10n/local_provider.dart';

// class CFormField extends StatelessWidget {
//   const CFormField({
//     Key? key,
//     required TextEditingController controller,
//     this.title,
//     this.labelText,
//     this.gap,
//     this.width,
//     this.height,
//     this.color,
//     this.textColor,
//     this.showLogo = true,
//     this.logo,
//   })  : _controller = controller,
//         super(key: key);

//   final TextEditingController _controller;
//   final bool showLogo;
//   final String? title, labelText, logo;
//   final double? gap, width, height;
//   final Color? color, textColor;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         if (title != null)
//           Align(
//             alignment: Alignment(-0.4.w, 0),
//             child: CText(
//               title ?? 'ADD TITLE',
//               color: AppColor.Gray3,
//               fontSize: 13.sp,
//             ),
//           ),
//         if (title != null) SizedBox(height: gap ?? 4.h),
//         Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             if (showLogo)
//               Center(
//                 child: Image.asset(
//                   logo ?? Logo.bkash,
//                   width: 45.w,
//                   height: 45.w,
//                 ),
//               ),
//             if (showLogo) SizedBox(width: 10.w),
//            ,
//           ],
//         )
//       ],
//     );
//   }
// }
