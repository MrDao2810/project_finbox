
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final bool _isValidated = false;
  @override
  Widget build(BuildContext context) {
    var isCheck = _isValidated;
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Đặt lại mật khẩu'),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 2, bottom: 10, right: 141),
                child: const Text(
                  'Đặt lại mật khẩu',
                  style: TextStyle(
                    color: Color(0xff1B447E),
                    fontFamily: "Inter",
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Nhập số điện thoại của bạn.',
                  style: TextStyle(
                    color: Color(0xff1B447E),
                    fontFamily: "Inter",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: 42,
                height: 3,
                decoration: const BoxDecoration(
                  color: Color(0xff3563A3),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 32, bottom: 14),
                child: const Text(
                  'SĐT',
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontFamily: "Roboto",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                height: 45,
                key: _formKey,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 30,
                        top: 18,
                        bottom: 15
                    ),
                    hintStyle: const TextStyle(
                        color: Color(0xffCCCFD4),
                        fontSize: 14,
                        fontFamily: "Inter"
                    ),
                    hintText: 'Nhập Số điện thoại của bạn',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    } else {
                      return null;
                    }
                  },
                ),
              ),

              Align(
                child: Container(
                  margin: const EdgeInsets.only(top: 30,  bottom: 30),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      } else {

                      }
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                        MaterialStateProperty.all(const Color(0xff1E60C0)),
                        padding:
                        MaterialStateProperty.all(const EdgeInsets.all(25)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 16))),
                    child: const Text('XÁC NHẬN'),
                  ),
                ),
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
