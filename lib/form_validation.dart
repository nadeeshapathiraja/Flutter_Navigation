import 'package:flutter/material.dart';
import 'package:image_test/imagehandeler.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({Key? key}) : super(key: key);

  @override
  _FormValidationState createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  var _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email"),
            SizedBox(height: 10),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Your Email",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                if (isNull() && emailValidation()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageHandel(),
                    ),
                  );
                }
              },
              icon: Icon(Icons.save),
              label: Text("Save"),
            )
          ],
        ),
      ),
    );
  }

  bool isNull() {
    if (_email.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  bool emailValidation() {
    if (RegExp(".*@.*\.[com|lk]+").hasMatch(_email.text)) {
      return true;
    } else {
      return false;
    }
  }
}
