import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class VoteToggleButtons extends StatefulWidget {
  const VoteToggleButtons({super.key});

  @override
  State<VoteToggleButtons> createState() => _VoteToggleButtonsState();
}

class _VoteToggleButtonsState extends State<VoteToggleButtons> {
  List<bool> _isSelected = [false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      constraints: BoxConstraints.loose(const Size(60, 60)),
      isSelected: _isSelected,
      onPressed: (int index) {
        setState(() {
          // Allow only one button to be selected at a time
          _isSelected = [false, false];
          _isSelected[index] = !_isSelected[index];
        });
      },
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(4),
          child: Row(
            children: [
              Icon(MingCute.large_arrow_up_line),
              SizedBox(width: 4),
              Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4),
          child: Icon(MingCute.large_arrow_down_line),
        ),
      ],
    );
  }
}
