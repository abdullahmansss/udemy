import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/shop_app/cubit/states.dart';
import 'package:udemy_flutter/models/shop_app/home_model.dart';
import 'package:udemy_flutter/modules/shop_app/cateogries/categories_screen.dart';
import 'package:udemy_flutter/modules/shop_app/favorites/favorites_screen.dart';
import 'package:udemy_flutter/modules/shop_app/products/products_screen.dart';
import 'package:udemy_flutter/modules/shop_app/settings/settings_screen.dart';
import 'package:udemy_flutter/shared/components/constants.dart';
import 'package:udemy_flutter/shared/network/end_points.dart';
import 'package:udemy_flutter/shared/network/remote/dio_helper.dart';

class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(ShopInitialState());

  static ShopCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    ProductsScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(ShopChangeBottomNavState());
  }

  HomeModel homeModel;

  void getHomeData()
  {
    emit(ShopLoadingHomeDataState());

    DioHelper.getData(
      url: HOME,
      token: token,
    ).then((value)
    {
      homeModel = HomeModel.fromJson(value.data);

      printFullText(homeModel.data.banners[0].image);
      print(homeModel.status);

      emit(ShopSuccessHomeDataState());
    }).catchError((error)
    {
      print(error.toString());
      emit(ShopErrorHomeDataState());
    });
  }
}
