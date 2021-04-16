import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/social_app/chat_details/chat_details_screen.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/styles/colors.dart';

class ChatsScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
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
    );
  }

  Widget buildNot1(context) => InkWell(
    onTap: ()
    {
      navigateTo(context, ChatDetailsScreen(),);
    },
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children:
            [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                  'https://image.freepik.com/free-photo/skeptical-woman-has-unsure-questioned-expression-points-fingers-sideways_273609-40770.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 2.0,
                  end: 2.0,
                ),
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Courtney Henry',
                        style: TextStyle(
                          height: 1.4,
                        ),
                      ),
                    ),
                    Text(
                      '20 min',
                      style: Theme.of(context).textTheme.caption.copyWith(
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
                Text(
                  'meeting will be today at 04:00 pm',
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

  Widget buildNot2(context) => InkWell(
    onTap: (){},
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children:
            [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                  'https://image.freepik.com/free-photo/funny-cheerful-male-gamer-plays-video-games-via-smartphone-wears-yellow-hat-striped-jumper-being-addicted-modern-technologies-isolated-purple-wall-checks-out-new-application_273609-27858.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 2.0,
                  end: 2.0,
                ),
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Lane Flores',
                        style: TextStyle(
                          height: 1.4,
                        ),
                      ),
                    ),
                    Text(
                      'yesterday',
                      style: Theme.of(context).textTheme.caption.copyWith(
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
                Text(
                  'please call mw when you online',
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