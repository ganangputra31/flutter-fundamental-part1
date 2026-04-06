import 'package:flutter/material.dart';

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
        primarySwatch: Colors.red, // Tema warna aplikasi
      ),
      home: const MyHomePage(title: 'My Increment App'),
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
        backgroundColor: Colors.purple, // Warna AppBar ungu
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Halo, Nama Saya Ganang Andika Kurnia Putra', // Menampilkan teks nama
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold, // Membuat font lebih tebal
              ),
            ),
            const SizedBox(height: 20), // Jarak antar teks
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 16), // Gaya teks lebih kecil
            ),
            Text(
              '$_counter', // Menampilkan angka counter
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ), // Gaya teks untuk angka
            ),
            const SizedBox(height: 50), // Jarak antara counter dan FAB
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment:
            MainAxisAlignment.end, // Menempatkan tombol di bagian bawah
        children: <Widget>[
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Menempatkan tombol di tengah
            children: [
              FloatingActionButton(
                onPressed: _incrementCounter, // Fungsi untuk menambah counter
                tooltip: 'Increment Counter',
                backgroundColor: Colors.pink, // Warna tombol sesuai tema
                child: const Icon(Icons.thumb_up), // Ikon thumb_up
              ),
            ],
          ),
        ],
      ),
    );
  }
}
