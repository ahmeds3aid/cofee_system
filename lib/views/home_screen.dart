import 'package:cofee_system/locale/locale_controller.dart';
import 'package:cofee_system/util/colors.dart';
import 'package:cofee_system/views/add_new_order_screen.dart';
import 'package:cofee_system/views/all_order_details_screen.dart';
import 'package:cofee_system/widgets/custom_add_new_order.dart';
import 'package:cofee_system/widgets/custom_all_order_widget.dart';
import 'package:cofee_system/widgets/custom_button_widget.dart';
import 'package:cofee_system/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.controllerlang});
final MyLocaleController controllerlang;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();


  @override
  Widget build(BuildContext context) {
   MyLocaleController controllerlang = Get.find(); 
    return Scaffold(
      key: scaffoldkey,
      drawer:  CustomDrawer(controllerlang: controllerlang,),
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
       leading: GestureDetector(
         onTap: () {
                  scaffoldkey.currentState!.openDrawer();
                },
        child: const Icon(Icons.menu,color: Colors.white,)), 
      ),
      backgroundColor: AppColors.backgroundcolor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              
                GestureDetector(
                    onTap: () {
                      Get.to(const AllOrderDetails());
                    },
                    child: const CustomAllOrderWidget()),
              
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(AddNewOrder());
                  },
                  child: const CustomAddNewOrder()),
               const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
