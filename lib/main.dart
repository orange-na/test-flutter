import 'package:flutter/material.dart';
import 'package:practice/counter.dart';
import 'package:practice/page_a.dart';
import 'package:practice/page_b.dart';
import 'package:practice/page_c.dart';

//　Tweet Class
class Tweet {
  final String name;
  final String text;
  final String image;

  Tweet(this.name, this.text, this.image);
}

// Tweet Model
final models = [
  Tweet('Taro', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Jiro', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Saburo', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Shiro', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Goro', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Rokuro', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Shichiro', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Hachiro', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Kuro', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Juro', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Nana', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Ichi', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Ni', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('San', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Yon', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Go', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Roku', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Shichi', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Hachi', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Ku', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Ju', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Nana', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Hachi', 'Hello World', 'assets/images/photo.jpg'),
  Tweet('Ku', 'Hello World', 'assets/images/photo.jpg'),
];

// Model to Widget
Widget tweetToWidget(Tweet tweet) {
  final photo = Image.asset(tweet.image);

  final text = Text(
    '${tweet.name}: ${tweet.text}',
    style: const TextStyle(
      fontSize: 24,
      color: Colors.yellow,
    ),
  );

  final row = Row(children: [photo, text]);

  final con = Container(
    color: Colors.blueGrey,
    child: row,
  );

  return con;
}

void main() {
  // 関数
  handleClick() {
    debugPrint('Hello World');
  }

  // Button Widget
  final btn = ElevatedButton(
    onPressed: handleClick,
    child: const Text('Click Me'),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 20),
    ),
  );

  final controller = TextEditingController();

  showController() {
    debugPrint(controller.text);
    controller.clear();
    debugPrint(controller.text);
  }

  final showControllerBtn = ElevatedButton(
      onPressed: showController, child: const Text('Show Controller'));

  // TextField Widget
  final TextFieldWidget = TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Please enter your username',
      hintText: 'Enter your username',
      errorText: 'Error',
    ),
  );

  final col = Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text('Hello World'),
    Text('Hello World'),
    Text('Hello World'),
    btn,
    TextFieldWidget,
    showControllerBtn,
  ]);

  // final img = Image.asset('assets/images/photo.jpg');

  // final con = Container(
  //   color: Colors.blueAccent,
  //   width: 200,
  //   height: 200,
  //   child: img,
  //   alignment: Alignment.centerLeft,
  //   padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
  // );

  // final app = MaterialApp(
  //   home: Scaffold(
  //     appBar: AppBar(
  //       title: Text('Hello World'),
  //     ),
  //     body: Center(
  //       child: Counter(number: 999),
  //     ),
  //   ),
  // );

  // final tweetWidgets = models.map((model) => tweetToWidget(model)).toList();
  final tweetWidgets = ListView.builder(
      itemBuilder: (c, i) => tweetToWidget(models[i]),
      itemCount: models.length);

  final a = PageA();
  final b = PageB();
  final c = PageC();

  final app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Center(
        child: tweetWidgets,
      ),
    ),
  );

  runApp(app);
}
