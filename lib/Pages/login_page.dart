import 'package:flutter/material.dart';

class loginPage extends StatelessWidget{
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
      return  Material(
        color: Colors.white,
        child: Column(
          children: [
            //Image.asset("assets/images/loging_image.png")
            Image.asset("assets/images/loging_image.png",
                fit:BoxFit.cover),
             const SizedBox(
              height: 20.0,
            ),
            const Text("Welcome",
            style:TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),

            ),    const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(child: const Text("Login"),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white
                      ),
                      onPressed: (){
                    print("Hi Shivansh");
                      })
                ],
              ),
            )
          ],
        )
      );
  }
  
}