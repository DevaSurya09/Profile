import 'package:flutter/material.dart';

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
          children: [
            // FittedBox(
            //   fit: BoxFit.fill,
            //   child: Row(
            //     children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://gamexran.com/cara-mendapatkan-karakter-qiqi-di-genshin-impact/"),
              ),
              title: const Text(
                'ahmad dani',
              ),
              subtitle: const Text(
                '@gmail.com',
              ),
              trailing:
                  ElevatedButton(onPressed: () {}, child: const Text('Edit')),
            )
          ],
          //     ),
          //   ),
          // ],
        ),
      ),
    );
  }
}
