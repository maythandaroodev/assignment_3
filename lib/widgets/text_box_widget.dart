import 'package:assignments_3/constant/colors.dart';
import 'package:flutter/material.dart';

import '../constant/dimens.dart';

class TextBoxWidget extends StatelessWidget {
  const TextBoxWidget({Key? key,required this.inputText,required this.iconPadding,this.iconType, this.backgroundColor,}) : super(key: key);
  final String inputText;
  final double iconPadding;
  final IconData? iconType;
  final Gradient? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: kSP15x),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: kSP15x),
        width: kTextBoxWidth,
        height: kTextBoxHeight,
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
        ),
        child:Row(
          children: [
            Text(inputText,
              style: const TextStyle(
                  color: Colors.grey
              ),
            ),
            Padding(
              padding:EdgeInsets.only(left: iconPadding),
              child: Icon(iconType,color: kPrimaryColor,),
            )
          ],
        )
    );
  }
}
