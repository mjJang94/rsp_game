import 'package:flutter/material.dart';
import '../enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult({required this.isDone, required this.callback, this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        children: [
          Text('${result!.displayString}', style: TextStyle(fontSize: 20),),
          SizedBox(height: 8),
          TextButton(onPressed: () => callback.call(), child: Text('다시 하기'))
        ],
      );
    }
    return Center(
        child: Text('가위, 바위, 보 중 하나를 선택 해 주세요.',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
  }
}
