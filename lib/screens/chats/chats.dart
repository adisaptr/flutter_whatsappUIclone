import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    List<Chat> chats = [
      Chat(
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
          '+62872173612',
          'Baik Thanks Pak',
          '10:21'),
      Chat(
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Alhamdulillah sehat',
          '10:25'),
      Chat(
          'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Meeting jam 4 sore Pak',
          '10:27'),
      Chat(
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Sore Pak jam 4',
          '11:01'),
      Chat(
          'https://images.unsplash.com/photo-1516756587022-7891ad56a8cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Baik noted Pak',
          '11:15'),
      Chat(
          'https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Lebaran Pulang dong',
          '11:20'),
      Chat(
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Gimana Kabar',
          '11:21'),
      Chat(
          'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Noted Pak',
          '12:31'),
      Chat(
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
          '+62872173612',
          'Hahaha',
          '13:58'),
    ];
    return Stack(
      children: [
        ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 27,
                          backgroundImage: NetworkImage(
                            chats[index].image,
                          )),
                      title: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  chats[index].lastChat,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF8696a0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            chats[index].time,
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF8696a0)),
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
        Align(
          alignment: Alignment(0.9, 0.9),
          child: FloatingActionButton(
            child: Icon(
              Icons.comment_rounded,
            ),
            onPressed: () {},
            backgroundColor: Color(0xFF00a884),
          ),
        )
      ],
    );
  }
}

class Chat {
  final String image;
  final String phone;
  final String lastChat;
  final String time;

  Chat(this.image, this.phone, this.lastChat, this.time);
}
