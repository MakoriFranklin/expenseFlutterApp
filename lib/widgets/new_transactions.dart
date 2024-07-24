import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({super.key});
  final Function addTx;
  NewTransaction(this.addTx);
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  TextField(
                    // onChanged: (value) {
                    //   titleInput = value;
                    // },
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: 'Title'
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Amount'
                    ),
                    keyboardType: TextInputType.number,
                    // onChanged: (value){
                    //   amountInput = value;
                    // },
                    controller: amountController,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      addTx(titleController.text, double.parse(amountController.text));
                    }, 
                    child: Text(
                      'Add Transaction'
                    )
                  ),
                  
                ],
              ),
            ),
          );
  }
}