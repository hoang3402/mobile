import 'package:flutter/material.dart';

class Bai1 extends StatefulWidget {
  const Bai1({super.key});

  @override
  State<Bai1> createState() => _Bai1State();
}

class _Bai1State extends State<Bai1> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String title = 'Build a form with validation';
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(title))),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //	If	the	form	is	valid,	display	a	snackbar.	In	the	real	world,
                    //	you'd	often	call	a	server	or	save	the	information	in	a	database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing	Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
