import 'package:flutter/material.dart';
import 'package:flutter_project/showDetail.dart';



import 'modelItem.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  TextEditingController txtsearch = TextEditingController();

  List<String> itmname = ["Computer", "Camera", "Mobile Phone", "TV"];
  List imgitmUrl = [
    "images/com.png",
    "images/canon.png",
    "images/apple.png",
    "images/Lgtv.png",
  ];

  List itmImageurl = [
    [
       "images/com3.jpg",
       "images/com5.jpg",
       "images/com7.png",
       "images/com9.jpg",
    ],
    [
       "images/canon.png",
       "images/samsu.png",
       "images/sony.jpg",
       "images/nikon.jpg"
    ],
    [
       "images/apple.png",
       "images/samsuphone.png",
       "images/huawei.jpg",
       "images/oppo.jpg",
    ],
    [
       "images/samsutv.webp",
       "images/sonytv.jpg",
       "images/Lgtv.png",
       "images/appletv.png",
    ]
  ];
  List foundata = [];
  @override
  void initState() {
    foundata = itmname;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              controller: txtsearch,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
              ),
              onChanged: showText,
            ),
          ),
        ),
        body: foundata.isNotEmpty
            ? ListView.builder(
                itemCount: foundata.length,
                itemBuilder: (_, i) {
                  return Container(
                    width: double.infinity,
                    height: 80,
                    child: Card(
                      elevation: 7,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          child: Container(
                              width: 60,
                              height: 60,
                              child: Image.network(
                                imgitmUrl[i],
                                fit: BoxFit.cover,
                              )),
                        ),
                        title: Text(foundata[i]),
                        onTap: () {
                          modelItem mdl = modelItem(itmImageurl[i], itmname[i]);
                          MaterialPageRoute route = MaterialPageRoute(
                              builder: (_) => showDetail(mdl: mdl));
                          Navigator.of(context).push(route);
                        },
                      ),
                    ),
                  );
                })
            : const Text("Not Found Data"));
  }

  void showText(String val) {
    List result = [];
    if (val.isEmpty) {
      result = itmname;
    } else {
      result = itmname.where((x) => x.contains(val)).toList();
    }
    setState(() {
      foundata = result;
    });
  }
}
