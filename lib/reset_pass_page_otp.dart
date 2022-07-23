import 'package:flutter/material.dart';

class PassPageOtp extends StatefulWidget {
  const PassPageOtp({Key? key}) : super(key: key);

  @override
  State<PassPageOtp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PassPageOtp> {
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
                padding: const EdgeInsets.only(bottom: 32),
                child: const Text(
                  'Nhập mã OTP đã được gửi đến số điện thoại *******112',
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontFamily: "Inter",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 14),
                child: const Text(
                  'Mã xác minh SĐT',
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontFamily: "Inter",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                color: Color(0xffF7F4F4),
                height: 45,
                child: TextField(
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffF7F4F4)),
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min, // <-- important
                      children: const [
                        Text(
                          'Gửi lại mã',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff1B447E)),
                        ),
                        //const SizedBox(width: 12.65),
                        // second element
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 22),
                  margin: const EdgeInsets.only(top: 30, bottom: 30),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
              Container(
                child: RichText(
                  text: const TextSpan(
                    text: 'Bạn không nhận được mã?',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontFamily: "Roboto",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Liên hệ trợ giúp ',
                          style: TextStyle(color: Color(0xff000000))),
                      TextSpan(
                          text: 'Tại đây',
                          style: TextStyle(color: Color(0xff0B408E))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
