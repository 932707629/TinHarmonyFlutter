
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tin_harmony_flutter/app/res/intl.dart';
import 'storage_logic.dart';
import 'storage_state.dart';

class StoragePage extends StatefulWidget {
  @override
  _StoragePageState createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  final logic = Get.find<StorageLogic>();
  final StorageState state = Get.find<StorageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Intl().sayHello),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Obx(
                  () => Text(
                  '${state.localIndex.value}',
                  style: TextStyle(fontSize: 30.sp)
              ),
            ),
          ),
          Positioned(
            bottom: 20.h,
            right: 20.w,
            child: FloatingActionButton(
              onPressed: () => logic.increase(),
              child: const Icon(Icons.add_box),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<StorageLogic>();
    super.dispose();
  }
}