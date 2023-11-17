import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:http/http.dart' as http;
class NewData extends StatefulWidget {
const NewData({Key? key}) : super(key: key);
@override
_NewDataState createState() => _NewDataState();
}
class _NewDataState extends State<NewData> {
TextEditingController name = TextEditingController();
TextEditingController address = TextEditingController();
TextEditingController salary = TextEditingController();
void addData(){
var url = Uri.parse('http://localhost/tugas pam 6/tugaspam6/create.php'); //Inserting Api Calling
http.post(url, body: {"name": name.text,
"address":address.text,
"salary":salary.text}); // parameter passed
}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar (
title: const Center(child: Text("New Employees"),),
shape: const BeveledRectangleBorder(
borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:
Radius.circular(20))
),
),
body: ListView(
children: [
Container(
padding: const EdgeInsets.all(10),
child: TextFormField(
controller: name,
autofocus: true,
decoration: const InputDecoration(
border: OutlineInputBorder(),
labelText: 'Enter name',
hintText: 'Enter name',
prefixIcon: IconButton(
onPressed: null,
icon: Icon(Icons.title),
),
),
),
),
Container(
padding: const EdgeInsets.all(10),
child: TextFormField(
maxLines: 5,
controller: address,
autofocus: true,
decoration: const InputDecoration(
border: OutlineInputBorder(),
labelText: 'Enter Address',
hintText: 'Enter Address',
prefixIcon: IconButton(
onPressed: null,
icon: Icon(Icons.text_snippet_outlined),
),
),
),
),
Container(
padding: const EdgeInsets.all(10),
child: TextFormField(
controller: salary,
autofocus: true,
decoration: const InputDecoration(
border: OutlineInputBorder(),
labelText: 'Enter salary',
hintText: 'Enter salary',
prefixIcon: IconButton(
onPressed: null,
icon: Icon(Icons.title),
),
),
),
),
Container(
padding: const EdgeInsets.all(10),
child: MaterialButton(
child: const Text("Add Data"),
color: Colors.amber,
onPressed: (){
addData();
Navigator.of(context).push(
MaterialPageRoute(builder: (BuildContext context)=>const Home()),
);
},
),
),
],
),
);
}
}