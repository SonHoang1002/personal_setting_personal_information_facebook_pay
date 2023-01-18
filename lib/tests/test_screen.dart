import 'package:flutter/material.dart';
import 'package:personal_setting_personal_information_facebook_pay/tests/counter_provider.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late CounterProvider counter;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    counter = Provider.of<CounterProvider>(
      context,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              counter.getCounter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increaseCounter(1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
