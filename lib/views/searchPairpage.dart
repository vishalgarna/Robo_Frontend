
import 'package:flutter/material.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/views/strategyCreationPage.dart';

class SerachPairPage extends StatefulWidget {

  String strategyName;
   SerachPairPage({super.key , required this.strategyName});

  @override
  State<SerachPairPage> createState() => _SerachPairPageState();
}

class _SerachPairPageState extends State<SerachPairPage> {
  List result = [];

  @override
  void initState() {
    result = strategyServices.foresPairs;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: 340,
                child: TextField(
                  onChanged: (itemsearch){

                    filterpairs(itemsearch);

                  },
                  controller: strategyServices.searchControllers,
                  decoration: InputDecoration(
                    label: const Text('search pair'),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),

            Expanded(
              child: ListView.separated(

                itemCount: result.length,
                  itemBuilder: (context , index){
                 return ListTile(
                   onTap: (){
                   Navigator.pushAndRemoveUntil
                     (context, MaterialPageRoute(builder:
                       (context)=>StrategyCreationPage(pairName: result[index], strategyName: widget.strategyName,)),
                           (Route<dynamic>routes)=>false);
                   },
                   title: Text(result[index]),
                   trailing: const Icon(Icons.arrow_forward_ios_sharp , size: 20,),
                 );

              }, separatorBuilder: (BuildContext context, int index) {
                  return const Divider(height: 0,);
              },),
            ),
          ],
        ),
      ),
    );
  }

  void filterpairs (String itemName){
    
  List newlist = [];
    

      newlist = strategyServices.foresPairs.where((item){
        
       return  item.toString().toLowerCase().contains(itemName.toLowerCase());
        
      }).toList();

    
    setState(() {
      result = newlist;
    });
    
    
  }
}
