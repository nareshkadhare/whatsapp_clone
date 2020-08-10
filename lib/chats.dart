import 'package:cache_image/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/users.dart';

class ChatsTab extends StatefulWidget {
  ChatsTab({Key key}) : super(key: key);

  _ChatsTabState createState() => _ChatsTabState();
}

class _ChatsTabState extends State<ChatsTab> {
  List<Column> chats = [];
  List<User> users = User().getUsers();

  @override
  void initState() {
    chats = users.map((User user) {
      return Column(
        children: [
          ListTile(
            leading: Card(
              margin: EdgeInsets.all(0),
              child: CircleAvatar(
                maxRadius: 30.0,
                backgroundImage: CacheImage(user.avatar),
              ),
              elevation: 14.0,
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
            ),
            title: Text(user.first_name,
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle:
            Row(children: [
              (user.isRead) ? Icon(Icons.done_all,size: 18.0,color: Colors.lightBlueAccent[400]): Text(''),
              SizedBox(width: 2.0),
              Text(user.msg)
            ]),
            trailing: Column(
              children: [
                SizedBox(height: 10.0),
                Text(
                  '11:30 pm',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
                SizedBox(height: 8.0),
                (user.newMsg > 0) ? Card(
                    color: Color(0xFFF4AC959),
                    margin: EdgeInsets.all(0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFF4AC959),
                      child: Text(user.newMsg.toString(),
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      radius: 12.0,
                    ),
                    elevation: 4.0,
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias):Text('')
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, '/singleChat', arguments: user);
            },
          ),
          const Divider(
            color: Colors.grey,
            height: 0,
            thickness: 0.2,
            indent: 88,
            endIndent: 0,
          )
        ],
      );
    }).toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: chats,
    ));
  }
}
