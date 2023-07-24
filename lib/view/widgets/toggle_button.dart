import 'package:flutter/cupertino.dart';
import '../../utilities/themes/apptheme.dart';

class ToggleButtonCustom extends StatefulWidget {
  const ToggleButtonCustom({Key? key}) : super(key: key);

  @override
  State<ToggleButtonCustom> createState() => _ToggleButtonCustomState();
}

class _ToggleButtonCustomState extends State<ToggleButtonCustom> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: isToggled,
      activeColor: AppTheme.primary500,
      onChanged: (bool value) {
        setState(() {
          isToggled = value;
        });
      },
    );
  }
}
