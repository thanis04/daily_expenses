import 'package:flutter/material.dart';
import 'package:flat_3d_button/flat_3d_button.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
              ),
              Flat3dButton(
                onPressed: () {
                  print(titleController.text);
                  print(amountController.text);
                },
                child: Text('Add Transaction'),
                color: Colors.brown,
              ),
            ]),
      ),
    );
  }
}
