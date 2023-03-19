import 'package:flutter/material.dart';

class SetingOfMe extends StatefulWidget {
  @override
  _SetingOfMeState createState() => _SetingOfMeState();
}

class _SetingOfMeState extends State {
  String _username = '小可爱';
  String _language = 'English';
  bool _notificationsEnabled = true;

  void _changeUsername(String name) {
    setState(() {
      _username = name;
    });
  }

  void _changeLanguage(String language) {
    setState(() {
      _language = language;
    });
  }

  void _toggleNotifications(bool value) {
    setState(() {
      _notificationsEnabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('用户设置'),
        ),
        body: Column(children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg'),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _username,
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    child: Text('更改用户名'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('新用户名'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  decoration:
                                      InputDecoration(hintText: '输入新的用户名'),
                                  onChanged: _changeUsername,
                                ),
                                SizedBox(height: 20),
                                OutlinedButton(
                                  child: Text('更改'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('更改密码'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('更改密码'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: '输入旧的密码'),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: '输入新的密码'),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: '重复输入新的密码'),
                        ),
                        SizedBox(height: 20),
                        OutlinedButton(
                          child: Text('更改'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('语言'),
            subtitle: Text(_language),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('设置语言'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 20),
                        OutlinedButton(
                          child: Text('更改'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ]));
  }
}
