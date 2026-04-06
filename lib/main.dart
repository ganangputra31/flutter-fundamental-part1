import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Pastikan cupertino diimpor
import 'basic_widgets/loading_cupertino.dart'; // Import file loading_cupertino.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:
            Colors.purple, // Ubah warna tema agar sesuai dengan gambar
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor:
            Colors.purple, // Sesuaikan dengan warna yang diinginkan
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contoh button:', // Teks yang menjelaskan tombol
              style: TextStyle(fontSize: 16), // Gaya font lebih kecil
            ),

            const SizedBox(
              height: 20,
            ), // Jarak antara teks dan indikator loading
            const MyLoadingCupertino(), // Menampilkan indikator loading
            Text(
              '$_counter', // Menampilkan angka counter
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ), // Gaya teks untuk angka
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        backgroundColor: Colors.purple, // Warna tombol sesuai tema
        child: const Icon(Icons.add), // Ikon tambah
      ),
    );
  }
}
