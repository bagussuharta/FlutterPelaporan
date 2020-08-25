import 'package:coba/Shared/colors.dart';
import 'package:coba/font_style.dart';
import 'package:coba/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'font_style.dart';

void main() => runApp(new MaterialApp(
        title: "LAPORAN",
        home: new MyApp(),
        routes: <String, WidgetBuilder>{
          '/MyApp': (BuildContext context) => new MyApp(),
          '/MyHomeApp': (BuildContext context) => new MyHomeApp(),
        }));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "Nama");
  TextEditingController noHp = TextEditingController(text: "Nomor HP");
  TextEditingController alamat = TextEditingController(text: "Alamat");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PDAM GIRI MENANG',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("PDAM GIRI MENANG"),
              backgroundColor: primaryColor,
              actions: [
                IconButton(icon: Icon(Icons.add_alert), onPressed: () {})
              ],
            ),
            body: Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                child: Column(
                  verticalDirection: VerticalDirection.down,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image(
                      image: AssetImage("assets/images/favicon.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Text(
                        "Mengalir Bersama",
                        style: header,
                      ),
                    ),
                    Text(
                      "Siap Memberikan Pelayanan  Terbaik",
                      style: sub,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      top: 20.0,
                    )),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Nama Lengkap",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      maxLength: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Nomor HP",
                          prefixIcon: Icon(Icons.add_call),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      maxLength: 12,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Alamat Lengkap",
                          prefixIcon: Icon(Icons.location_searching),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      maxLines: 2,
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.check),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Masukan Password';
                        }
                        return null;
                      },
                    ),
                    RaisedButton(
                        color: Colors.blue,
                        elevation: 6.0,
                        child: Text(
                          "Simpan",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/MyHomeApp");
                        }),
                  ],
                ),
              ),
            ))
        //  ListView.builder(
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: const EdgeInsets.all(8.0),
        //     );
        //   },
        //   itemCount: 100,
        );
  }
}
