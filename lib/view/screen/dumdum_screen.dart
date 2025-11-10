import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DumdumScreen extends StatefulWidget {
  DumdumScreen({Key? key}) : super(key: key);

  @override
  _DumdumScreenState createState() => _DumdumScreenState();
}

class _DumdumScreenState extends State<DumdumScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProvOne(),
      child: Scaffold(
        appBar: AppBar(title: Text("Providers")),
        body: WidgetChild(),
      ),
    );
  }
}

class WidgetChild extends StatelessWidget {
  const WidgetChild({super.key});
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ProvOne>(context);
    return Column(
      children: <Widget>[
        Selector<ProvOne, String>(
          selector: (context, provs1) => provs1.showsomething1,
          builder: (context, value, child) {
            print("selector text1");
            return Center(child: Text(value));
          },
        ),
        Selector<ProvOne, String>(
          selector: (context, provs2) => provs2.showsomething2,
          builder: (context, value, child) {
            print("selector text2");
            return Center(child: Text(value));
          },
        ),
        SizedBox(height: 10),
        Consumer<ProvOne>(
          builder: (context, value, child) => MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              value.dosomething1();
            },
            child: Text("Do Something1"),
          ),
        ),
        Consumer<ProvOne>(
          builder: (context, value, child) => MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              value.dosomething2();
            },
            child: Text("Do Something2"),
          ),
        ),
      ],
    );
  }
}

class ProvOne extends ChangeNotifier {
  String showsomething1 = "Show Something";
  String showsomething2 = "Show Something";

  get showOne => showsomething1;
  get showTwo => showsomething2;

  dosomething1() {
    showsomething1 = "Yes Provider 1";
    notifyListeners();
  }

  dosomething2() {
    showsomething2 = "Yes Provider 2";
    notifyListeners();
  }
}
