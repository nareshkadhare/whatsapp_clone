import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls.dart';
import 'package:whatsapp_clone/cameraTab.dart';
import 'package:whatsapp_clone/chats.dart';
import 'package:whatsapp_clone/single_chat.dart';
import 'package:whatsapp_clone/status.dart';

void main() {
  runApp(MaterialApp(
 
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),      
      '/singleChat': (context) => SingleChat(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final List<Tab> tabs = [
    Tab(child: Icon(Icons.camera_alt)),
    Tab(child: Text('CHATS')),
    Tab(child: Text('STATUS')),
    Tab(child: Text('CALLS')),
  ];

  final Color mainColor = Colors.teal[900];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
    _tabController.index = 1;    
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<PopupMenuItem> popUpMenuItems = [
      PopupMenuItem(
        value: 'New group',
        child: Text('New group'),
      ),
      PopupMenuItem(
        value: 'New broadcast',
        child: Text('New broadcast'),
      ),
      PopupMenuItem(
        value: 'WhatsApp Web',
        child: Text('WhatsApp Web'),
      ),
      PopupMenuItem(
        value: 'Starred messages',
        child: Text('Starred messages'),
      ),
      PopupMenuItem(
        value: 'Settings',
        child: Text('Starred messages'),
      ),
    ];

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: mainColor,
              ),
              child: Center(
                child: Row(
                  children: [
                    Icon(Icons.star_border, size: 100.0, color: Colors.white),
                    SizedBox(width: 10.0),
                    Text(
                      'WhatsApp',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: mainColor),
              title: Text('Home'),
              onTap: () {
                print("Home");
              },
            ),
            ListTile(
              leading: Icon(Icons.chat, color: mainColor),
              title: Text('Chats'),
            ),
            ListTile(
              leading: Icon(Icons.contacts, color: mainColor),
              title: Text('Contacs'),
            ),
            ListTile(
              leading: Icon(Icons.picture_in_picture_alt, color: mainColor),
              title: Text('Stories'),
            ),
            ListTile(
              leading: Icon(Icons.call, color: mainColor),
              title: Text('Calls'),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(      
        controller: _tabController,
        children: [
          CameraTab(),
          ChatsTab(),
          StatusTab(),
          CallsTab()          
        ],
      ),
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,          
          tabs: tabs,
        ),
        title: Text('WhatsApp'),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(
              elevation: 8.0,
              tooltip: 'Actions',
              onSelected: (selectedItem) {
                print(selectedItem);
              },
              onCanceled: () {
                print('Cancle Called');
              },
              itemBuilder: (BuildContext context) => popUpMenuItems)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFF4AC959),
        onPressed: () {},
        child: Icon(
          Icons.chat
        ),
      ),
    );
  }
}
