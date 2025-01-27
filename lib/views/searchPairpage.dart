import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/views/strategyCreationPage.dart';

import '../Utils/StradegyCreatetion_Utilities.dart';
import '../providers/Providers.dart';

class SearchPairPage extends ConsumerStatefulWidget {
  String strategyName;
  SearchPairPage({Key? key, required this.strategyName}) : super(key: key);

  @override
  _SearchPairPageState createState() => _SearchPairPageState();
}

class _SearchPairPageState extends ConsumerState<SearchPairPage> {
  List result = [];

  @override
  void initState() {
    result = strategyServices.foresPairs;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    strategyServices.searchControllers.clear();
  }
  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(pairListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("symbols"),
        actions: [
          TextButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context)=>StrategyCreationPage(pairName: pairNames()?? "pairNames", strategyName: "strategyName")));
          }, child: const Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Text("ok" , style: TextStyle(color: Colors.black , fontSize: 22),),
          ))
        ],
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
                  onChanged: (itemSearch) {
                    filterPairs(itemSearch);
                  },
                  controller: strategyServices.searchControllers,
                  decoration: InputDecoration(
                    label: const Text('search pair'),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.separated(
                itemCount: result.length,
                itemBuilder: (context, index) {
                  bool isSelectedValue = provider.isSelected(result[index]);
                  return ListTile(
                    title: Text(result[index]),
                    trailing: Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        value: isSelectedValue,
                        onChanged: (cngValue) {
                          if (cngValue == true) {
                            provider.addPair(result[index]);
                          } else {
                            provider.removePair(result[index]);
                          }
                        },
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(height: 0,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void filterPairs(String itemName) {
    List newList = strategyServices.foresPairs.where((item) {
      return item.toString().toLowerCase().contains(itemName.toLowerCase());
    }).toList();

    setState(() {
      result = newList;
    });
  }
  String ? pairNames (){
    final provider = ref.read(pairListProvider.notifier);
    String ? pairs ;
     pairs = provider.pairList.join(",");
     return pairs;

  }
}


