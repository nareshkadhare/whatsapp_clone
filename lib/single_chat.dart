import 'package:flutter/material.dart';
import 'package:cache_image/cache_image.dart';

class SingleChat extends StatefulWidget {
  SingleChat({Key key}) : super(key: key);

  _SingleChatState createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {
  final Color mainColor = Colors.teal[900];

  @override
  Widget build(BuildContext context) {
    final dynamic args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          leadingWidth: 24.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                maxRadius: 18.0,
                backgroundImage: CacheImage(args.avatar),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(args.first_name, style: TextStyle(fontSize: 18.0)),
            ],
          ),
          backgroundColor: mainColor,
          actions: [
            IconButton(
              icon: Icon(Icons.videocam, size: 26.0),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.call, size: 26.0),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, size: 26.0),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/chatbg.png'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(25.7),
                        child: TextField(
                          cursorColor: Colors.teal[900],
                          cursorWidth: 2.0,
                          autofocus: false,
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mood,
                              size: 28.0,
                              color: Colors.grey[500],
                            ),
                            // suffixIcon : Container(),
                            suffixIcon: Container(
                              width: 80,
                              height: 50,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.attachment,
                                    size: 26.0,
                                    color: Colors.grey[500],
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Icon(
                                    Icons.camera_alt,
                                    size: 26.0,
                                    color: Colors.grey[500],
                                  )
                                ],
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: ' Type a message',
                            contentPadding: const EdgeInsets.only(
                                left: 20.0, bottom: 8.0, top: 14.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Card(
                        color: Colors.teal[800],
                        margin: EdgeInsets.all(0),
                        child: CircleAvatar(
                          backgroundColor: Colors.teal[800],
                          child: Icon(
                            Icons.mic,
                            size: 26.0,
                            color: Colors.white,  
                          ),
                          radius: 26.0,
                        ),
                        elevation: 8.0,
                        shape: CircleBorder(),
                        clipBehavior: Clip.antiAlias),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
