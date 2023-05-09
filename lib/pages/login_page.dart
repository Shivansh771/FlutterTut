import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/loging_image.png", fit: BoxFit.cover),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 32.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter UserName", labelText: "Username"),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: "Enter Password", labelText: "Password"),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        //  ElevatedButton(child: const Text("Login"),
                        // style: TextButton.styleFrom(
                        //      minimumSize: Size.fromWidth(100),
                        //     foregroundColor: Colors.white
                        //  ),
                        //   onPressed: (){
                        //     print("Hi Shivansh");
                        //   })
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: Text("Login"),
                          style:
                              TextButton.styleFrom(minimumSize:Size(150,40) ,foregroundColor: Colors.white, backgroundColor:const Color(0xffcb1c7d)),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}