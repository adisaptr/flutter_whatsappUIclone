import 'package:flutter/material.dart';

import '../chats/chats.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    List<Statuss> chats = [
      Statuss(
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
          '+62872173612',
          'Today, 10:21'),
      Statuss(
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Today, 10:25'),
      Statuss(
          'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Today, 10:27'),
      Statuss(
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Today, 11:01'),
      Statuss(
          'https://images.unsplash.com/photo-1516756587022-7891ad56a8cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Today, 11:15'),
      Statuss(
          'https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Today, 11:20'),
      Statuss(
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Today, 11:21'),
      Statuss(
          'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Today, 12:31'),
      Statuss(
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Today, 13:58'),
    ];
    return Stack(
      children: [
        SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
                  child: ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFF111b21),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              chats[0].image,
                            ),
                            radius: 25,
                          ),
                        ),
                        Positioned(
                          right: 1,
                          top: 30,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Color(0xFF00a884),
                                border: Border.all(
                                  color: Color(0xFF111b21),
                                  width: 1.5,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'My status',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Tap to add status update',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF8696a0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    onTap: () {
                      print('object');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                  child: Text(
                    'Recent updates',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8696a0),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: chats.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xFF00a884),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      chats[index].image,
                                    ),
                                    radius: 25,
                                  ),
                                ),
                                title: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          chats[index].phone,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            chats[index].time,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF8696a0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  print('object');
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.89, 0.7),
          child: SizedBox(
            width: 50,
            height: 50,
            child: FloatingActionButton(
              child: Icon(
                Icons.edit,
              ),
              onPressed: () {},
              backgroundColor: Color.fromARGB(255, 32, 44, 51),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.9, 0.9),
          child: FloatingActionButton(
            child: Icon(
              Icons.camera_alt,
            ),
            onPressed: () {},
            backgroundColor: Color(0xFF00a884),
          ),
        )
      ],
    );
  }
}

class Statuss {
  final String image;
  final String phone;
  final String time;

  Statuss(this.image, this.phone, this.time);
}
