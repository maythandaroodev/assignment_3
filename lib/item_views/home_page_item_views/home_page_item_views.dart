import 'package:assignments_3/constant/colors.dart';
import 'package:flutter/material.dart';

import '../../constant/dimens.dart';
import '../../constant/strings.dart';
import '../../widgets/text_box_widget.dart';

class CreateAccView extends StatelessWidget {
  const CreateAccView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Padding(
        padding: EdgeInsets.only(top: kSP70x,bottom: kSP40x),
        child: Text(kCreateAccText,
          style: TextStyle(
            fontSize: kFS20x,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class InputLayerView extends StatelessWidget {
  const InputLayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextBoxWidget(inputText: 'Your Name',iconPadding: 234.0,iconType: Icons.person,),
        TextBoxWidget(inputText: 'Your Email',iconPadding: 238.0,),
        TextBoxWidget(inputText: 'Password',iconPadding: 243.0,iconType: Icons.password,),
        TextBoxWidget(inputText: 'Repeat your password',iconPadding: 165.0,iconType: Icons.replay,),
      ],
    );
  }
}

class LastAccessView extends StatelessWidget {
  const LastAccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kSP18x),
              child: Checkbox(value: false, onChanged: (value){}),
            ),
            const Text(kAgreeText,
                style: TextStyle(
                    fontWeight: FontWeight.bold
                )),
            const Text(kServiceText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: kSP3x
              ),
            )
          ],
        ),
        const SizedBox(height: kSP30x,),
        Container(
          alignment: Alignment.center,
          width: kTextBoxWidth,
          height: kTextBoxHeight,
          decoration: const BoxDecoration(
            gradient: kGradientColor,
          ),
          child: const Text(kSignUpText,
            style: TextStyle(
              color: kSecondaryColor
            ),
          ),
        ),
        const SizedBox(height: kSP80x,),
      const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: kSP90x),
              child: Text(kHaveAccText),
            ),
            Text(kLoginHereText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                decorationThickness: kSP3x
              ),
            )
          ],
      )
      ],
    );
  }
}


