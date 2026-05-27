import 'package:change_notifier_learnt/screens/lottie_animation.dart';
import 'package:change_notifier_learnt/text_provider.dart';
import 'package:change_notifier_learnt/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyChangeNotifierPage extends StatefulWidget {
  const MyChangeNotifierPage({super.key});

  @override
  State<MyChangeNotifierPage> createState() => _MyChangeNotifierPageState();
}

class _MyChangeNotifierPageState extends State<MyChangeNotifierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo of ChangeNotifierPage",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 132, 168, 1),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<TextProvider>(
              builder: (context, provider, child) {
                return Text(
                  provider.data,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                );
              },
            ),
            Uihelper.custombutton(
              callback: () {
                Provider.of<TextProvider>(context, listen: false).changeText();
              },
              buttonName: "change the data",
            ),
            Uihelper.customIconElevatedButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyLottieAnimation()),
                );
              },
              buttonName: "Go To Lottie Animation",
              icon: Icon(Icons.forward),
            ),
          ],
        ),
      ),
    );
  }
}
