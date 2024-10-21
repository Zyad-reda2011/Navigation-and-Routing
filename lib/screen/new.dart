// ignore_for_file: prefer_const_constructors, avoid_print, prefer_final_fields, unnecessary_null_comparison, unused_import, unused_element, deprecated_member_use, use_super_parameters, override_on_non_overriding_member, unused_field
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';

launchURLBrowser() async 
    {
      var url = Uri.parse("https://translate.google.com/");
      if (await canLaunchUrl(url)) 
      {
      await launchUrl(url);
      } 
      else 
      {
      throw 'Could not launch $url';
      }
    }

launchURLApp() async 
{
  var url = Uri.parse("https://github.com/");
  if (await canLaunchUrl(url)) 
  {
    await launchUrl(url);
  } 
  else 
  {
    throw 'Could not launch $url';
  }
}

void main() 
{
  runApp(MaterialApp
  (
    // initialRoute: '/',
    // routes: 
    // {
    //   '/': (context) => const HomeRoute(),
    //   '/second': (context) => const SecondRoute(),
    //   '/third': (context) => const ThirdRoute(),
    // },
    home: HomeRoute(),
  )
  ); //MaterialApp
}

class HomeRoute extends StatefulWidget // Stateless Widget is a type of widget which once built , then it’s properties and state can’t be changed. These widgets are immutable, once created can’t be modified.
{                                     // Stateful Widgets is a type of widget that can change state. It can maintain and update the appearance in the response to change in state.
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}
  // String? email;
  // String? password;
  //or
  // String email = "";
  // String password = "";
  // TextEditingController? email;
  // TextEditingController? password; 
  // or
  // TextEditingController _email = TextEditingController();     // to make it private field we use the underscore (_) before the parameter
  // TextEditingController _password = TextEditingController();  // to make it private field we use the underscore (_) before the parameter
  // final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.all(10.0),
      // padding: const EdgeInsets.symmetric(horizontal: ,vertical: ),
      // padding: const EdgeInsets.only(top: ,bottom: ,right: ,left: ),
      child: Form
      (
        // key: _formkey,
        child: Container
        (
          color: Colors.tealAccent,
          width: double.infinity,
          child: Column
          (
            children: 
            [
              SizedBox
              (
                height: 25.0,
              ),
              // Image
              // (
              //   height: 120,
              //   image:
              //    AssetImage("6042.JPG")
              // ),
              Text
              (
                "Navigation and Routing" , 
                style: TextStyle
                (
                  color: const Color.fromARGB(255, 216, 17, 3), 
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                )
              ),
              Image
              (
                image: 
                NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJZMGY28btY5oNXXgpXFrY6OOkmm5im_FDsg&s")
              ),
              SizedBox
              (
                height: 25.0,
              ),
              // TextFormField
              // (
              //   // onChanged: (value) 
              //   // {
              //   //   // setState // to ask about it eng.mostafa zayed !!
              //   //   // (
              //   //   // () 
              //   //   // {  
              //   //   email = value;
              //   //   // }
              //   //   // );
              //   // }, 
              //   validator: (value) 
              //   {
              //     if (value == null || value.isEmpty)
              //     {
              //       return("Please, Enter your E-mail");
              //     }
              //     return null;
              //   },
              //   controller: _email,
              //   decoration: InputDecoration
              //   (
              //     // helperText: "Enter your Name"
              //     // hintText: "Enter your Name"
              //     labelText: "Enter your Name",
              //     // border: OutlineInputBorder(),
              //     border: OutlineInputBorder(),
              //     // helperText: email,
              //   ),
              // ),
              // Container
              // (
              //   height: 20,
              // ),
              // TextFormField
              // (
              //   controller: _password,
              //     // onChanged : (value)
              //     // {
              //     //   password = value;
              //     // },
              //     validator: (value) 
              //   {
              //     if (value == null || value.isEmpty)
              //     {
              //       return("Please, Enter your Password");
              //     }
              //     return null;
              //   },
              //   obscureText: true, /// to make it invisible as it is a password
              //   decoration: InputDecoration
              //   (
              //     // helperText: "Enter your Password"
              //     // hintText: "Enter your Password"
              //     labelText: "Enter your Password",
              //     border: OutlineInputBorder(),
              //     // helperText: password,
              //   ),
              //   keyboardType: TextInputType.visiblePassword,
              // ),
              SizedBox
              (
                height: 25.0,
              ),
              Container
              (
                height: 10,
              ),
              // MaterialButton
              // (
              //   hoverColor: Colors.deepOrange,
              //   minWidth: double.infinity,
              //   color: Colors.cyan,
              //   // onPressed: () 
              //   // {
              //   //   setState(() {});
              //   //   print(_email.text); // we put text after each private email and private password to show us the text only not the object
              //   //   print(_password.text);
              //   // },
              //   onPressed: () 
              //   {
              //     // Validate returns true if the form is valid, or false otherwise.
              //     if (_formkey.currentState!.validate()) 
              //     {
              //     // If the form is valid, display a snackbar. In the real world,
              //     // you'd often call a server or save the information in a database.
              //     ScaffoldMessenger.of(context).showSnackBar
              //     (
              //     const SnackBar(content: Text('Processing Data')),
              //     );
              //     }
              //     else
              //     {
              //       if (_email.text == null || _email.text.isEmpty)
              //       {
              //         ScaffoldMessenger.of(context).showSnackBar
              //         (
              //           const SnackBar(content: Text('email not valid')),
              //         );
              //       }
              //       else
              //       {
              //         ScaffoldMessenger.of(context).showSnackBar
              //         (
              //           const SnackBar(content: Text('password not valid')),
              //         );
              //       }
              //     }
              //   },
              //   child: Text("LOGIN"), 
              // ),
              Container
              (
                height: 10,
              ),
              ElevatedButton
              (
                onPressed: launchURLBrowser, 
                style: ButtonStyle
                (
                  padding: MaterialStateProperty.all(EdgeInsets.all(15.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(color:Colors.deepOrange)),
                ),
                child: Text("open url in browser"),
              ),
              Container
              (
                height: 10,
              ),
              ElevatedButton
              (
                onPressed: launchURLApp, 
                style: ButtonStyle
                (
                  padding: MaterialStateProperty.all(EdgeInsets.all(15.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(color:Colors.greenAccent)),
                ),
                child: Text("open url in app"),
              ),
              // ElevatedButton
              // (
              //   child: const Text('Click Me!'),
              //   onPressed: () 
              //   {
              //   Navigator.pushNamed(context, '/second');
              //   },
              // ),
              // ElevatedButton
              // (
              //   child: const Text('Tap Me!'),
              //   onPressed: () 
              //   {
              //   Navigator.pushNamed(context, '/third');
              //   }           
              // )
              Container
              (
                height: 10,
              ),
              ElevatedButton
              (
                child: Text("Click!"),
                onPressed: () 
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const SecondRoute()));
                }
              ),
              Container
              (
                height: 10,
              ),
              ElevatedButton
              (
                child: Text("HI!"),
                onPressed: () 
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const ThirdRoute()));
                }
              ),
              Container
              (
                height: 10,
              ),
              ElevatedButton
              (
                child: Text("BRING IT!"),
                onPressed: () 
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const FourthRoute()));
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
class SecondRoute extends StatelessWidget 
{
  const SecondRoute({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Click Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center
      (
        child: ElevatedButton
        (
          onPressed: () 
          {
            Navigator.pop(context);
          },
          child: const Text('Home!'),
        )
      )
    );
  }
}
  class ThirdRoute extends StatelessWidget 
{
  const ThirdRoute({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Welcome Page"),
        backgroundColor: const Color.fromARGB(255, 218, 81, 81),
      ),
      body: Center
      ( 
        child: ElevatedButton
        (
          onPressed: () 
          {
            Navigator.pop(context);
          },
          child: const Text('MY WIDGET!'),
        )
      )
    );
  }
}
  class FourthRoute extends StatelessWidget 
{
  const FourthRoute({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Download Page"),
        backgroundColor: const Color.fromARGB(255, 76, 78, 175),
      ),
      body: Center
      (
        child: ElevatedButton
        (
          onPressed: () 
          {
            Navigator.pop(context);
          },
          child: const Text('no!'),
        )
      )
    );
  }
}
  //   return Scaffold
  //   (
  //     appBar: AppBar
  //     (
  //       title: const Text("Click Me Page"),
  //       backgroundColor: Colors.green,
  //     ),
  //     body: Center
  //     (
  //       child: ElevatedButton
  //       (
  //         onPressed: () 
  //         {
  //           Navigator.pop(context);
  //         },
  //         child: const Text('Back!'),
  //       ),
  //     ),
  //   );
  // } 
// class ThirdRoute extends StatelessWidget 
// {
//   const ThirdRoute({Key? key}) : super(key: key);
 
//   @override
//   Widget build(BuildContext context) 
//   {
//     return Scaffold
//     (
//       appBar: AppBar
//       (
//         title: const Text("Tap Me Page"),
//         backgroundColor: Colors.green,
//       ),
//     );
//   }
// }