import 'package:flutter/material.dart';
import 'package:grocery_project/provider/dummy_provider.dart';
import 'package:provider/provider.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dummy Screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Selector<DummyProvider, int>(
                    selector: (ctx, provider) => provider.age,
                    builder: (ctx, age, child) {
                      print("rebuild age");
                      return Text(age.toString());
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      context.read<DummyProvider>().changeAge(25);
                    },
                    child: Text("update age"),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Selector<DummyProvider, String>(
                    selector: (ctx, provider) => provider.name,
                    builder: (ctx, name, child) {
                      print("rebuild name");
                      return Text(name);
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      context.read<DummyProvider>().changeName("Ahmed");
                    },
                    child: Text("update name"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
