import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/constant/colors/font_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewTab extends StatelessWidget {
  final List<List<Object>> listAddtionInfo;
  const ReviewTab({Key? key, required this.listAddtionInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildReview(listAddtionInfo);
  }

  ListView _buildReview(List<List<Object>> listRView) {
    return ListView.separated(
      separatorBuilder: (_, __) => const Divider(
        height: 8,
        color: Colors.white,
        thickness: 2,
      ),
      itemCount: listRView.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: SizeHelper.getWidth(context, 250),
                  height: SizeHelper.getWidth(context, 50),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg',
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        listRView[index][0].toString(),
                        style: kTextStyle2B,
                      ),
                    ),
                    subtitle: RatingBar.builder(
                      itemSize: SizeHelper.getWidth(context, 15),
                      initialRating: double.parse(listRView[index][1].toString()),
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: kBackgroundStarsColor,
                      ),
                      onRatingUpdate: (rating) {},
                      ignoreGestures: true,
                    ),
                  ),
                ),
                Text(
                  listRView[index][2].toString(),
                  style: kTextStyle3T,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                listRView[index][3].toString(),
                style: kTextStyle2T,
              ),
            ),
          ],
        );
      },
    );
  }
}
