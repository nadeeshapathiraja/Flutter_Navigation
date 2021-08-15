import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_test/includes/dialogbox.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

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
            SizedBox(height: 20.0),
            CustemButton(
              size: size,
              ontap: () {
                SimpleAlertBox(context: context);
              },
            ),
            CustemButton(
              size: size,
              ontap: () {
                SimpleAlertBox(context: context);
              },
            ),
            CustemButton(
              size: size,
              ontap: () {
                SimpleAlertBox(context: context);
              },
            ),
            ProgressButton.icon(
              iconedButtons: {
                ButtonState.idle: IconedButton(
                    text: "Send",
                    icon: Icon(Icons.send, color: Colors.white),
                    color: Colors.deepPurple.shade500),
                ButtonState.loading: IconedButton(
                    text: "Loading", color: Colors.deepPurple.shade700),
                ButtonState.fail: IconedButton(
                    text: "Failed",
                    icon: Icon(Icons.cancel, color: Colors.white),
                    color: Colors.red.shade300),
                ButtonState.success: IconedButton(
                    text: "Success",
                    icon: Icon(
                      Icons.check_circle,
                      color: Colors.white,
                    ),
                    color: Colors.green.shade400)
              },
              onPressed: () {},
              state: ButtonState.idle,
            )
          ],
        ),
      ),
    );
  }
}

class CustemButton extends StatelessWidget {
  const CustemButton({
    Key? key,
    required this.size,
    required this.ontap,
  }) : super(key: key);

  final Size size;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
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
    );
  }
}
