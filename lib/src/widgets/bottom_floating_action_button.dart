
import 'package:flutter/material.dart';

class BottomFloatingActionButton extends StatelessWidget {

  final IconData btnIcon;
  final String btnText;

  const BottomFloatingActionButton({
    super.key,
    required this.btnIcon,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // elevation: 4,
      backgroundColor: Colors.redAccent.shade700,
      onPressed: () {},
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Icon(
                btnIcon,
                color: Colors.white,
                size: 26,
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                textAlign: TextAlign.center,
                btnText,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}


class BottomFloatingActionButtonNotFull extends StatelessWidget {
  
  final IconData btnIcon;
  final String btnText;

  const BottomFloatingActionButtonNotFull({
    super.key,
    required this.btnIcon,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // elevation: 4,
      backgroundColor: Colors.redAccent.shade700,
      onPressed: () {},
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Icon(
                btnIcon,
                color: Colors.white,
                size: 26,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                textAlign: TextAlign.center,
                btnText,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
