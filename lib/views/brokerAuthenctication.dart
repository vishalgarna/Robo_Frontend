import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';

class BrokerAuthentication extends StatelessWidget {
  String ? image;
  String ? brokerName;
   BrokerAuthentication({super.key ,this.image , this.brokerName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("credentials"),
    ),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70),
                child: loadBrkers("upstox" , context)),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 171,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.teal),
                ),
                  onPressed: (){
                    strategyServices.brokerControllers["upstox"]?.forEach((key, value){
                      print(key);
                      print(value.text);
                    });
                  }, child: const Text("connect" ,style: TextStyle(color: Colors.white),)),
            )

        ],
            ),
      ),
      );
  }

  Widget loadBrkers(String BrokerName , BuildContext context){
    String text  = "hy this rahul";
   List<String> ? crednetials =  strategyServices.brokerCredentials[BrokerName];

   if(crednetials != null){
     strategyServices.setupBrokerControllers(BrokerName);
       return   Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(

           color: Colors.grey.shade200,
           child: Form(child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               const Padding(
                 padding: EdgeInsets.only(left: 8.0 , right: 10, top: 15 , bottom: 10),
                 child: SizedBox(
                   height: 71,
                     width: 200,
                     child: CircleAvatar(child: Icon(Icons.person , size: 50,),)),
               ),
               ...crednetials.map((item){
                 return  Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: SizedBox(
                                 height:50 ,
                                 width: 340,
                                 child: TextFormField(
                                   controller: strategyServices.brokerControllers[BrokerName]![item]!,
                                   onChanged: (value){
                                   },
                                   decoration: InputDecoration(
                                       hintText: item,
                                       border: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(2)
                                       )
                                   ),
                                 ),
                               ),
                 );
               }),

               const SizedBox(height: 20,),

               Row(

                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 18.0),
                     child: Text.rich(TextSpan(text: "Url:   " ,
                         style: const TextStyle(color: Colors.black87 , fontWeight: FontWeight.bold),
                         children: [
                       TextSpan(text: text , style: const TextStyle(fontWeight: FontWeight.normal))
                     ]) ),
                   ),
                   const SizedBox(width: 10,),
                   // Text("url: ${text}"),
                   IconButton(onPressed: (){
                     Clipboard.setData(ClipboardData(text: text));
                     CustomSnackbar.show(context, "url copied", Colors.black87);
                   }, icon: const Icon(Icons.copy))
                 ],
               ),

             ],
           )),
         ),
       );



   }
   else {
     return const Center(child: Text("no Brokers are Found"));
   }
  }
}
