import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/shop_app/cubit/cubit.dart';
import 'package:udemy_flutter/layout/shop_app/cubit/states.dart';
import 'package:udemy_flutter/models/shop_app/favorites_model.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/styles/colors.dart';

class FavoritesScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<ShopCubit, ShopStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        return ConditionalBuilder(
          condition: state is! ShopLoadingGetFavoritesState,
          builder: (context) => ListView.separated(
            itemBuilder: (context, index) => buildListProduct(ShopCubit.get(context).favoritesModel.data.data[index].product, context),
            separatorBuilder: (context, index) => myDivider(),
            itemCount: ShopCubit.get(context).favoritesModel.data.data.length,
          ),
          fallback: (context) => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}