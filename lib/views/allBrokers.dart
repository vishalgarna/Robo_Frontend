import 'package:flutter/material.dart';
import 'package:practice/views/brokerAuthenctication.dart';

class AllBrokers extends StatefulWidget {
   AllBrokers({super.key});

  @override
  State<AllBrokers> createState() => _AllBrokersState();
}

class _AllBrokersState extends State<AllBrokers> {
  List<String> brokersName = ["upstox" , "Zerodha", "AngelOne","upstox" , "Zerodha", "AngelOne","upstox" , "Zerodha", "AngelOne","upstox" , "Zerodha", "AngelOne","upstox" , "Zerodha", "AngelOne","upstox" , "Zerodha", "AngelOne","upstox" , "Zerodha", "AngelOne"];

  final searchBrokers = TextEditingController();

  String filter = "";

  List<String>result = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result = brokersName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("brokers"),
      ),
      body:  Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SizedBox(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width:320 ,
                    height: 50,
                    child: TextField(
                      controller: searchBrokers,
                      onChanged: (value){

                        filterList(value);

                      },
                      decoration: InputDecoration(
                        hintText: "search",
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)
                        )
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(thickness: 2,),
              const SizedBox(height: 10,),
               Expanded(
                child: Container(
                  child: GridView.count(crossAxisCount:3  ,
                  physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: result.map((item){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BrokerAuthentication(brokerName: item,)));
                        },
                        child: Column(
                          children: [
                            const CircleAvatar(
                              radius: 35,
                              child: Icon(Icons.person),),
                            Text(item.toString())
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }

  Widget buildBrokers(String filter) {
    if (brokersName.contains(filter.toLowerCase().toString())){
      return Container();
  }
    else{
      return Container(
        color: Colors.red,
      );
    }
  }

  dynamic filterList(String newValue){

    List<String>newList = brokersName.where((item){
      return item.toLowerCase().contains(newValue.toLowerCase());
    }).toList();

    setState(() {
      result = newList;
    });
  }

}



