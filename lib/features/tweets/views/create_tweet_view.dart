import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/common/rounded_small_button.dart';
import 'package:twitter_clone/theme/palette.dart';

const String createTweetRoute = '/create-tweet';

class CreateTweetScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const CreateTweetScreen(),
      );

  const CreateTweetScreen({super.key});

  @override
  State<CreateTweetScreen> createState() => _CreateTweetScreenState();
}

class _CreateTweetScreenState extends State<CreateTweetScreen> {
  // final  user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            size: 30,
          ),
        ),
        actions: [
          RoundedSmallButton(
            onTap: () {},
            label: 'Tweet',
            backgroundColor: Palette.blueColor,
            textColor: Palette.whiteColor,
          )
        ],
      ),
      body: const SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [Row(
            children: [CircleAvatar(
              backgroundImage: NetworkImage(AutofillHints.jobTitle),
              
              
            )],
          )],
        ),
      ),),
    );
  }
}
