import 'package:flutter/material.dart';


import 'modelDetail.dart';

class showOneDetail extends StatelessWidget {
  modelDetail mdtl;
  showOneDetail({super.key, required this.mdtl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Container(
          width: 400,
          height: 400,
          child: Image.network(
            mdtl.imagitmshow,
            fit: BoxFit.cover,
          )),
    );
  }
}
