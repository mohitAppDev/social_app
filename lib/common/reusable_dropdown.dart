import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class ReusableDropDown extends StatelessWidget {
  final List<DropdownMenuItem<String>>? items;
  final void Function(Object?) ?onChanged;
  final String ?selectedValue;
  final Widget ?iconData;
  final Widget ?text;
  const ReusableDropDown({
    super.key,
    required this.items,
    @required this.onChanged,
    @required this.selectedValue,
    @required this.iconData,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField2(
            isExpanded: true,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            hint: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: text,
            ),
            items: items,
            validator: (value) {
              if (value == null) {
                return '      Required field';
              }
            },
            value: selectedValue,
            onChanged: onChanged,
            icon: iconData,
            buttonHeight: 60,
            buttonWidth: 115,
            buttonPadding: const EdgeInsets.only(left: 14, right: 14),
            buttonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black26,
              ),
              color: Colors.white,
            ),
            buttonElevation: 2,
            itemHeight: 22,
            itemPadding: const EdgeInsets.only(left: 8, right: 8),
            dropdownMaxHeight: 300,
            dropdownWidth: 110,
            dropdownPadding: null,
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black26,
              ),
              color: Colors.white,
            ),
            dropdownElevation: 8,
            scrollbarRadius: const Radius.circular(40),
            scrollbarThickness: 0,
            scrollbarAlwaysShow: false,
            offset: const Offset(0, 0),
          ),
        ),
      ),
    );
  }
}