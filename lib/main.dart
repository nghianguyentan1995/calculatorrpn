import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dauvao = "";
  var daura = "0.0";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goood',
      home: Scaffold(
        appBar: AppBar(title: const Text('May tinh RPN')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                scrollDirection: Axis.vertical,
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '$dauvao',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 178, 184, 175)),
                    //textAlign: TextAlign.right,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
            ),
            Container(
              child: Container(
                  width: 200,
                  child: Text(
                    '$daura',
                    maxLines: 1,
                    style: TextStyle(fontSize: 45),
                    textAlign: TextAlign.right,
                  )),
            ),
            Row(children: [
              Expanded(
                child: Column(children: [
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (dauvao.isNotEmpty) {
                            dauvao = dauvao.substring(0, dauvao.length - 1);
                            if (dauvao.endsWith("/")) {
                              daura = tinhKetQua(dauvao + "1").toString();
                            } else {
                              if (dauvao == "") {
                                daura = "0.0";
                              } else {
                                daura = tinhKetQua(dauvao).toString();
                              }
                            }
                          }
                        });
                      },
                      child: Text('AC'),
                      onLongPress: () {
                        setState(() {
                          daura = "0.0";
                          dauvao = "";
                        });
                      },
                      style: TextButton.styleFrom(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                  ),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "7";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('7'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "4";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('4'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "1";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('1'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "0";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('0'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "8";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('8'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "5";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('5'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "2";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('2'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (dauvao.endsWith('*') ||
                                dauvao.endsWith('-') ||
                                dauvao.endsWith('+') ||
                                dauvao.endsWith('/') ||
                                dauvao.endsWith('.')) {
                              dauvao = dauvao.substring(0, dauvao.length - 1);
                              dauvao = dauvao + ".";
                              daura = tinhKetQua(dauvao).toString();
                            } else {
                              dauvao = dauvao + ".";
                              daura = tinhKetQua(dauvao).toString();
                            }
                          });
                        },
                        child: Text('.'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "9";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('9'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "6";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('6'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            dauvao = dauvao + "3";
                            daura = tinhKetQua(dauvao).toString();
                          });
                        },
                        child: Text('3'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (dauvao.endsWith('*') ||
                                dauvao.endsWith('-') ||
                                dauvao.endsWith('+') ||
                                dauvao.endsWith('/') ||
                                dauvao.endsWith('.')) {
                              dauvao = dauvao.substring(0, dauvao.length - 1);
                              dauvao = dauvao + "*";
                              daura = tinhKetQua(dauvao).toString();
                            } else {
                              dauvao = dauvao + "*";
                              daura = tinhKetQua(dauvao).toString();
                            }
                          });
                        },
                        child: Text('*'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (dauvao.endsWith('*') ||
                                dauvao.endsWith('-') ||
                                dauvao.endsWith('+') ||
                                dauvao.endsWith('/') ||
                                dauvao.endsWith('.')) {
                              dauvao = dauvao.substring(0, dauvao.length - 1);
                              dauvao = dauvao + "/";
                              daura = tinhKetQua(dauvao + "1").toString();
                            } else {
                              dauvao = dauvao + "/";
                              daura = tinhKetQua(dauvao + "1").toString();
                            }
                            ;
                          });
                        },
                        child: Text('/'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (dauvao.endsWith('*') ||
                                dauvao.endsWith('-') ||
                                dauvao.endsWith('+') ||
                                dauvao.endsWith('/') ||
                                dauvao.endsWith('.')) {
                              dauvao = dauvao.substring(0, dauvao.length - 1);
                              dauvao = dauvao + "+";
                              daura = tinhKetQua(dauvao).toString();
                            } else {
                              dauvao = dauvao + "+";
                              daura = tinhKetQua(dauvao).toString();
                            }
                          });
                        },
                        child: Text('+'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                  SizedBox(
                      height: 90,
                      width: 90,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (dauvao.endsWith('*') ||
                                dauvao.endsWith('-') ||
                                dauvao.endsWith('+') ||
                                dauvao.endsWith('/') ||
                                dauvao.endsWith('.')) {
                              dauvao = dauvao.substring(0, dauvao.length - 1);
                              dauvao = dauvao + "-";
                              daura = tinhKetQua(dauvao).toString();
                            } else {
                              dauvao = dauvao + "-";
                              daura = tinhKetQua(dauvao).toString();
                            }
                          });
                        },
                        child: Text('-'),
                        style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 30)),
                      )),
                ]),
              ),
            ]),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

