import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:widgets_app/src/routes/routes.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('es', 'ES'),
        const Locale('en', 'EU'), 
      ],
      title: 'Componentes App',
      //home: HomeView(),

      //Rutas estáticas
      initialRoute: '/',
      
      routes: getAplicationRoutes(),

      //Rutas dinamicas 
      /* onGenerateRoute: ( RouteSettings settings ){
        print(' ruta llama: ${ settings.name} ');

        //se puede validar o hacer algo antes de enviar a esa pagina 
        return MaterialPageRoute(
          builder: ( BuildContext context ) => CardView()
        );

      }, */

    );
  }
}