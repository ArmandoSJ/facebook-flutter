import 'package:facebook_flutter/src/activities/home_activity.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomeActivity(),
  };
}
