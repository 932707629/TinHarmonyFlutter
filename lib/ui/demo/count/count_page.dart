
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tin_harmony_flutter/app/res/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'count_logic.dart';
import 'count_state.dart';

class CountPage extends StatefulWidget {
  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  final logic = Get.find<CountLogic>();
  final CountState state = Get.find<CountLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Intl().count),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Obx(
                  () => Text('${state.count.value}',
                  style: TextStyle(fontSize: 30.sp)),
            ),
          ),
          Positioned(
            bottom: 20.h,
            right: 20.w,
            child: FloatingActionButton(
              onPressed: () => logic.increase(),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<CountLogic>();
    super.dispose();
  }
}
