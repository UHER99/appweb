import 'package:flutter/material.dart';


import 'ShowOneDetail.dart';
import 'modelDetail.dart';
import 'modelItem.dart';

class showDetail extends StatelessWidget {
  modelItem mdl;
  showDetail({super.key, required this.mdl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mdl.itmname),
      ),
      body: GridView.builder(
          itemCount: mdl.igmurl.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.67),
          itemBuilder: (_, i) {
            return InkWell(
              onTap: () {
                modelDetail mdtl = modelDetail(mdl.igmurl[i]);
                MaterialPageRoute route = MaterialPageRoute(
                    builder: (_) => showOneDetail(mdtl: mdtl));
                Navigator.of(context).push(route);
              },
              child: Card(
                elevation: 7,
                child: Image.network(mdl.igmurl[i]),
              ),
            );
          }),
    );
  }
}
