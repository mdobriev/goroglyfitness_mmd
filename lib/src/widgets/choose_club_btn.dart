import 'dart:js';

import 'package:app/src/widgets/blur_filter.dart';
import 'package:flutter/material.dart';

class ChooseClubButton extends StatelessWidget {
  const ChooseClubButton({
    super.key,
  });

  _chooseClubModalOpen(ctx) {
    showModalBottomSheet(
      context: ctx,
      backgroundColor: Colors.white12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.red.shade700,
            borderRadius: BorderRadius.circular(50),
          ),
          width: double.infinity,
          margin: EdgeInsets.all(10),
          height: 300,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                child: const Center(child: Text('Entry A')),
              ),
              Divider(),
              Container(
                height: 50,
                child: const Center(child: Text('Entry B')),
              ),
              Divider(),
              Container(
                height: 50,
                child: const Center(child: Text('Entry C')),
              ),
              Divider(),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: SizedBox(
        width: 250,
        height: 40,
        child: FloatingActionButton(
          backgroundColor: Colors.redAccent.shade700,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 2,
          onPressed: () => _chooseClubModalOpen(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Club №1: "Disnay Land"',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
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
