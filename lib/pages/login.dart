import 'package:flutter/material.dart';
import 'package:loginflow/constants/text_style.dart';

import '../pin_authentication/setup_pin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var formkey=GlobalKey<FormState>();
   Color colors1= Colors.white;
  String email='';
  String password='';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        alignment:Alignment.topLeft,
        margin:const EdgeInsets.only(top: 46,left: 20,right: 20,bottom:0),
        child:  Form(
          key:formkey,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              const SizedBox(height:10,),
              const Text('Login',
              style:style1,),
              const SizedBox(height:8,),
              const Text('please enter your details to login',
              style:style2,
              ),
              const SizedBox(height:50,),
              const Text('Email address',
                style:style2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5),
                child: TextFormField(
                  decoration:textformfielddecoration.copyWith(hintText:'Email address'),
                  onChanged: (val){
                    setState(() {
                      email=val;
                      colors1=Colors.red;
                    });
                  },
                  validator: (val){
                    return val!.isEmpty ? 'ENTER YOUR EMAIL':null;
                  },

                ),
              ),
              const SizedBox(height:5),
              const Text('Password',
                style:style2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:2),
                child: TextFormField(
                  validator: (val){
                    return val!.length<6 ? 'ENTER PASSWORD 6+':null;
                  },
                  onChanged: (val){
                    setState(() {
                      password=val;
                      colors1=Colors.red;
                    });
                  },
                  decoration:textformfielddecoration.copyWith(hintText:'Password',
                      prefixIcon:const Icon(Icons.lock_open),suffixIcon:const Icon(Icons.remove_red_eye_outlined)),
                ),
              ),
              const SizedBox(height:6,),
              const Center(child: Text('Reset Password',style:style2,)),
              const SizedBox(height:5,),
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Text(error,style: style4,),
              ),
              const SizedBox(height:5),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:MaterialStatePropertyAll(colors1),
                      ),
                        onPressed: (){
                          if(formkey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return  const Setuppin();
                            }),);
                          }else{
                            setState(() {
                              error ='invalid login credentials';
                            });
                          }
                        },
                        child:const Text('Login',style:style2,),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
