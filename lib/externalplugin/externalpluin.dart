import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_test/includes/dialogbox.dart';

class ExternalPlugin extends StatefulWidget {
  const ExternalPlugin({Key? key}) : super(key: key);

  @override
  _ExternalPluginState createState() => _ExternalPluginState();
}

class _ExternalPluginState extends State<ExternalPlugin> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: size.width / 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print("Good job");
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: size.height / 12,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  "Show Navigation",
                  style: TextStyle(),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                DialogBoxs().dialogBox(
                    context, "Hello", "Email Verify", DialogType.SUCCES);
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: size.height / 12,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  "Show Navigation",
                  style: TextStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
