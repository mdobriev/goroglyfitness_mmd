
import 'package:flutter/material.dart';

class ChooseClubButton extends StatelessWidget {
  const ChooseClubButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: SizedBox(
        width: 250,
        height: 40,
        child: FloatingActionButton(
          backgroundColor: Colors.redAccent.shade700,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          elevation: 2,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Club №1: "Disnay Land"',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 20,
                child: Image.asset('icons/bar_stagged.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
