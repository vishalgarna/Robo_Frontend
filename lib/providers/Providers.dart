


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Utils/notifier/pairListNotifier.dart';
import 'package:practice/Utils/notifier/strategieNotifier.dart';
import 'package:practice/Utils/states/strategiesState.dart';
import '../services/ApiServices.dart';

final StrategiesProvider = StateNotifierProvider<StrategiesNotifier , StrategiesState>((ref){

  final repo = ref.watch(apiserivces);

  return StrategiesNotifier(repo);

});

final Practice_Provider = ChangeNotifierProvider((ref)=>TryStrategies());


final pairListProvider = ChangeNotifierProvider<PairListNotifier>((ref) => PairListNotifier());

