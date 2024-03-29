import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget and UI Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Widget and UI Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(
    //       widget.title,
    //       style: const TextStyle(
    //         color: Colors.white,
    //       ),
    //     ),
    //     backgroundColor: Colors.blue,
    //   ),
    //   body:
    //       // const Center(
    //       //   child:
    //       //       //MyTextWidget(),
    //       //       // MyContainerWidget(),
    //       //       // MyColumnAndRowWidget(),
    //       //       // MyTextField(),
    //       //       // MyButton(),
    //       //       // MyImage(),
    //       //       // MyGestureDetector(),
    //       //       // MyListView(),
    //       // ),
    //       // MyListViewBuilder(),
    //      return MyScaffold();
    return MyBottomNavigationBar();
    // );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'CR Youth x GDG Bandung',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.blue,
      ),
    );
  }
}

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.blue,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      child: const Center(
        child: Text(
          'Ini adalah teks yang ditampilkan oleh widget Text.',
        ),
      ),
    );
  }
}

class MyColumnAndRowWidget extends StatelessWidget {
  const MyColumnAndRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blueGrey,
              child: const Center(
                child: Text('1'),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.greenAccent,
              child: const Center(
                child: Text('2'),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: const Center(
                child: Text('3'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text('1'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                color: Colors.yellow,
                child: const Center(
                  child: Text('2'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                color: Colors.pinkAccent,
                child: const Center(
                  child: Text('3'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final String text = _controller.text;
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: _controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter your name here',
          labelText: 'Name',
          icon: Icon(Icons.add_a_photo),
          suffixIcon: Icon(Icons.clear),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Text("Text"),
        ),
        ElevatedButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Text('Elevated'),
        ),
        OutlinedButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Text('Outlined'),
        )
      ],
    );
  }
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image.asset('assets/images/flutter_logo.png'),
        Image.network(
            'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?w=1060&t=st=1711447646~exp=1711448246~hmac=439f1430375ab1ecf27e840f529cfcfeaa8233157341d0c9f8b46f427ebcc178'),
        // Image.file(File('path/to/image.png')),
      ],
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Example'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('This is the body of the scaffold'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap code here!
        print("Tapped!");
      },
      child: const Text('Tap me!'),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Item 1'),
          leading: Icon(Icons.star),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // Add your onTap code here!
          },
        ),
        ListTile(
          title: Text('Item 2'),
          subtitle: Text('Subtitle'),
        ),
        ListTile(
          title: Text('Item 3'),
        ),
      ],
    );
  }
}

class MyListViewBuilder extends StatelessWidget {
  final List<String> data = ['Item A', 'Item B', 'Item C'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(data[index]),
          subtitle: Text('Subtitle $index'),
          leading: Icon(Icons.star),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // Add your onTap code here!
          },
        );
      },
    );
  }
}
