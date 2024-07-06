import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {
         //splash
         "Welcome to My System":"مرحبًا بك",
         //home
         "all order":"كل الطلبات",
         "add new order":"اضافه طلب جديد",
         //add new order
         "enter quantity":"ادخل الكميه",
         "add more":"اضافه طلب اخر",
         "add order":"اضافه الاوردر",
         //all oder details
         "Order Name":"اسم الطلب",
         "Quantity":"الكميه",
         "Price":"السعر",
         "Total":"اجمالي السعر",
         "Reset Data":"حذف البيانات",
         "arabic":"عربي",
         "english":"انجليزي",
         "Please enter quantity of order":"الرجاء إدخال كمية الطلب",
         "Error":"خطأ",
         "Please enter valid order details":"الرجاء إدخال تفاصيل الطلب الصحيحة"
        },
        "en": {
          //splash
         "Welcome to My System":"Welcome to My System",
         //home
         "all order":"all order",
         "add new order":"add new order",
         //add new order
         "enter quantity":"enter quantity",
         "add more":"add more",
         "add order":"add order",
         //all oder details
         "Order Name":"Order Name",
         "Quantity":"Quantity",
         "Price":"Price",
         "Total":"Total",
         "Reset Data":"Reset Data",
         "arabic":"arabic",
         "english":"english",
         "Error":"Error",
         "Please enter quantity of order":"Please enter number of order",
         "Please enter valid order details":"Please enter valid order details"
        },
      };
}
