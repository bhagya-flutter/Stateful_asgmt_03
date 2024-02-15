import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  // VARIABLE
  int? selectedIndex = 0;

  // LIST OF IMAGES
  final List<String> imageList = [
    "https://img.freepik.com/free-photo/beautiful-countryside-road-greenery-forests_181624-5399.jpg?w=740&t=st=1707932095~exp=1707932695~hmac=73e492cac3aa3be956a9cea4f738c54e6f917d3844cf2e88890ec2b8b4d151a8",
    "https://img.freepik.com/premium-photo/watercolor-painting-waterfall-forest-vector-illustrationwatercolor-painting-waterf_1016228-3050.jpg?w=996",
    "https://img.freepik.com/free-photo/pathway-surrounded-by-trees-bushes-forest-sunlight_181624-26023.jpg?w=740&t=st=1707932377~exp=1707932977~hmac=553364b786114dc2a990fd39f14b024ca4c4483405fbdf42eb90fa19929d74ad",
    "https://img.freepik.com/free-photo/beautiful-wooden-pathway-going-breathtaking-colorful-trees-forest_181624-5840.jpg?w=1480&t=st=1707932422~exp=1707933022~hmac=9035080ebed7ebbc7580fc16c107993a2f87120e6256a309011e9395dbde8e60"
  ];

  void showNextImage() {
    setState(() {
      selectedIndex = selectedIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Display Images",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextImage,
              child: const Text(
                "Next",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text(
                "Reset",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
