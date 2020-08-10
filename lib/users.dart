class User {
  String first_name;
  String avatar;
  String msg;
  int newMsg;
  bool isRead;
  User(
      {this.first_name,
      this.avatar,
      this.msg,
      this.newMsg = 0,
      this.isRead = false});

  List<User> getUsers() {
    return [
      User(
          first_name: 'Kiran',
          avatar: 'https://randomuser.me/api/portraits/men/61.jpg',
          msg: 'Hi Bro , kesa hai ',
          newMsg: 2),
      User(
          first_name: 'Rohit',
          avatar: 'https://randomuser.me/api/portraits/men/62.jpg',
          msg: 'Lets go for cricket match',
          isRead: true,
          newMsg: 0),
      User(
          first_name: 'Vishal',
          avatar: 'https://randomuser.me/api/portraits/men/63.jpg',
          msg: 'Hello Bhau kote shee',
          isRead: true,
          newMsg: 0),
      User(
          first_name: 'Abhinav',
          avatar: 'https://randomuser.me/api/portraits/men/64.jpg',
          msg: 'Where are you',
          newMsg: 5),
      User(
          first_name: 'Mayank',
          avatar:
              'https://s3.amazonaws.com/uifaces/faces/twitter/follettkyle/128.jpg',
          msg: 'Nice Dude',
          newMsg: 2),
      User(
          first_name: 'Shrinath',
          avatar:
              'https://s3.amazonaws.com/uifaces/faces/twitter/araa3185/128.jpg',
          isRead: true,
          msg: 'Vaddakam Anna'),
      User(
          first_name: 'Trigit',
          avatar:
              'https://s3.amazonaws.com/uifaces/faces/twitter/vivekprvr/128.jpg',
          msg: 'Yo Bro',
          newMsg: 4),
      User(
          first_name: 'Sahil',
          avatar:
              'https://s3.amazonaws.com/uifaces/faces/twitter/russoedu/128.jpg',
          msg: 'Software install krdena ',
          newMsg: 10),
      User(
          first_name: 'Naresh',
          avatar:
              'https://s3.amazonaws.com/uifaces/faces/twitter/mrmoiree/128.jpg',
          msg: 'Hi Bro kese ho'),
      User(
          first_name: 'Amar',
          avatar: 'https://randomuser.me/api/portraits/men/81.jpg',
          msg: 'Hi Sir'),
      User(
          first_name: 'Mahesh',
          avatar: 'https://randomuser.me/api/portraits/women/74.jpg',
          msg: 'Hi Naresh Sir,  How are you?',
          newMsg: 0),
      User(
          first_name: 'Karna',
          avatar: 'https://randomuser.me/api/portraits/women/32.jpg',
          msg: 'Hi Kese ho?',
          newMsg: 2),
    ];
  }
}
