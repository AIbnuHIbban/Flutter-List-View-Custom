import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View Simple',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('List View Custom'),
        ),
        body: ListView(
          children: <Widget>[
            new ListItem(gambar:"https://yt3.ggpht.com/a-/AN66SAyrzztEm-PTvEPSZ4tiv4LxSMyQTud-ITYPHw=s900-mo-c-c0xffffffff-rj-k-no",judul: "LeeNuksID",deskripsi: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum impedit, cupiditate totam at fuga doloribus",),
            new ListItem(gambar:"https://i.ytimg.com/vi/FMvaFSe9e50/maxresdefault.jpg",judul: "Pengarsipan",deskripsi: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum impedit, cupiditate totam at fuga doloribus",),
            new ListItem(gambar:"https://i.ytimg.com/vi/fb4SKkwNcso/maxresdefault.jpg",judul: "Play Tetris On Terminal Linux",deskripsi: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum impedit, cupiditate totam at fuga doloribus",),
            new ListItem(gambar:"https://i.ytimg.com/vi/fBBtbBNgUdQ/maxresdefault.jpg",judul: "Install Spotify",deskripsi: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum impedit, cupiditate totam at fuga doloribus",),
            new ListItem(gambar:"https://i.ytimg.com/vi/gY3i1XZ-t8Q/maxresdefault.jpg",judul: "Show Distro Logo",deskripsi: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum impedit, cupiditate totam at fuga doloribus",),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {

  ListItem ({this.gambar, this.judul, this.deskripsi});

  final String gambar;
  final String judul;
  final String deskripsi;


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: new Row(
            children: <Widget>[
              new Image(
                image: new NetworkImage(gambar),
                width: 100,
              ),
              new Container(

                padding: EdgeInsets.all(5),
                child: new Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: <Widget>[
                    new Text(judul, textAlign:TextAlign.left,style:TextStyle(fontSize:17)),
                  ],
                )
              )
            ],
          ),
        );
  }
}
