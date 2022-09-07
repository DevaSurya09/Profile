import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm81XoZa9dFFAFPY-LjxgJ-XAj-KeySicSvw&usqp=CAU"),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 0, 3, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Arash Ranjbaran',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'arashranjbaran@gmail.com',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          titleSpacing: 10,
          actions: [
            Container(
              width: 83,
              height: 35,
              margin: const EdgeInsets.fromLTRB(0, 9, 16, 9),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Edit'),
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 65,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromARGB(255, 247, 248, 248),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Text(
                              '170cm',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 221, 163),
                              ),
                            ),
                          ),
                          Center(child: Text('Hight')),
                        ],
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromARGB(255, 247, 248, 248),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Text(
                              '60kg',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 221, 163),
                              ),
                            ),
                          ),
                          Center(child: Text('width')),
                        ],
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromARGB(255, 247, 248, 248),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Text(
                              '25yo',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 221, 163),
                              ),
                            ),
                          ),
                          Center(child: Text('Age')),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      height: 195,
                      width: 343,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromARGB(255, 247, 248, 248),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ListTile(
                            title: Text(
                              'judul',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          account(
                            icon: Icons.person_outline,
                            title: 'a',
                          ),
                          account(
                            icon: Icons.person_outline,
                            title: 'a',
                          ),
                          account(
                            icon: Icons.person_outline,
                            title: 'a',
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class account extends StatelessWidget {
  final IconData icon;
  final String title;

  const account({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
