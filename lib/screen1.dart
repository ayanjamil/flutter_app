import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 70, 27),
        title: const Text('WhatsApp',
            textAlign: TextAlign.right, style: TextStyle(fontSize: 24.0)),
        toolbarHeight: 90,

        //methord 1

        // actions: [

        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {
        //       // Add your search functionality here
        //     },
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.camera),
        //     onPressed: () {
        //       // Add your search functionality here
        //     },
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.share),
        //     onPressed: () {
        //       // Add your search functionality here
        //     },
        //   ),
        // ],

        //methord 2

        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Add your search functionality here
                },
              ),
              IconButton(
                icon: Icon(Icons.camera),
                onPressed: () {
                  // Add your search functionality here
                },
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // Add your search functionality here
                },
              ),
            ],
          )
        ],
      ),
      //body
      body: Container(
        // color: Color.fromARGB(255, 10, 58, 35),
        child: Center(
            child: Container(
          height:
              800, // the problem is that if the screen size is more then this widget will not cover whole screen so figure this out
          color: Color.fromARGB(255, 10, 58, 35),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  MyListTile(
                    personName: 'Samarth',
                    // isChecked: true,
                  ),
                  MyListTile(
                    personName: 'Rahul',
                    // isChecked: true,
                  ),
                  MyListTile(
                    personName: 'Samarth1',
                    // isChecked: false,
                  ),
                  MyListTile(
                    personName: 'Rahul1',
                    // isChecked: true,
                  ),
                  MyListTile(
                    personName: 'Samarth2',
                    // isChecked: false,
                  ),
                  MyListTile(
                    personName: 'Rahul2',
                    // isChecked: true,
                  ),
                  MyListTile(
                    personName: 'Rahul2',
                    // isChecked: true,
                  ),
                  MyListTile(
                    personName: 'Rahul2',
                    // isChecked: true,
                  ),
                  MyListTile(
                    personName: 'Rahul2',
                    // isChecked: true,
                  ),
                  MyListTile(
                    personName: 'Rahul2',
                    // isChecked: true,
                  ),

                  MyListTile(
                    personName: 'Aryaman Chandra',
                    // isChecked: true,
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute<void>(
                  //         builder: (BuildContext context) => const ScreenB(),
                  //       ),
                  //     );
                  //   },
                  //   child: Text('Press Me'),
                  // ),
                ],
              )),
        )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 16, 13, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                // Add your home functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.update),
              onPressed: () {
                // Add your favorite functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.person_search),
              onPressed: () {
                // Add your profile functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                // Add your profile functionality here
              },
            ),
          ],
        ),
      ),
    ));
  }
}

class MyListTile extends StatelessWidget {
  MyListTile({
    this.personName,
    // required this.isChecked,
  });

  String? personName;
  // bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          child: Icon(Icons.person)
          // child: Icon(
          //   isChecked ? Icons.check_box_outlined : Icons.check_box_outline_blank,
          //   color: Colors.white,
          // ),
          ),
      title: Text(
        personName ?? '',
        style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
      ),
      subtitle: Text(
        "This is $personName. He is from BIT",
        style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
