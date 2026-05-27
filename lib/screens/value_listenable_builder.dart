import 'package:change_notifier_learnt/screens/change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:change_notifier_learnt/widgets/uihelper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ValueNotifier<String> changevalue = ValueNotifier<String>("");
  @override
  void initState() {
    super.initState();
    //notes elevatedbutton.icon materialbutton showdialogue
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      callback();
      // Uihelper.showdialogue(
      //   context,
      //   title: "Important Notes",
      //   content1: "First Two Button Are Used ",
      //   content2: "Logic of ValueListenableBuilder",
      //   callback: () {
      //     Navigator.pop(context);
      //   },
      //   buttonName: "Ok",
      // );
    });
  }

  @override
  void dispose() {
    changevalue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo of ValueListenableBuilder",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 132, 168, 1),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),

              ValueListenableBuilder(
                valueListenable: changevalue,
                builder: (context, value, child) {
                  return Text(
                    value,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 26,
                    ),
                  );
                },
              ),

              SizedBox(height: 40),
              Uihelper.custombutton(
                callback: () {
                  changevalue.value = "Ritik Change Notifire";
                },
                buttonName: "Click And Change",
              ),
              Uihelper.custombutton(
                callback: () {
                  changevalue.value = "Satyam Change Notifire";
                },
                buttonName: "Click And Change",
              ),
              Uihelper.customIconElevatedButton(
                callback: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyChangeNotifierPage(),
                    ),
                  );
                },
                buttonName: "Go To ChangeNotifier",
                icon: Icon(Icons.forward),
              ),
              Uihelper.custombutton(
                callback: () {
                  Uihelper.showdialogue(
                    context,
                    title: "Important Notes",
                    content1: "First Two Button Are Used ",
                    content2: "Logic of ValueListenableBuilder",
                    callback: () {
                      Navigator.pop(context);
                    },
                    buttonName: "Ok",
                  );
                },
                buttonName: "Click And Show Dialog",
              ),
            ],
          ),
        ),
      ),
    );
  }

  void callback() async {
    await Future.delayed(Duration(seconds: 2),(){
      if (!mounted) return;
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        padding: EdgeInsets.all(20),
        leading: Icon(Icons.info),

        content: Text(
          "First Two Buttons Based On Value Listenable Builder",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green.shade300,
        actions: <Widget>[
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
            },
            child: Text("DISMISS"),
          ),
        ],
      ),
    );
    });

    
    // Future.delayed(Duration(seconds: 5));
    // ScaffoldMessenger.of(context).clearMaterialBanners();
  }
}
