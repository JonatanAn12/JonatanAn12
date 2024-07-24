// ignore_for_file: prefer_typing_uninitialized_variables

import "package:flutter/material.dart";
import 'package:flutter/services.dart';

void main() {
runApp(MyApp()); //MaterialApp
}


// ignore: non_constant_identifier_names
MaterialApp MyApp() {
return MaterialApp(
	home: Scaffold(
	appBar: newMethod(), //AppBar
	body: const Center(
		child: Text(
		"Geeksforgeeks",
		style: TextStyle(fontSize: 24),
		), //Text
	), //Center
	), //Scaffold
	debugShowCheckedModeBanner: false, //Removing Debug Banner
);
}

AppBar newMethod() {
  return AppBar(
    shape: widget(child: const Drawer()),
		actions: <Widget>[
		IconButton(
			icon: const Icon(Icons.comment),
			tooltip: 'Comment Icon',
			onPressed: () {},
		), //IconButton
		IconButton(
			icon: const Icon(Icons.settings),
			tooltip: 'Setting Icon',
			onPressed: () {},
		), //IconButton
		], //<Widget>[]
		backgroundColor: const Color.fromARGB(255, 0, 19, 230),
		elevation: 50.0,
		leading: IconButton(
		icon: const Icon(Icons.menu),
		tooltip: 'Menu Icon',
		onPressed: () {},
		),
		systemOverlayStyle: SystemUiOverlayStyle.light,
	);
}

widget({required Drawer child}) {
  {var context;
  showAboutDialog(context: context);} 
}

