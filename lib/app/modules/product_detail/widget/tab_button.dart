import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final Function(int) onTap;
  final int flex;
  final String title;
  final int selectedPage;
  final int pageIndex;

  const TabButton({Key? key, required this.onTap, required this.flex, required this.title, required this.selectedPage, required this.pageIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: () => onTap(pageIndex),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 16, color: kPrimaryTextColor),
                ),
              ),
              pageIndex == selectedPage
                  ? const SizedBox(
                      width: double.infinity,
                      child: Divider(
                        height: 0,
                        thickness: 2,
                        color: kBackgroundHighLightColor,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
