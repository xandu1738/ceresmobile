import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView(
        controller: PageController(viewportFraction: 0.8),
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            color: Colors.amber[100],
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.today,
                        size: 30,
                        color: Color.fromARGB(255, 0, 49, 25),
                      ),
                      Text(
                        "Today's Earnings",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 49, 25)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "300",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            color: Colors.greenAccent,
            width: 100,
          ),
        ],
      ),
    );
  }
}
