import 'package:flutter/material.dart';

class CheckboxWidget extends StatelessWidget {
  const CheckboxWidget({
    super.key,
    required this.isChecked,
    required this.onChanged,
    required this.title,
    this.subtitle,
    this.checkedColor,
    this.checkedIcon,
  });

  final bool isChecked;
  final ValueChanged<bool> onChanged;
  final Widget title;
  final Widget? subtitle;
  final Color? checkedColor;
  final Icon? checkedIcon;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      onTap: () => onChanged(isChecked),
      title: title,
      subtitle: subtitle,
      trailing: AnimatedContainer(
        width: 35,
        height: 35,
        curve: Curves.fastOutSlowIn,
        transformAlignment: Alignment.center,
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color:
              isChecked ? checkedColor ?? colors.primary : Colors.transparent,
          border: Border.all(
            color: isChecked ? checkedColor ?? colors.primary : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: isChecked
            ? checkedIcon ?? Icon(Icons.check, color: Colors.white)
            : null,
      ),
    );
  }
}
