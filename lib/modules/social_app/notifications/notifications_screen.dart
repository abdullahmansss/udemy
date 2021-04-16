import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/styles/colors.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 16.0,
          ),
        ),
        title: Text(
          'Notifications',
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children:
          [
            buildNot2(context),
            myDivider(),
            buildNot2(context),
            myDivider(),
            buildNot1(context),
            myDivider(),
            buildNot2(context),
            myDivider(),
            buildNot1(context),
            myDivider(),
            buildNot2(context),
            myDivider(),
          ],
        ),
      ),
    );
  }

  Widget buildNot1(context) => InkWell(
    onTap: (){},
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage(
              'https://image.freepik.com/free-photo/skeptical-woman-has-unsure-questioned-expression-points-fingers-sideways_273609-40770.jpg',
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Courtney Henry',
                  style: TextStyle(
                    height: 1.4,
                  ),
                ),
                Text(
                  'requests to follow you',
                  style: Theme.of(context).textTheme.caption.copyWith(
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            height: 25.0,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Delete',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Container(
            height: 25.0,
            decoration: BoxDecoration(
              color: defaultColor,
              borderRadius: BorderRadius.circular(
                4.0,
              ),
            ),
            child: MaterialButton(
              onPressed: () {},
              minWidth: 1.0,
              child: Text(
                'Confirm',
                style: Theme.of(context).textTheme.caption.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget buildNot2(context) => InkWell(
    onTap: (){},
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage(
              'https://image.freepik.com/free-photo/funny-cheerful-male-gamer-plays-video-games-via-smartphone-wears-yellow-hat-striped-jumper-being-addicted-modern-technologies-isolated-purple-wall-checks-out-new-application_273609-27858.jpg',
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Davis Flores',
                  style: TextStyle(
                    height: 1.4,
                  ),
                ),
                Text(
                  'commented on your post',
                  style: Theme.of(context).textTheme.caption.copyWith(
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
