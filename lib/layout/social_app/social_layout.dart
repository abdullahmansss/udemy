import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/social_app/cubit/cubit.dart';
import 'package:udemy_flutter/layout/social_app/cubit/states.dart';
import 'package:udemy_flutter/modules/social_app/new_post/new_post_screen.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/styles/icon_broken.dart';

class SocialLayout extends StatelessWidget
{
  const SocialLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {
        if (state is SocialNewPostState) {
          navigateTo(
            context,
            const NewPostScreen(),
          );
        }
      },
      builder: (context, state)
      {
        var cubit = SocialCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(
              cubit.titles[cubit.currentIndex],
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  IconBroken.kNotification,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  IconBroken.kSearch,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index)
            {
              cubit.changeBottomNav(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.kHome,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.kChat,
                ),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.kPaperUpload,
                ),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.kLocation,
                ),
                label: 'Users',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.kSetting,
                ),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}