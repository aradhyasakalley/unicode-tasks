import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController names = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Stack(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 80.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                )),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                Container(
                  padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: names,
                        decoration: InputDecoration(
                          labelText: 'Names',
                          prefixIcon: Icon(Icons.person),
                          border: MyInputBorder(),
                          enabledBorder: MyInputBorder(),
                          focusedBorder: MyFocusBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller: username,
                        decoration: InputDecoration(
                          labelText: 'username',
                          prefixIcon: Icon(Icons.people),
                          border: MyInputBorder(),
                          enabledBorder: MyInputBorder(),
                          focusedBorder: MyFocusBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller: email,
                        decoration: InputDecoration(
                          labelText: 'email',
                          prefixIcon: Icon(Icons.email),
                          border: MyInputBorder(),
                          enabledBorder: MyInputBorder(),
                          focusedBorder: MyFocusBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller: password,
                        decoration: InputDecoration(
                          labelText: 'password',
                          prefixIcon: Icon(Icons.password),
                          border: MyInputBorder(),
                          enabledBorder: MyInputBorder(),
                          focusedBorder: MyFocusBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Update'),
                        style: ElevatedButton.styleFrom(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Stack(children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'images/profile.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 5.0,
                right: 10,
                child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                        color: Colors.amberAccent, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.edit,
                      size: 30.0,
                    )),
              )
            ]),
          ),
        ]),
      ),
    );
  }

  OutlineInputBorder MyInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      borderSide: BorderSide(
        color: Colors.black,
        width: 3,
      ),
    );
  }

  OutlineInputBorder MyFocusBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        borderSide: BorderSide(
          color: Colors.black12,
          width: 3,
        ));
  }
}
