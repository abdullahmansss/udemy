import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/news_app/cubit/states.dart';
import 'package:udemy_flutter/modules/news_app/business/business_screen.dart';
import 'package:udemy_flutter/modules/news_app/science/science_screen.dart';
import 'package:udemy_flutter/modules/news_app/sports/sports_screen.dart';
import 'package:udemy_flutter/shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems =
  [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: 'Business',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: 'Sports',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Science',
    ),
  ];

  List<Widget> screens =
  [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
  ];

  void changeBottomNavBar(int index)
  {
    currentIndex = index;
    if(index == 1) {
      getSports();
    }
    if(index == 2) {
      getScience();
    }
    emit(NewsBottomNavState());
  }

  List<dynamic>? business = [];

  void getBusiness()
  {
    emit(NewsGetBusinessLoadingState());

    DioHelper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'country':'eg',
        'category':'business',
        'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
      },
    ).then((value)
    {
      //debugPrint(value.data['articles'][0]['title']);
      business = value.data['articles'];
      debugPrint(business![0]['title']);

      emit(NewsGetBusinessSuccessState());
    }).catchError((error){
      debugPrint(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic>? sports = [];

  void getSports()
  {
    emit(NewsGetSportsLoadingState());

    if(sports!.isEmpty)
    {
      DioHelper.getData(
        url: 'v2/top-headlines',
        query:
        {
          'country':'eg',
          'category':'sports',
          'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
        },
      ).then((value)
      {
        //debugPrint(value.data['articles'][0]['title']);
        sports = value.data['articles'];
        debugPrint(sports![0]['title']);

        emit(NewsGetSportsSuccessState());
      }).catchError((error){
        debugPrint(error.toString());
        emit(NewsGetSportsErrorState(error.toString()));
      });
    } else
      {
        emit(NewsGetSportsSuccessState());
      }
  }

  List<dynamic>? science = [];

  void getScience()
  {
    emit(NewsGetScienceLoadingState());

    if(science!.isEmpty)
    {
      DioHelper.getData(
        url: 'v2/top-headlines',
        query:
        {
          'country':'eg',
          'category':'science',
          'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
        },
      ).then((value)
      {
        //debugPrint(value.data['articles'][0]['title']);
        science = value.data['articles'];
        debugPrint(science![0]['title']);

        emit(NewsGetScienceSuccessState());
      }).catchError((error){
        debugPrint(error.toString());
        emit(NewsGetScienceErrorState(error.toString()));
      });
    } else
      {
        emit(NewsGetScienceSuccessState());
      }
  }

  List<dynamic>? search = [];

  void getSearch(String value)
  {
    emit(NewsGetSearchLoadingState());

    DioHelper.getData(
      url: 'v2/everything',
      query:
      {
        'q':value,
        'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
      },
    ).then((value)
    {
      //debugPrint(value.data['articles'][0]['title']);
      search = value.data['articles'];
      debugPrint(search![0]['title']);

      emit(NewsGetSearchSuccessState());
    }).catchError((error){
      debugPrint(error.toString());
      emit(NewsGetSearchErrorState(error.toString()));
    });
  }
}