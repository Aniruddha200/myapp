import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final ValueChanged<ThemeMode?> changeTheme; // Callback function

  const HomeScreen({Key? key, required this.changeTheme}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ValueChanged<ThemeMode?> changeThemeState; // Declare the variable
  @override
  void initState() {
    super.initState();
    changeThemeState = widget.changeTheme; // Assign in initState
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recent",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Clear All"),
            ),
          ],
        ),
      ),
    );
  }
}
