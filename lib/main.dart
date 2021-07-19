import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staggered GridView Demo for Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SteggeredGridviewDemo(),
    );
  }

  Widget SteggeredGridviewDemo() {
    const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
      StaggeredTile.count(2, 2),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(2, 2),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(3, 1),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(4, 1),
      StaggeredTile.count(2, 2),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(2, 2),
      StaggeredTile.count(1, 2),
    ];

    const List<Widget> _tiles = <Widget>[
      ListItems(Colors.green),
      ListItems(Colors.yellow),
      ListItems(Colors.lightBlue),
      ListItems(Colors.amber),
      ListItems(Colors.brown),
      ListItems(Colors.indigo),
      ListItems(Colors.pink),
      ListItems(Colors.blue),
      ListItems(Colors.deepOrange), ListItems(Colors.green),
      ListItems(Colors.yellow),
      ListItems(Colors.lightBlue),
      ListItems(Colors.amber),
      ListItems(Colors.brown),
      ListItems(Colors.indigo),
      ListItems(Colors.pink),
      ListItems(Colors.blue),
      ListItems(Colors.deepOrange),
    ];

    return Padding(
        padding: const EdgeInsets.only(top: 12),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: _staggeredTiles,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          padding: const EdgeInsets.all(4),
          children: _tiles,
        ));
  }
}

class ListItems extends StatelessWidget {
  final Color backgroundColor;

  const ListItems(this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
    );
  }
}

