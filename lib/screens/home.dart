import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/controllers/counter_controller.dart';
import 'package:web_dashboard/screens/other.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => counterController.increment(),
      ),
      body: Obx(() => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Clicks: ${counterController.counter.value}"),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () => Get.to(OtherScreen()),
                    child: Text("Open Other Screen"))
              ],
            ),
          )),
    );
  }
}
