
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tin_harmony_flutter/app/res/intl.dart';
import 'connect_logic.dart';
import 'connect_state.dart';

class ConnectPage extends StatefulWidget {
  @override
  _ConnectPageState createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  final logic = Get.find<ConnectLogic>();
  final ConnectState state = Get.find<ConnectLogic>().state;

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Intl().connect),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                child: Text(Intl().getx_get),
                onPressed: () => {
                  logic.createGet()
                },
              ),
              TextButton(
                child: Text(Intl().getx_post),
                onPressed: () => {
                  logic.createPost()
                },
              ),
            ],
          ),
          Expanded(
            child: Obx(()=> Text('${state.result}'),),
          ),
        ],
      ),
    );
    }

  @override
  void dispose() {
    Get.delete<ConnectLogic>();
    super.dispose();
  }
}