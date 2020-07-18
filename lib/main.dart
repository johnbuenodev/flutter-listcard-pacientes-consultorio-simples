import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de pacientes',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: ListaPacientesPage(),
    );
  }
}

final DividerInfoConsulta = Divider(

  height: 20.0,
);
final DividerInfoCards = Divider(
  color: Colors.indigo,
  height: 20.0,
);

class ListaPacientesPage extends StatefulWidget {
  @override
  _ListaPacientesPageState createState() => _ListaPacientesPageState();
}

class _ListaPacientesPageState extends State<ListaPacientesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Consultas Hoje"),
          centerTitle: true,
        ),
        body: ListaPacientes()
    );
  }

  ListaPacientes(){
    return ListView(
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          DividerInfoCards,
          _listaPaciente("Mordecai","Limpeza Pele","25-07-2020","09:00","mordecai"),
          DividerInfoCards,
          _listaPaciente("Rigby","Primeira Consulta","25-07-2020","10:00","rigby"),
          DividerInfoCards,
          _listaPaciente("Benson","Primeira consulta","25-07-2020","14:00","benson"),
          DividerInfoCards,
          _listaPaciente("Saltitão","Unhas","25-07-2020","16:00","saltitao"),
          DividerInfoCards,
          _listaPaciente("Pairulito Maellard","Limpeza Pele","25-07-2020","17:30","pairulito-maellard"),
          DividerInfoCards,
          _listaPaciente("Musculoso","Limpeza Pele","25-07-2020","18:30","musculoso"),
          DividerInfoCards,
          SizedBox(
            height: 5.0,
          ),
        ]
    );
  }

  _listaPaciente(String nomepaciente, String tipoconsulta,
      String dataconsulta, String horaconsulta, String pacienteimage){


    var nomePaciente = nomepaciente;
    var tipoConsulta = tipoconsulta;
    var dataConsulta = dataconsulta;
    var horaConsulta = horaconsulta;
    var pacienteImage = pacienteimage + ".png";

    //retornar container depois
    return Row(
        children:<Widget>[
          SizedBox(width: 15.0),
    Column(
    children:<Widget>[
        Image.asset("images/${pacienteImage}",width: 90.0,height: 90,),//add o tamanho
    ],
    ),
    SizedBox(width: 10.0),


Column(
  crossAxisAlignment: CrossAxisAlignment.start,
    children:<Widget>[
    Row(
      //mainAxisAlignment: MainAxisAlignment.start,
    children:<Widget>[
    Center(
    child: Text(
    "Nome: ",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    color: Colors.black,
    ),
     // textDirection: TextDirection.ltr,//  left to right
    ),
    ),
        Text(
    nomePaciente,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    color: Colors.black54,
    ),
       //   textDirection: TextDirection.ltr,//  left to right
    ),

    ],
    ),

      DividerInfoConsulta,
    Row(
     // mainAxisAlignment: MainAxisAlignment.start,
    children:<Widget>[
    Text(
    "Tipo: ",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: Colors.black,
    ),
     // textDirection: TextDirection.ltr,//  left to right
    ),
  Divider(color: Colors.indigo,),
  Text(
    tipoConsulta,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: Colors.black54,
    ),
    //extDirection: TextDirection.ltr,//  left to right
    ),

    ],
    ),
    Divider(height:10.0),
    Row(
    //  mainAxisAlignment: MainAxisAlignment.start,
    children:<Widget>[

    Text(
    "Data: ",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: Colors.black,
    ),
     // textDirection: TextDirection.ltr,//  left to right
    ),

    Text(
    dataConsulta,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: Colors.black54,
    ),
      //textDirection: TextDirection.ltr,//  left to right
    ),

    ],
    ),
    Divider(height:10.0),
    Row(
     // mainAxisAlignment: MainAxisAlignment.start,
    children:<Widget>[

    Text(
    "Hora: ",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: Colors.black,
    ),
     // textDirection: TextDirection.ltr,//  left to right
    ),

    Text(
    horaConsulta,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: Colors.black54,
    ),
     // textDirection: TextDirection.ltr,//  left to right
    ),

    ],
    ),
    ],
    )
    ],
    );
  }


}