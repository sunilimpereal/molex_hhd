import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'change_ip.dart';
import 'utils/shared_pref.dart';

SharedPref sharedPref = new SharedPref();

void main() async {
  SharedPref sharedPref = new SharedPref();
    WidgetsFlutterBinding.ensureInitialized();
  await sharedPref.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Molex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeIp(),
      // Homepage(
      //   userId: "0123456789",
      //   machineId: "0123456789",
      // )
    );
  }
}
  // Homepage(
        //   userId: "21029493",
        //   machineId: "EMU-M/C-038A",
        // )