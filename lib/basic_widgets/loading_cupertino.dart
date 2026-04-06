import 'package:flutter/cupertino.dart'; // Pastikan cupertino diimpor
import 'package:flutter/material.dart';

class MyLoadingCupertino extends StatelessWidget {
  const MyLoadingCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoActivityIndicator(); // Menampilkan indikator loading Cupertino
  }
}

class MyCupertinoWidget extends StatelessWidget {
  const MyCupertinoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contoh Cupertino Widget",
        ), // Menambahkan judul pada AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Memusatkan widget di tengah layar
          children: <Widget>[
            CupertinoButton(
              child: const Text("Contoh button"),
              onPressed: () {},
            ),
            const CupertinoActivityIndicator(), // Menampilkan indikator loading
          ],
        ),
      ),
    );
  }
}
