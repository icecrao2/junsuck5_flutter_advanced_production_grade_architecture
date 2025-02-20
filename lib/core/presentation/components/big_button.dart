import 'package:flutter/material.dart';
import 'package:flutter_recipe_app_course/ui/color_styles.dart';
import 'package:flutter_recipe_app_course/ui/text_styles.dart';

class BigButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const BigButton(this.text, {super.key, required this.onPressed,});

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isPressed ? ColorStyles.gray4 : ColorStyles.primary100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyles.normalTextBold.copyWith(
                  color: Colors.white
              ),
            ),
            const SizedBox(width: 11,),
            const Icon(
              Icons.arrow_forward,
              size: 20,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

/// ui 작성 대원칙
/// 1. 디자인 코드 내에 로직을 넣지 마라
/// 디자인 컴포넌트 안에서 어떤 코드를 작성하면 재활용 할 수 없는 컴포넌트가 되어버린다.
/// (ex. 버튼 컴포넌트에 Navigator 코드를 넣는다면 이 컴포넌트는 재활용 될 수 없는 코드가 된다.)
/// 2. 상태관리 툴을 사용할때 디자인 코드 내에서 상태관리 툴을 사용하지 마라
/// 디자인 컴포넌트 안에서 상태관리 툴이 녹아들면 재활용 할 수 없는 컴포넌트가 되어버린다.
