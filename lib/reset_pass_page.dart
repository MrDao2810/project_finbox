import 'package:finbox_v2/reset_pass_page_otp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FinboxApp());
}

class FinboxApp extends StatelessWidget {
  const FinboxApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResetPassPage(),
    );
  }
}

class ResetPassPage extends StatefulWidget {
  const ResetPassPage({Key? key}) : super(key: key);

  @override
  State<ResetPassPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ResetPassPage> {
  final _formKey = GlobalKey<FormState>();
  bool isValid = false;
  // String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regex = RegExp(r'(^(?:[+0]8)?[0-9]{10}$)');
  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.only(left: 2, bottom: 10),
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
                child: RichText(
                  text: const TextSpan(
                    text: 'SĐT',
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontFamily: "Roboto",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '*',
                          style: TextStyle(color: Color(0xffF85464))),
                    ],
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      child: TextFormField(
                        onChanged: (text) {
                          if (_formKey.currentState == null ||
                              !_formKey.currentState!.validate()) {
                            setState(() {
                              isValid = false;
                            });
                          } else {
                            setState(() {
                              isValid = true;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 30, top: 18, bottom: 15),
                          hintStyle: const TextStyle(
                              color: Color(0xffCCCFD4),
                              fontSize: 14,
                              fontFamily: "Inter"),
                          hintText: 'Nhập Số điện thoại của bạn',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty || !regex.hasMatch(value)) {
                            if (isValid) {
                              setState(() {
                                isValid = false;
                              });
                            }
                            return 'Please enter some text';
                          } else {
                              if (!isValid && regex.hasMatch(value)) {
                                setState(() {
                                  isValid = true;
                                });
                              }
                            return null;
                          }
                        },
                      ),
                    ),
                    Align(
                      child: Container(
                        margin: const EdgeInsets.only(top: 30, bottom: 30),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: isValid
                              ? () {
                                  // you'd often call a server or save the information in a database.
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PassPageOtp()),
                                  );
                                }
                              : null,
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(25)),
                              textStyle:
                                  MaterialStateProperty.all(const TextStyle(
                                fontSize: 16,
                              ))),
                          child: const Text('XÁC NHẬN'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
