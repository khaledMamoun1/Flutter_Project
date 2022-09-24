import 'package:flutter/material.dart';
import 'package:train_projects/auth/register_screen.dart';
import 'package:train_projects/screens/NavigationPage.dart';
// import 'Register.dart';


class Login extends StatelessWidget {
var formKey = GlobalKey<FormState>();

  Login({Key? key}) : super(key: key);

final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(

    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [


        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 40),
          child: Form(
            key: formKey,
           child: SingleChildScrollView(
            child: Column(
              children: [

                const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 50
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // controller: passwordController ,
                  validator: ((value) {
                    if(value!.isEmpty){
                      return "email address must not be empty";
                    }
                    return null;
                  }
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'EmailAddress',
                    labelStyle: TextStyle(color: Colors.grey)
                  ),
                ) ,
                const SizedBox(
                  height: 20,
                ),

                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'Password ot be empty ';
                    }
                    return null;
                  },
                  decoration:  const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password ',
                      labelStyle: TextStyle(color: Colors.grey),

                           ),
                ),
                ElevatedButton(
                    onPressed:() {

                  if(formKey.currentState!.validate()){}
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationPage(),));
                },  child: const Text('Login')
                ),
                Row(
                  children: [
                    const Text('I do not have an account'),
                    TextButton(
                        onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => RegisterScreen(),));
                    }, child: const Text('Register'))

                  ],
                )

              ],
            ),
           ),
          ),
         ),
      ],
    ),
    );
  }
