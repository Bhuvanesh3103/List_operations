// import 'package:flutter/material.dart';
//
//
//
// class MyAppp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<String> items = ['1', '2', '3', '4', '5'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Editable List'),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (BuildContext context, int index) {
//           return LongPressDraggable(
//             onDragStarted: () {
//               // Dragging started
//             },
//             onDraggableCanceled: (Velocity velocity, Offset offset) {
//               // Dragging canceled
//             },
//             onDragCompleted: () {
//               // Dragging completed
//             },
//             feedback: ListTile(
//               title: Text('List item ${items[index]}'),
//             ),
//             childWhenDragging: Container(),
//             data: index,
//             child: ListTile(
//               title: Text('List item ${items[index]}'),
//               onLongPress: () {
//                 // Handle long-press event
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     TextEditingController controller =
//                     TextEditingController(text: items[index]);
//                     return AlertDialog(
//                       title: Text('Edit Value'),
//                       content: TextField(
//                         controller: controller,
//                         keyboardType: TextInputType.number,
//                         decoration: InputDecoration(labelText: 'New Value'),
//                       ),
//                       actions: <Widget>[
//                         ElevatedButton(
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                           child: Text('Cancel'),
//                         ),
//                         ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               // Update the value at the specified index
//                               items[index] = controller.text;
//                             });
//                             Navigator.of(context).pop();
//                           },
//                           child: Text('Save'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
