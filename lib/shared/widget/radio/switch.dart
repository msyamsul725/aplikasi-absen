import 'package:flutter_hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/shared/util/input/input.dart';
import 'package:flutter_hyper_ui/shared/widget/abstract/input_control/input_control.dart';

class ExSwitch extends StatefulWidget {
  final String id;
  final String? label;
  final bool? value;
  final Function(String)? onChanged;

  const ExSwitch({
    Key? key,
    required this.id,
    this.label = "",
    this.value = false,
    this.onChanged,
  }) : super(key: key);

  @override
  _ExSwitchState createState() => _ExSwitchState();
}

class _ExSwitchState extends State<ExSwitch> implements InputControlState {
  bool? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.value!;
    Input.inputController[widget.id] = this;
    Input.set(widget.id, selectedValue);
  }

  @override
  setValue(value) {
    selectedValue = value;
    setState(() {});
  }

  @override
  resetValue() {
    Input.set(widget.id, false);
    selectedValue = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text("${widget.label}"),
          ),
          Switch(
            value: selectedValue!,
            onChanged: (value) {
              setValue(value);
            },
          ),
        ],
      ),
    );
  }
}
