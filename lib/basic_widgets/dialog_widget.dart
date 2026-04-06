import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }

  // Fungsi untuk menampilkan AlertDialog
  void showAlertDialog(BuildContext context) {
    // Tombol OK untuk menutup dialog
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context); // Menutup dialog
      },
    );

    // Membuat AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("My title"),
      content: const Text("This is my message."), // Pesan dalam dialog
      actions: [
        okButton, // Menambahkan tombol OK ke dialog
      ],
    );

    // Menampilkan dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert; // Menampilkan AlertDialog
      },
    );
  }
}
