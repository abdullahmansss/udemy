import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/shop_app/login/shop_login_screen.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/network/local/cache_helper.dart';

class ShopLayout extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Salla',
        ),
      ),
      body: TextButton(
        onPressed: ()
        {
          CacheHelper.removeData(key: 'token',).then((value) {
            if(value)
            {
              navigateAndFinish(context, ShopLoginScreen(),);
            }
          });
        },
        child: Text(
          'SIGN OUT',
        ),
      ),
    );
  }
}