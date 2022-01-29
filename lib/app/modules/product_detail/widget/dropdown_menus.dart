import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownMenu extends StatelessWidget {
  final Function(String)? onChanged;
  final String label;
  final Rx<dynamic> selectedValue;
  final RxList<dynamic> values;

  const DropDownMenu({
    Key? key,
    this.onChanged,
    required this.label,
    required this.selectedValue,
    required this.values,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InputDecorator(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
          labelText: label,
          labelStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kPrimaryTextColor,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryTextColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            isDense: true,
            iconSize: 24,
            elevation: 8,
            dropdownColor: kBlurBackgroundColor,
            value: selectedValue.value,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: kPrimaryTextColor,
            ),
            items: values.map((dynamic items) {
              return DropdownMenuItem(
                alignment: AlignmentDirectional.center,
                value: items,
                child: Text(items.toString(),
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kPrimaryTextColor,
                    ),
                    textAlign: TextAlign.center),
              );
            }).toList(),
            onChanged: (dynamic newValue) {
              selectedValue.value = newValue!;
            },
          ),
        ),
      ),
    );
  }
}
