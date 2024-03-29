import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import '../constants/text_style.dart';
import '../pages/login.dart';
import 'confirm_pin.dart';


class Setuppin extends StatefulWidget {
  const Setuppin({super.key});

  @override
  State<Setuppin> createState() => _SetuppinState();
}

class _SetuppinState extends State<Setuppin> {
  TextEditingController  controller=TextEditingController();
  var numbers =[1,2,3,4,5,6,7,8,9,0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left:50,top:5),
              child: Text('Setup pin',style:style1,),
            ),
            const SizedBox(height:10,),
            const Padding(
              padding: EdgeInsets.only(left:50,top:5),
              child: Text('Setup pin to access field app',style:style2,),
            ),
            const SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal:30),
              child: PinCodeFields(
              fieldBorderStyle:FieldBorderStyle.square,
                fieldHeight:40,
                fieldWidth:40,
                borderWidth: 2.0,
                length:4,
                controller: controller,
                onComplete: (String value) {  },),
            ),
            const SizedBox(height: 50,),
            Expanded(
              flex:2,
                child: GridView.builder(
                  padding:const EdgeInsets.all(0.0),
              physics:const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                childAspectRatio: 0.8/0.6,
              ),
                    itemBuilder: (context,index){
                    return Container(
                      margin:const EdgeInsets.all(4.0),
                      width:50,
                      height:60,
                         decoration: const BoxDecoration(
                           color:Colors.white,
                         ),
                      padding:null,
                      child:index==9? const SizedBox():Center(
                        child:MaterialButton(
                          onPressed: () {
                          
                          },
                          color:Colors.white,
        
                          minWidth:50,
                          height:55,
                          shape:RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(60.0),
                          ),
                          child:index==11?  Text('Delete',style:style3,):
                          Text("${numbers[index == 10 ? index-1 :index]}",
                            style:style1
                          ),
                        ),
                      ),
                    );
              },
                itemCount: 12 ,
                ),
            ),
             const SizedBox(height:5,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal:30),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed:(){
        
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return  const  Confirmpin();
                          }),);
                        },
                      style:ButtonStyle(
                        backgroundColor:Buttonstyle,
                      ),
                        child: const Text('Submit',style:TextStyle(
                          color:Colors.white,fontSize:30,fontWeight:FontWeight.bold
                        ),),
                    ),
                  ),
                ],
              ),
            ),
        
            const SizedBox(height:20,),
          ],
        ),
      ),
    );
  }
}
