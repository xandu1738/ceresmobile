import 'package:ceresmobile/ui/widgets/balance.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hello, Alex'),
            const Balance(),
            const SizedBox(
              height: 20,
            ),
            const Text("Transactions"),
            const SizedBox(
              height: 5,
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text("Mac"),
                  subtitle: Text("Apple"),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 10,
                );
              },
              itemCount: 10,
            ),
          ],
        ),
      ),
    );
  }
}
