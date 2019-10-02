import 'package:flutter/material.dart';

class ListHewan extends StatelessWidget {
  List<String> namaHewan = [
    'Ayam',
    'Bebek',
    'Burung Hantu',
    'Domba',
    'Elang',
    'Gajah',
    'Harimau',
    'Katak',
    'Kucing',
    'Kuda',
    'Lumba - lumba',
    'Monyet',
    'Panda',
    'Sapi',
    'Serigala',
    'Singa',
    'Ular'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Hewan"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: namaHewan.length,
          itemBuilder: (context, posisi) {
            return ListTile(
              title: Text(namaHewan[posisi]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailHewan(item: namaHewan[posisi])));
              },
            );
          }),
    );
  }
}

class DetailHewan extends StatelessWidget {
  final String item;

  DetailHewan({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item),
        centerTitle: true,
      ),
      body: Center(
        child: Text(item),
      ),
    );
  }
}
