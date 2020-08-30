import 'package:flutter/material.dart';
import 'package:material_app/constants.dart';
import 'package:material_app/controllers/product_controller.dart';
import 'package:get/get.dart';

class GetScreen extends StatelessWidget {
  static const routeName = '/get-screen';
  @override
  Widget build(BuildContext context) {
    //* WillPopScope is used to handle Back Button
    return WillPopScope(
      onWillPop: () {
        //* Instead of Navigator.pop use Get.back()
        Get.back(result: 'results'); // send results to prev screen
        return Future.value(true);
      },
      child: Scaffold(
          appBar: AppBar(title: Text('MyPage'), centerTitle: true),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //* Getting Data from prev screen
                Text('data form Previous Screen: ${Get.arguments}'),
                //* GetX is used to consume data from ProductController
                GetX<ProductController>(
                    //* no need to initialize, if you're using binding
                    init: ProductController(),
                    builder: (_) {
                      return Card(
                        elevation: 10,
                        margin: EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              //* for accessing var from a model,
                              //* you need to use model.value.var
                              Text('Title: ${_.product.value.title}',
                                  style: kBoldText),
                              Text('Price: ${_.product.value.price}',
                                  style: kBoldText),
                              TextFormField(
                                //* assign controller to TextField
                                controller: _.titleController,
                                decoration:
                                    InputDecoration(labelText: 'Product title'),
                                keyboardType: TextInputType.name,
                              ),
                              TextFormField(
                                controller: _.priceController,
                                decoration:
                                    InputDecoration(labelText: 'Product price'),
                                keyboardType: TextInputType.number,
                              ),
                              //* for updating your product just use:
                              FlatButton(
                                  onPressed: () => _.updateProduct(),
                                  child: Text('Update'))
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          )),
    );
  }
}
