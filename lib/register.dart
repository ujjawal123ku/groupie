import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import 'custom.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController phonecontroller=TextEditingController();
  Country selectedCountry=Country(phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "INDIA",
      example: "INDIA",
      displayName: "INDIA",
      displayNameNoCountryCode: "IN",
      e164Key: ""
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:Container(
        child: Center(
          
          child: Padding(

            padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 35),

            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple.shade50
                  ),
                  child: Image.asset(
                    'assets/images/1.jpg',
                    
                  ),


                ),
                SizedBox(height: 30),
                const Text("Regiter Here",
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                TextFormField(
                  controller: phonecontroller,
                  decoration: InputDecoration
                    (
                    hintText: "Enter your phone number",

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black12)
                    ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black12)
                      ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          showCountryPicker(context: context,
                              countryListTheme:const CountryListThemeData(
                                bottomSheetHeight: 500
                              ) ,
                              onSelect:(value){
                          setState(() {
                            selectedCountry=value;
                          });

                          }

                          );
                        },
                        child: Text("${selectedCountry.flagEmoji}+${selectedCountry.phoneCode} |",style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),

                      ),

                    )

                  ),
                ),
                SizedBox(height: 20),
                SizedBox( width: double.infinity
                  ,
                  height: 50,
                  child: custom_button(text: 'Register', onPressed: () {  },),

                )
              ],
            ),
          ),
        ),
      ) ,
        
        

      ),
    );
  }
}
