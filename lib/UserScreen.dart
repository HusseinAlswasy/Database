
import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone
  });
}

class UserScreen extends StatelessWidget {

  List<UserModel> users =[
    UserModel(id: 1, name: 'Hussein Hassan', phone: '0102671008'),
    UserModel(id: 2, name: 'Hassan Hussein', phone: '0102671008'),
    UserModel(id: 3, name: 'Mohamed', phone: '0102671008'),
    UserModel(id: 4, name: 'Hossam', phone: '0102671008'),
    UserModel(id: 5, name: 'Ibrahim Hassan', phone: '0102671008'),
    UserModel(id: 6, name: 'Hussein Hassan', phone: '0102671008'),
    //comment
    //comment
    //comment
    //comment

    // Hello from Hussein Alswasy this code is work hello from ahmed

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.separated(
        itemBuilder:(context,index) => buildUserItem(users[index]),
        separatorBuilder: (context,index)=>Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.blue,
        ),
        itemCount:users.length,
      ),
    );
  }
}

Widget buildUserItem(UserModel user)=> Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        radius:20,
        child:Text(
          '${user.id}',
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(width: 20,),
      Column(
        children: [
          Text(
            '${user.name}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            '${user.phone}',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ],
  ),
);