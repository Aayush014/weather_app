import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Surat",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
            Text("October 8, 2024",
                style: TextStyle(fontSize: 15, color: Colors.white)),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue.shade400,
              Colors.blue.shade600,
              Colors.blue.shade800,
            ],
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sunny,
              color: Colors.white,
              size: 100,
            ),
            Text(
              "40℃ ",
              style: TextStyle(fontSize: 50),
            ),
            Text(
              "Clear Sky",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 5,
                            right: 5,
                          ),
                          child: Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.white38,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.white38,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 85,
                      width: 85 * 2 + 8,
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
                Container(
                  height: 85 * 2 + 8,
                  width: 85 * 2 + 8,
                  decoration: BoxDecoration(
                      color: Colors.white38, borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Open Weather"),
                  Text("Last Updated 3:50 PM"),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
