import 'package:flutter/material.dart';

class CurrentWorkload extends StatelessWidget {
  const CurrentWorkload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      // padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.redAccent.shade700,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
        child: Row(children: [
          Expanded(
            child: Opacity(
              opacity: 0.8,
              child: Image.asset(
                'icons/cardiogram.png',
              ),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '32',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Current workload',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ))
        ]),
      ),
    );
  }
}
