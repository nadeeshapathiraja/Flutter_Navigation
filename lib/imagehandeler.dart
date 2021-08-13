import 'package:flutter/material.dart';

class ImageHandel extends StatelessWidget {
  const ImageHandel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displaySize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.network(
                'https://drive.google.com/uc?export=view&id=1AmtYK1T3j64n--3onCgA7-oPCrT2cxk9',
                height: displaySize.height / 3,
                width: displaySize.width,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Container(
                    height: displaySize.height / 3,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
