import 'package:flutter/material.dart';
import 'package:sql_to_mapper/constants/controllers.dart';
import 'package:sql_to_mapper/routing/routes.dart';
import 'package:sql_to_mapper/widgets/custom_text.dart';

class GetMapperPage extends StatefulWidget {
  const GetMapperPage({Key? key}) : super(key: key);

  @override
  State<GetMapperPage> createState() => _GetMapperPageState();
}

class _GetMapperPageState extends State<GetMapperPage> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;

    if (data.runtimeType == Null) {
      return const Center(
        child: CustomText(text: "Insert sql code and convert."),
      );
    } else {
      var _text = SizedBox(
        width: double.infinity,
        child: Text(
          data as String,
          style: const TextStyle(fontSize: 20,),
        ),
      );

      var _nextButton = OutlinedButton(
        onPressed: () => {
          menuController.changeActiveItemTo(sideMenuItems[3]),
          navigationController.navigateToWithData(sideMenuItems[3], data)
        },
        child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Next",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                side: BorderSide(width: 1.0, color: Colors.blueAccent),
              )),
        ),
      );

      return Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: _text,
                flex: 7,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: _nextButton,
                flex: 1,
              ),
            ],
          ),
        ),
      );
    }
  }
}
