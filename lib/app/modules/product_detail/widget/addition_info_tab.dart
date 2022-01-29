import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/constant/colors/font_constraints.dart';
import 'package:flutter/material.dart';

class AdditionInfoTab extends StatelessWidget {
  final List<List<String>> additionInfo;
  const AdditionInfoTab({
    Key? key,
    required this.additionInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Table(
          border: TableBorder.all(
            color: Colors.white,
            width: 1,
          ),
          children: [
            _buildRow(['Specification', 'Description', 'Orgin'], true),
            ...additionInfo.map((e) => _buildRow(e, false)),
          ],
        ),
      ],
    );
  }

  TableRow _buildRow(List<String> cells, [bool isHeader = false]) => TableRow(
        children: cells.map((cell) {
          TextStyle _style = isHeader ? kTextStyle2B : kTextStyle3T;
          return Container(
            color: isHeader ? kBackgroundHighLightColor : Colors.transparent,
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Text(
              cell,
              style: _style,
            )),
          );
        }).toList(),
      );
}
