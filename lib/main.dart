import 'package:flutter/material.dart';
import 'package:project/provider/users.dart';
import 'package:project/routes/app_routes.dart';
import 'package:project/views/user_form.dart';
import 'package:project/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRouts.HOME: (_) => UserList(),
          AppRouts.USER_FORM: (_) => UserForm(),
        },
      ),
    );
  }
}
