
import 'package:flutter/material.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/pages/strategyCreationPage.dart';

class serachPair extends StatefulWidget {

   serachPair({super.key});

  @override
  State<serachPair> createState() => _serachPairState();
}

class _serachPairState extends State<serachPair> {
  List result = [];

  @override
  void initState() {
    result = strategyServices.foresPairs;
    super.initState();
  }
  @override
  void dispose() {
    strategyServices.searchControllers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                       (context)=>StrategyCreationPage(pairName: result[index],)),
                           (Route<dynamic>routes)=>false);
                   },
                   title: Text(result[index]),
                 );

              }, separatorBuilder: (BuildContext context, int index) {
                  return Divider(height: 0,);
              },),
            ),
          ],
        ),
      ),
    ));
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
