import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/styles/colors.dart';
import 'package:udemy_flutter/shared/styles/icon_broken.dart';

class ChatDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        titleSpacing: 0.0,
        title: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 15.0,
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
                    radius: 4.0,
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
                  Text(
                    'Courtney Henry',
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                          height: 1.0,
                        ),
                  ),
                  Text(
                    'online',
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
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(
                                10.0,
                              ),
                              topEnd: Radius.circular(
                                10.0,
                              ),
                              bottomEnd: Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'yeah i know, i\'m in the same situation',
                            ),
                          ),
                        ),
                        Text(
                          '1:30 pm',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:
                      [
                        Container(
                          decoration: BoxDecoration(
                            color: defaultColor.withOpacity(.1,),
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(
                                10.0,
                              ),
                              topEnd: Radius.circular(
                                10.0,
                              ),
                              bottomStart: Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'sure, thank you',
                            ),
                          ),
                        ),
                        Text(
                          '1:30 pm',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(
                                10.0,
                              ),
                              topEnd: Radius.circular(
                                10.0,
                              ),
                              bottomEnd: Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'yeah i know, i\'m in the same situation',
                            ),
                          ),
                        ),
                        Text(
                          '1:30 pm',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:
                      [
                        Container(
                          decoration: BoxDecoration(
                            color: defaultColor.withOpacity(.1,),
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(
                                10.0,
                              ),
                              topEnd: Radius.circular(
                                10.0,
                              ),
                              bottomStart: Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'sure, thank you',
                            ),
                          ),
                        ),
                        Text(
                          '1:30 pm',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(
                                10.0,
                              ),
                              topEnd: Radius.circular(
                                10.0,
                              ),
                              bottomEnd: Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'yeah i know, i\'m in the same situation',
                            ),
                          ),
                        ),
                        Text(
                          '1:30 pm',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:
                      [
                        Container(
                          decoration: BoxDecoration(
                            color: defaultColor.withOpacity(.1,),
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(
                                10.0,
                              ),
                              topEnd: Radius.circular(
                                10.0,
                              ),
                              bottomStart: Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'sure, thank you',
                            ),
                          ),
                        ),
                        Text(
                          '1:30 pm',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 45.0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey[300],
                ),
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 15.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'type your message here ...',
                          hintStyle: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ),
                    Container(
                      height: 45.0,
                      color: defaultColor,
                      child: MaterialButton(
                        onPressed: () {},
                        minWidth: 1.0,
                        child: Icon(
                          IconBroken.Send,
                          size: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