double tinhKetQua(a) {
  var c = "";
  var nganxep = []; //NOI CHUA TOÁN HẠNG VÀ TOÁN TỬ ĐÃ TRÍCH XUẤT TỪ CHUỖI
  var ngantoanhang =
      []; //NƠI CHỨA TOÁN HẠNG VÀ TOÁN TỬ ĐÃ CHUYỂN ĐỔI THEO PHƯƠNG PHÁP RPN.
  var ngandau = []; //NƠI CHỨA CÁC TOÁN TỬ CHO VIỆC SỬ LÝ RPN.
  var cal =
      []; //NƠI CHỨA TOÁN HẠNG ĐƯỢC ĐẨY VÀO TỪ TRÁI QUA PHẢI VÀ TÍNH TOÁN RA KẾT QUẢ
  if ((a[0] == "+") ||
      (a[0] == "-") ||
      (a[0] == "*") ||
      (a[0] == "/") ||
      (a[0] == ".")) {
    a = "0" + a;
  } // NẾU CHUỖI PHÉP TÍNH ĐẦU VÀO BẮT ĐẦU BẰNG TOÁN TỬ HOẶC DẤU CHẤM THÌ THÊM 0 TRƯỚC CHUỖI ĐẦU VÀO
  if ((a[a.length - 1] == "+") ||
      (a[a.length - 1] == "-") ||
      (a[a.length - 1] == "*") ||
      (a[a.length - 1] == "/") ||
      (a[a.length - 1] == ".")) {
    a = a + "0";
  } // NẾU CHUỖI PHÉP TÍNH ĐẦU VÀO kết thúc BẰNG TOÁN TỬ HOẶC DẤU CHẤM THÌ THÊM 0 sau CHUỖI ĐẦU VÀO
  Map<String, int> checkdau = {
    "+": 1,
    "-": 1,
    "/": 2,
    "*": 2
  }; // TẠO CÁC KEY TOÁN TỬ VỚI GIÁ TRỊ ƯU TIÊN NHÂN CHIA TRƯỚC CỘNG TRỪ SAU

  for (var i = 0; i <= a.length - 1; i++) {
    if ((a[i] != "+") && (a[i] != "-") && (a[i] != "*") && (a[i] != "/")) {
      c = c + a[i];
      if (i == a.length - 1) {
        nganxep.add(c);
      }
    } else {
      nganxep.add(c);
      nganxep.add(a[i]);
      c = "";
    }
  } //VONG LẶP FOR ĐỂ TRÍCH XUẤT CHUỖI ĐẦU VÀO THÀNH CÁC TOÁN HẠNG VÀ TOÁN TỬ SAU ĐÓ ĐẶT VÀO TRONG NGANXEP

  for (var i = 0; i <= nganxep.length - 1; i++) {
    if ((nganxep[i] != "+") &&
        (nganxep[i] != "-") &&
        (nganxep[i] != "*") &&
        (nganxep[i] != "/")) {
      ngantoanhang.add(nganxep[i]);
    } else {
      if (ngandau.isNotEmpty) {
        if (checkdau[nganxep[i]]! <= checkdau[ngandau.last]!) {
          while (ngandau.isNotEmpty &&
              checkdau[nganxep[i]]! <= checkdau[ngandau.last]!) {
            ngantoanhang.add(ngandau.last);
            ngandau.removeLast();
          }
          ngandau.add(nganxep[i]);
        } else {
          ngandau.add(nganxep[i]);
        }
      } else {
        ngandau.add(nganxep[i]);
      }
    }
  } //CHECK CÁC GIÁ TRỊ TRONG NGĂN XẾP LÀ TOÁN HẠNG HAY TOÁN TỬ, NẾU LÀ TOÁN HẠNG ĐẨY VÀO NGĂN TÍNH TOÁN NẾU LÀ TOÁN TỬ THEO THỨ TỰ ƯU TIÊN ĐẨY VÀO NGĂN TÍNH TOÁN HOẶC NGĂN DẤU
  while (ngandau.isNotEmpty) {
    ngantoanhang.add(ngandau.last);
    ngandau.removeLast();
  } //VÒNG LẶP CHO NGĂN DẤU, SAU KHI ĐẨY CÁC TOÁN HẠNG VÀ TOÁN TỬ THEO THỨ TỰ, NGĂN DẤU CÒN LẠI MỘT SỐ TOÁN TỬ SÓT LẠI, SỬ DỤNG VÒNG LẶP ĐẨY TOÁN TỬ LÊN NGĂN TÍNH TOÁN => XONG VIỆC TẠO RPN.

  for (var i = 0; i <= ngantoanhang.length - 1; i++) {
    if ((ngantoanhang[i] != "+") &&
        (ngantoanhang[i] != "-") &&
        (ngantoanhang[i] != "*") &&
        (ngantoanhang[i] != "/")) {
      cal.add(double.parse(ngantoanhang[
          i])); //DOUBLE.PARSE SẼ CHUYỂN DỮ LIỆU CHUỖI THÀNH DOUBLE.
    } else {
      switch (ngantoanhang[i]) {
        case "+":
          {
            cal[cal.length - 2] = cal[cal.length - 2] + cal[cal.length - 1];
            cal.removeLast();
            break;
          }
        case "-":
          {
            cal[cal.length - 2] = cal[cal.length - 2] - cal[cal.length - 1];
            cal.removeLast();
            break;
          }
        case "*":
          {
            cal[cal.length - 2] = cal[cal.length - 2] * cal[cal.length - 1];
            cal.removeLast();
            break;
          }
        case "/":
          {
            cal[cal.length - 2] = cal[cal.length - 2] / cal[cal.length - 1];
            cal.removeLast();
            break;
          }
      }
    }
  } // VÒNG LẶP ĐẨY CÁC TOÁN HẠNG VÀ TOÁN TỬ TỪ NGĂN TÍNH TOÁN QUA CAL ĐỂ TÍNH TOÁN PHÉP TÍNH, NẾU LÀ TOÁN HẠNG THÌ ĐẨY, NẾU LÀ TOÁN TỬ THÌ THỰC HIỆN PHÉP TÍNH VỚI TOÁN TỬ VÀ 2 TOÁN HẠNG TRÊN CÙNG CỦA NGĂN CAL

  return cal[
      0]; //ham tra ve ket qua gia tri duy nhat con lai tren ngan xu ly Cal
}
