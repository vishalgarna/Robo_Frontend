import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/models/strategiesHelpermodel/indicatormodel.dart';
import 'package:practice/models/strategymodel/strategies_model.dart';
import 'package:practice/providers/strtegiesProvider.dart';
import 'package:expandable_text/expandable_text.dart';
import '../views/searchPairpage.dart';
import 'customWidgets.dart';

class AllStrategyWidget extends ConsumerWidget {
  late String strategyName;
  final GlobalKey<FormState> state = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  AllStrategyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customButtonWidgets(
              title: 'Create Strategy',
              width: 350,
              callback: () async {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      title: const Text(
                        "Strategy Name",
                        style: TextStyle(fontSize: 19),
                      ),
                      content: Form(
                        key: state,
                        child: TextFormField(
                          controller: _controller,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            String newValue = value!.trim();
                            if (newValue.isEmpty) {
                              return 'Please Enter Name';
                            }
                            return null;
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            String value = _controller.text.trim();
                            if (state.currentState!.validate()) {
                              strategyName = value;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SerachPairPage(strategyName: strategyName),
                                ),
                              );
                            }
                          },
                          child: const Text('Ok'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 10),
            const Text(
              'All Strategies',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildListState(ref, context),
          ],
        ),
      ),
    );
  }

  Widget _buildListState(WidgetRef ref, BuildContext context) {
    final strategiesState = ref.watch(StrategiesProvider);

    if (strategiesState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (strategiesState.strategieslist.isEmpty) {
      return const Center(child: Text('No Strategies are Created'));
    }

    return _uiOfStrategiesList(strategiesState.strategieslist, ref, context);
  }

  Widget _uiOfStrategiesList(List<StrategiesModel> model, WidgetRef ref, BuildContext context) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: model.length,
      itemBuilder: (context, index) {
        String generateParametersText(IndicatorModel indicator) {
          return indicator.parameters!.values.join(",");
        }

        String text =
            'if ${model[index].indicators![0].type}(${generateParametersText(model[index].indicators![0])} )'
            ' ${model[index].entryRuleModel![0].condition} ${model[index].indicators![1].type}(${generateParametersText(model[index].indicators![1])}) '
            ' than ${model[index].entryRuleModel![0].action}\n'
            'if ${model[index].indicators![2].type}(${generateParametersText(model[index].indicators![2])} )'
            ' ${model[index].exitRuleModel![0].condition} ${model[index].indicators![3].type}(${generateParametersText(model[index].indicators![2])}) '
            'of ${model[index].orderDetails!.symbol}'
            '  than exit ${model[index].orderDetails!.volume}.qty in ${model[index].timeframe} timeframe';

        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                model[index].strategyName!,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              subtitle: ExpandableText(
                text,
                style: TextStyle(fontSize: 12),
                expandText: 'more',
                collapseText: 'less',
                maxLines: 2,
                linkColor: Colors.blue,
              ),
              trailing: IconButton(
                onPressed: () {
                  final prov = ref.read(StrategiesProvider.notifier);
                  prov.removeStrategies(context, model[index].id);
                },
                icon: const Icon(Icons.delete),
              ),
            ),
          ),
        );
      },
    );
  }
}
