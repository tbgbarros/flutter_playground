import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/counter_page.dart';

//meu app
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PhotoAlbum(),
    );
  }
}


class PhotoAlbum extends StatelessWidget {
  const PhotoAlbum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff121d0c),
        appBar: AppBar(
          title: const Text('Photo Galery'),
          backgroundColor: const Color(0xff121d0c),
          foregroundColor: Colors.white60,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomCard(
                  urlPhoto: 'https://picsum.photos/seed/${index * 6}/640/480',
                  name: faker.person.name(),
                  url: faker.internet.httpUrl());
            },
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String urlPhoto;
  final String name;
  final String url;

  const CustomCard({super.key, required this.urlPhoto, required this.name, required this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white10,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ColorFiltered(colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.hue),
            child: Image.network(urlPhoto)),
            ListTile(
              leading: const Icon(Icons.camera_alt, color: Colors.white60,),
              title: Text(name,
                  style: const TextStyle(color: Colors.white60)),
              subtitle: Text(url,
                style: const TextStyle(color: Colors.white60),
              ),
            ),
          ],
        ),
      );

  }
  
}