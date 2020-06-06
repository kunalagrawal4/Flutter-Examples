import 'package:flutter/material.dart';
import 'package:material_app/screens/confirmation_acknowledgement.dart';
import 'package:material_app/widgets/async_await.dart';
import 'package:material_app/widgets/gridview_builder.dart';
import 'package:material_app/widgets/http_demo.dart';
import 'package:material_app/widgets/listview_builder.dart';
import 'package:material_app/widgets/navigation_rail_demo.dart';
import 'package:material_app/widgets/shared_prefs_demo.dart';
import 'package:material_app/widgets/stream_demo.dart';
import 'package:material_app/widgets/tab_bar.dart';

import './screens/home_screen.dart';
import './screens/screen1.dart';
import './screens/screen2.dart';

import './widgets/buttons_demo.dart';
import './widgets/form_demo.dart';
import './widgets/row_column.dart';
import './widgets/scaffold_widget.dart';
import './widgets/sliders_demo.dart';
import './widgets/stack_widget.dart';

//as every programming language execution starts from main()
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //for hiding that debug logo on top
      debugShowCheckedModeBanner: false,

      //title of your app
      title: 'Sample App',

      //theme:
      theme: ThemeData(primaryColor: Colors.blue, fontFamily: 'google'),

      //our app will be loaded from here
      home: ScaffoldWidget(),

      //routes to different screens
      routes: {
        /*if home not specified app will start from here*/
        AsyncAwait.routeName: (context) => AsyncAwait(),
        ButtonsDemo.routeName: (context) => ButtonsDemo(),
        ConfirmationAcknowledgement.routeName: (context) =>
            ConfirmationAcknowledgement(),
        FormsDemo.routeName: (context) => FormsDemo(),
        GridViewBuilderDemo.routeName: (context) => GridViewBuilderDemo(),
        HomeScreen.routeName: (context) => HomeScreen(),
        HttpDemo.routeName: (context) => HttpDemo(),
        ListViewBuilderDemo.routeName: (context) => ListViewBuilderDemo(),
        NavigationRailDemo.routeName: (context) => NavigationRailDemo(),
        RowColumn.routeName: (context) => RowColumn(),
        ScaffoldWidget.routeName: (context) => ScaffoldWidget(),
        Screen1.routeName: (context) => Screen1(),
        Screen2.routeName: (context) => Screen2(),
        SharedPrefsDemo.routeName: (context) => SharedPrefsDemo(),
        StreamDemo.routeName: (context) => StreamDemo(),
        SlidersDemo.routeName: (context) => SlidersDemo(),
        StackWidget.routeName: (context) => StackWidget(),
        TabBarDemo.routeName: (context) => TabBarDemo()
      },
    );
  }
}
