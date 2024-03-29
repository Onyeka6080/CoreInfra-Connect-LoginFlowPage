import 'package:flutter/material.dart';

const style1 =TextStyle(
  fontSize:30,fontWeight:FontWeight.bold,color:Colors.black
);
const style2 =TextStyle(
    fontSize:20,
  color:Colors.black
);
var style3 =const TextStyle(
    fontSize:30,fontWeight:FontWeight.bold,color:Colors.black
);
var style4 =const TextStyle(
    fontSize:14,fontWeight:FontWeight.bold,color:Colors.red
);

var  Buttonstyle = MaterialStateProperty.all(Colors.red);

var paddings1=const EdgeInsets.only(top:50,left:20);


var textformfielddecoration= const InputDecoration(
    fillColor:Colors.white,
    filled: true,
    enabledBorder:OutlineInputBorder(
        borderSide:BorderSide(
            color:Colors.grey,
            width: 2.0
        )
    ),
    focusedBorder:OutlineInputBorder(
        borderSide:BorderSide(
            color:Colors.black,
            width: 2.0
        )
    )
);