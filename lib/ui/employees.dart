import 'package:flutter/material.dart';

import 'widgets/user_profile.dart';

class Employees extends StatelessWidget {
  const Employees({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: const [
          UserProfileCard(
            name: 'John Doe',
            email: 'johndoe@example.com',
            profileImageUrl:
                'https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947__340.jpg',
          ),
          UserProfileCard(
            name: 'Jane Doe',
            email: 'johndoe@example.com',
            profileImageUrl:
                'https://cdn.pixabay.com/photo/2017/01/27/16/09/people-2013447__340.jpg',
          ),
        ],
      ),
    );
  }
}
