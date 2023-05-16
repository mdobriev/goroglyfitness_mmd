import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

// custom widgets
import '../widgets/image_carousel.dart';
import '../widgets/current_workload.dart';
import '../widgets/choose_club_btn.dart';
import '../widgets/training_info_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  int current = 0;

  void carouselImageChanged(index, reason) {
    setState(() => {current = index});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ChooseClubButton(),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 260,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(children: [
                ImageCarousel(
                  imgList: imgList,
                  imageChanged: carouselImageChanged,
                ),
                DotsIndicator(
                  dotsCount: imgList.length,
                  position: current,
                )
              ]),
            ),
            // Загруженность зала
            CurrentWorkload(),

            // Заголовок ближайшие занятия
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(30, 30, 20, 10),
              child: Text(
                'Ближайшие тренировки: ',
                textAlign: TextAlign.start,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),

            // Ближайшие занятия
            TrainingInfoCard(),
            TrainingInfoCard(),
            TrainingInfoCard(),
            TrainingInfoCard(),

            // Пустой блок
            SizedBox(height: 200,)
          ],
        ),
      ),
    );
  }
}
