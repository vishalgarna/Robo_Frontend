import 'package:flutter/material.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/models/ordermodel/orderModel.dart';
import 'package:practice/services/ApiServices.dart';
import 'package:practice/views/DefaultPage.dart';
import 'package:practice/views/homePage.dart';

import '../Widgets/customWidgets.dart';

class orderplaced extends StatefulWidget {
  String symbol ;

   orderplaced({super.key , required this.symbol});

  @override
  State<orderplaced> createState() => _orderplacedState();
}

class _orderplacedState extends State<orderplaced> {
  List <String> orderType = ["Market Price" , "Limit Price" , "Buy Limit" , "Sell Limit"];

  double ? selectedqty ;

  String selctedOrdetype ="Market Price";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(widget.symbol),
      ),
      bottomNavigationBar: floatingActionButton(symbol: widget.symbol,selectedqty: selectedqty,),
      body: Column(
        children: [
          Form(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                      menuWidth: 250,
                      dropdownColor :Colors.grey.shade200 ,
                      hint:SizedBox(
                        width: 300,
                          child: Center(child: Text( selctedOrdetype ,style: const TextStyle(fontSize: 17), ))),
                        items: orderType.map((item)=>DropdownMenuItem(value: item,child: Text(item) ,)).toList(), onChanged: (newOrderType){
                     setState(() {
                       selctedOrdetype = newOrderType!;
                     });

                    }),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: TextFormField(
                      controller: strategyServices.qtyController,
                      keyboardType: TextInputType.number,

                      decoration: const InputDecoration(
                        labelText: "quantity",
                        border: OutlineInputBorder()
                      ),
                      onFieldSubmitted: (value){
                        selectedqty = double.parse(value);
                      },
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Divider(),
                  const Text("Either We Can Add Chart or Voloume Data" )
                ],

          ))
        ],
      ),
    );
  }
}

class floatingActionButton extends StatefulWidget {
  String ? symbol ;
  String ? title ;
  double ? selectedqty ;
  Color ?  color ;
  floatingActionButton({super.key , this.title , this.color, this.symbol , required this.selectedqty});

  @override
  State<floatingActionButton> createState() => _floatingActionButtonState();
}

class _floatingActionButtonState extends State<floatingActionButton> {
  bool isloadingforBUY = false;
  bool isloadingforsell = false;
  final services = ApiServices();
  @override
  Widget build(BuildContext context ) {
      return Padding
      (
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customButtonWidgets( loading : isloadingforBUY, title: widget.title ?? 'BUY', callback: ()async {
            setState(() {
              isloadingforBUY = true;
            });

            final model =  OrderModel(action: "action", symbol: widget.symbol ?? "", type: "BUY", volume: widget.selectedqty ?? 0.1 );
            try{
              bool result =  await services.placeOrder(model).timeout(const Duration(seconds: 10) , onTimeout: ()=>false);

                CustomSnackbar.show(context , "BUY order placed",Colors.green);
              setState(() {
                isloadingforBUY = false;
              });
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Defaultpage()), (Route<dynamic> rotues)=> false);
            }
            catch(e){

            CustomSnackbar.show(context , "Error during placed order${e.toString()}",Colors.red);
            setState(() {
              isloadingforBUY = false;
            });

            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Defaultpage()), (Route<dynamic> rotues)=> false);

            }




          }, colors: Colors.green, ),
          customButtonWidgets(title: widget.title ??'SELL', callback: ()async {

            setState(() {
              isloadingforsell = true;
            });
                final model =  OrderModel(action: "action", symbol: widget.symbol?? "", type: "SELL", volume: widget.selectedqty ?? 0.1);
            try{
             await services.placeOrder(model).timeout(const Duration(seconds:10 ,), onTimeout: ()=> false);

              CustomSnackbar.show(context , "SELL order placed",widget.color ?? Colors.green);
              setState(() {
                isloadingforBUY = false;
              });
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomePage()), (Route<dynamic> rotues)=> false);
            }
            catch(e){

              CustomSnackbar.show(context , "Error during placed order${e.toString()}",Colors.red);
              setState(() {
                isloadingforBUY = false;
              });

              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomePage()), (Route<dynamic> rotues)=> false);

            }

          }, colors: Colors.red, loading: isloadingforsell, ),
        ],
      ),
    );
  }
}

