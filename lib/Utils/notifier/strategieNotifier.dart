import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/Utils/states/strategiesState.dart';
import 'package:practice/lala.dart';
import 'package:practice/services/ApiServices.dart';

import '../../copyFIle.dart';


class StrategiesNotifier extends StateNotifier<StrategiesState>{
  final ApiServices _apiservices;
  StrategiesNotifier(this._apiservices) : super(StrategiesState());

  // *********** get
  Future<void> getStategies (BuildContext context)async{

    state = state.copyWith(isLoading:  true);

    var data ;
    try{
       data = await _apiservices.getAllStrategy();
    }
    catch(e){
      CustomSnackbar.show(context , e.toString() , Colors.red.shade600);
    }


if(data != null){
  state = state.copyWith(strategieslist: data);
}

state =state.copyWith(isLoading:  false);

return ;
  }

  //*************  remove
  Future<bool> removeStrategies (BuildContext context ,id)async{

    state = state.copyWith(isLoading: true);

    var result ;
    try{
      result = await _apiservices.deleteStrategy(id);
      state = state.copyWith(isLoading: false);
      state = state.copyWith(
        strategieslist: state.strategieslist.where((e) => e.id != id).toList(),
      );

      if(result){

        return true;
      }
      return false;
    }
    catch(e){
      CustomSnackbar.show(context , e.toString() , Colors.red);
      return false;
    }
  }


}


class Indicator {
  final String name;
  final Map<String, double> parameters;

  Indicator({required this.name, required this.parameters});
}
class IndicatorWidget extends StatefulWidget {
  final Indicator indicator;

  IndicatorWidget({required this.indicator});

  @override
  _IndicatorWidgetState createState() => _IndicatorWidgetState();

  Map<String, double> get parameters => indicator.parameters;
}

class _IndicatorWidgetState extends State<IndicatorWidget> {
  late Map<String, double> parameters;

  @override
  void initState() {
    super.initState();
    parameters = Map.from(widget.indicator.parameters);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.indicator.name, style: const TextStyle(fontSize: 15)),
          const SizedBox(width: 10),
          ...parameters.keys.map((entry) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(entry),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: parameters[entry].toString(),
                      ),
                      onChanged: (val) {
                        setState(() {
                          parameters[entry] = double.tryParse(val) ?? parameters[entry]!;
                        });
                        // Update the parameters in the main Indicator object
                        widget.indicator.parameters[entry] = double.tryParse(val) ?? parameters[entry]!;
                      },
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}


// class IndicatorWidget extends StatefulWidget {
//   final Indicator indicator;
//
//   IndicatorWidget({required this.indicator});
//
//   @override
//   _IndicatorWidgetState createState() => _IndicatorWidgetState();
//
//   Map<String, double> get parameters => indicator.parameters;
// }
//
// class _IndicatorWidgetState extends State<IndicatorWidget> {
//   late Map<String, double> parameters;
//
//   @override
//   void initState() {
//     super.initState();
//     parameters = Map.from(widget.indicator.parameters);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       margin: EdgeInsets.all(5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.blue),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(widget.indicator.name, style: TextStyle(fontSize: 18)),
//           ...parameters.keys.map((key) {
//             return Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(key),
//                 SizedBox(
//                   width: 100,
//                   child: TextField(
//                     keyboardType: TextInputType.number,
//                     decoration: InputDecoration(
//                       hintText: parameters[key].toString(),
//                     ),
//                     onChanged: (value) {
//                       setState(() {
//                         parameters[key] = double.tryParse(value) ?? parameters[key]!;
//                       });
//                       parameters[key] = double.tryParse(value) ?? parameters[key]!;
//                     },
//                   ),
//                 ),
//               ],
//             );
//           }).toList(),
//         ],
//       ),
//     );
//   }
// }


class ConditionWidget extends StatelessWidget {
  final String type;

  ConditionWidget({required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green),
      ),
      child: Text(type, style: const TextStyle(fontSize: 18)),
    );
  }
}

class LogicalOperatorWidget extends StatelessWidget {
  final String type;

  LogicalOperatorWidget({required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.red),
      ),
      child: Text(type, style: const TextStyle(fontSize: 18)),
    );
  }
}

class TryStrategies  with ChangeNotifier{

  List<Widget> _strategyComponents = [];

      List<Widget> get  strategyComponents => _strategyComponents;

     void addComponents(Widget components){

       _strategyComponents.add(components);

       notifyListeners();
     }

     void clearComponents(){

       _strategyComponents.clear();
       notifyListeners();
     }

  List<Map<dynamic, dynamic>> getComponents() {
    return _strategyComponents.map((component) {
      if (component is IndicatorWidget) {
        return {
          'type': 'indicator',
          'name': component.indicator.name,
          'parameters': component.parameters.map((k, v) => MapEntry(k, v)),
        };
      } else if (component is ConditionWidget) {
        return {
          'type': 'condition',
          'name': component.type,
        };
      }

      else if (component is LogicalOperatorWidget) {
        return {
          'type': 'logicalOperator',
          'name': component.type,
        };
      }
      return {};
    }).toList().cast<Map<dynamic, dynamic>>();
  }

}

