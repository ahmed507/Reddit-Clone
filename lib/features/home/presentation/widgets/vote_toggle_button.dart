import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class VoteToggleButtons extends StatefulWidget {
  final int likeCount;

  const VoteToggleButtons({super.key, this.likeCount = 0});

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
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              const Icon(MingCute.large_arrow_up_line),
              const SizedBox(width: 4),
              widget.likeCount == 0
                  ? const SizedBox()
                  : Text('${widget.likeCount}',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(4),
          child: Icon(MingCute.large_arrow_down_line),
        ),
      ],
    );
  }
}
