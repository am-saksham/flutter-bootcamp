import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  var name = "";
  var email = "";
  var password = "";
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name:",
                labelStyle: TextStyle(fontSize: 20),
                errorStyle: TextStyle(color: Colors.redAccent, fontSize: 20)
              ),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Please enter name!";
                }
              },
              controller: nameController,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email:",
                labelStyle: TextStyle(fontSize: 20),
              ),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Please enter email!";
                } else if(!value.contains('@'))
                  {
                    return "Please enter valid email!";
                  }
              },
              controller: emailController,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password:",
                labelStyle: TextStyle(fontSize: 20),
              ),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Please enter Password!";
                }
              },
              controller: passwordController,
            ),
            ElevatedButton(onPressed: () {
              if(_formKey.currentState!.validate()) {
                setState(() {
                  name = nameController.text;
                  email = emailController.text;
                  password = passwordController.text;
                });
              }
            }, child: Text("Submit", style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black,
              ),
            ),
            Text("Name: $name"),
          Text("Email: $email"),
            Text("Password: $password"),
          ],
        ),
      ),
    );
  }
}
