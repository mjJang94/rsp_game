import 'package:flutter/material.dart';
import 'package:rsp_game/game/enum.dart';
import 'package:rsp_game/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({required this.isDone, required this.cpuInput, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          Expanded(child: SizedBox.shrink()),
          Expanded(child: InputCard(child: Image.asset(cpuInput.path))),
          Expanded(child: SizedBox.shrink()),
        ],
      );
    }

    return Center(
      child: InputCard(
        callback: null,
        child: getCpuInput(),
      ),
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      print('${cpuInput.path}');
      return Image.asset(cpuInput.path);
    }

    return const Align(
        alignment: Alignment.center,
        child: Text(
          '?',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      );
  }
}
