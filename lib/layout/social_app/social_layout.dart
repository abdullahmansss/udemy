import 'package:conditional_builder/conditional_builder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/social_app/cubit/cubit.dart';
import 'package:udemy_flutter/layout/social_app/cubit/states.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class SocialLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'News Feed',
            ),
          ),
          body: ConditionalBuilder(
            condition: SocialCubit.get(context).model != null,
            builder: (context) {
              var model = FirebaseAuth.instance.currentUser.emailVerified;
              print(model);

              return Column(
                children: [
                  if (!model)
                    Container(
                      color: Colors.amber.withOpacity(.6),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Expanded(
                              child: Text(
                                'please verify your email',
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            defaultTextButton(
                              function: ()
                              {
                                FirebaseAuth.instance.currentUser
                                    .sendEmailVerification()
                                    .then((value)
                                {
                                  showToast(
                                    text: 'check your mail',
                                    state: ToastStates.SUCCESS,
                                  );
                                }).catchError((error) {});
                              },
                              text: 'send',
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
            fallback: (context) => Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
