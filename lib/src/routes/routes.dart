import 'package:flutter/material.dart';

import 'package:widgets_app/src/views/avatar_page.dart';
import 'package:widgets_app/src/views/card_view.dart';
import 'package:widgets_app/src/views/home_view.dart';
import 'package:widgets_app/src/views/alert_view.dart';
import 'package:widgets_app/src/views/animated_view.dart';
import 'package:widgets_app/src/views/inputs_view.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  //Forma alternatica de generar rutas estaticas
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeView(),
    'alert': (BuildContext context) => AlertView(),
    'avatar': (BuildContext context) => AvatarView(),
    'card': (BuildContext context) => CardView(),
    'animated': (BuildContext context) => AnimatedView(),
    'inputs': (BuildContext context) => InputsView()
  };
}
