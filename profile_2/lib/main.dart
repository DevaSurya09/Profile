import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

void main(List<String> args) {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.white,
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm81XoZa9dFFAFPY-LjxgJ-XAj-KeySicSvw&usqp=CAU",
                ),
              ),
              title: const Text(
                'Akuh Anak SGM',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'akuhanaksgm@gmail.com',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Container(
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 0, 221, 163),
                    ),
                    child: const Text('Edit')),
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  data(
                    data_label: '170 cm',
                    label: 'Hight',
                  ),
                  data(
                    data_label: '55 kg',
                    label: 'Weight',
                  ),
                  data(
                    data_label: '33yo',
                    label: 'Age',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color.fromARGB(255, 247, 248, 248),
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Account',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Account(
                    icon: Icons.person_outline_outlined,
                    title: 'Personal Data',
                  ),
                  Account(
                    icon: Icons.article_outlined,
                    title: 'Achievement',
                  ),
                  Account(
                    icon: Icons.incomplete_circle_outlined,
                    title: 'Activity History',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color.fromARGB(255, 247, 248, 248),
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Notivication',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.black,
                      size: 25,
                    ),
                    title: Text(
                      'Pop-up Notification',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12),
                    ),
//                    trailing:,//<<---------------------------------------------------------------------------------------
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color.fromARGB(255, 247, 248, 248),
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      'Other',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Account(
                    icon: Icons.email_outlined,
                    title: 'contact us',
                  ),
                  Account(
                    icon: Icons.shield_outlined,
                    title: 'Privacy Policy',
                  ),
                  Account(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Account extends StatelessWidget {
  final IconData icon;
  final String title;
  const Account({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
          size: 25,
        ),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 12),
        ),
        trailing: ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(0, 0, 0, 0),
              elevation: 0,
              shadowColor: Color.fromARGB(0, 0, 0, 0)),
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
            color: Colors.black,
          ),
          label: Text(''),
        ));
  }
}

class data extends StatelessWidget {
  final String data_label;
  final String label;
  const data({
    Key? key,
    required this.data_label,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 15, 8, 15),
      height: 65,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: const Color.fromARGB(255, 247, 248, 248),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              data_label,
              style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 0, 221, 163),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              label,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
