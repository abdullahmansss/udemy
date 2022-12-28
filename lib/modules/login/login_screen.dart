import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';

// reusable components

// 1. timing
// 2. refactor
// 3. quality
// 4. clean code

class LoginScreen extends StatelessWidget
{
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    label: 'Email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (String value)
                    {
                      if(value.isEmpty)
                      {
                        return 'email must not be empty';
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    label: 'Password',
                    prefix: Icons.lock,
                    suffix: Icons.remove_red_eye,
                    isPassword: true,
                    type: TextInputType.visiblePassword,
                    validate: (String value)
                    {
                      if(value.isEmpty)
                      {
                        return 'password is too short';
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'login',
                    function: ()
                    {
                      if(formKey.currentState.validate())
                      {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'ReGIster',
                    function: ()
                    {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}