import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/constant/colors/font_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:eshopee/app/modules/product_detail/product_detail_controller.dart';
import 'package:eshopee/app/modules/product_detail/widget/addition_info_tab.dart';
import 'package:eshopee/app/modules/product_detail/widget/description_tab.dart';
import 'package:eshopee/app/modules/product_detail/widget/review_tab.dart';
import 'package:eshopee/app/modules/product_detail/widget/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TabProductDetail extends StatefulWidget {
  final ProductDetailController controller;
  const TabProductDetail({Key? key, required this.controller}) : super(key: key);

  @override
  _TabProductDetailState createState() => _TabProductDetailState();
}

class _TabProductDetailState extends State<TabProductDetail> {
  late PageController _pageController;
  int _slectedPage = 0;
  void _changePage(int index) {
    setState(() {
      _slectedPage = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabButton(
                  selectedPage: _slectedPage,
                  title: 'Description',
                  pageIndex: 0,
                  flex: 3,
                  onTap: (pageIndex) {
                    _changePage(pageIndex);
                  },
                ),
                TabButton(
                  title: 'Additional Infomation',
                  flex: 5,
                  onTap: (pageIndex) {
                    _changePage(pageIndex);
                  },
                  pageIndex: 1,
                  selectedPage: _slectedPage,
                ),
                TabButton(
                  title: 'Review',
                  flex: 3,
                  onTap: (pageIndex) {
                    _changePage(pageIndex);
                  },
                  pageIndex: 2,
                  selectedPage: _slectedPage,
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _slectedPage = index;
                });
              },
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    DescriptionTab(),
                  ],
                ),
                AdditionInfoTab(
                  additionInfo: listAddtionInfo,
                ),
                ReviewTab(
                  listAddtionInfo: listRView,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  var listAddtionInfo = [
    ['CPU', 'AMD Athlon 3000G ', 'Socket AMD AM4'],
    ['RAM', '8GB', 'DDR4'],
    ['Storage', '1TB', 'SSD'],
    ['Battery', '3.7V', 'Li-Ion'],
    ['Weight', '0.3kg', ''],
    ['Dimensions', '0.3x0.3x0.3cm', ''],
    ['Warranty', '1 year', ''],
  ];

  var listRView = [
    [
      'Henry',
      3.5,
      '26 Aug, 2019',
      'Tôi phân vân giữa oppo A55 và Samsung A22...nhưng tôi đã chọn A22.một quyết đinh quá đúng.a22 tôi xài thấy mượt.loa nghe rõ to.cảm ứng nhạy.màn hình sắc nét.pin xài như con trâu.camera chụp sắc nét.ram và bộ nhớ quá rộng rải.nói chung ko có gì phải chê.còn nói riêng mua tgdd tôi yên tâm hơn dù biết có mắc hơn ở ngoài chút xíu.nhưng xài thì trong lòng thấy có giá trị hơn mua ở ngoai ♥',
      'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'
    ],
    [
      'Shahra',
      2.5,
      '1 Aug, 2019',
      'Cho hỏi tôi mới mua máy ss A22 .... tôi theo dõi bin máy ss a22 và may ss a12 cùng lên mạng lướt fb thì mấy a22 tôi bin nhanh xuống hơn_ bên a12 xuống 4% bin thì mấy tôi a22 đã xuống 7% bin ....cho hỏi phải do bin lỗi ko',
      'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'
    ],
    [
      'Bin',
      4.5,
      '2 Aug, 2019',
      'Bạn tư vấn bán hàng vất chuyên nghiệp và nhiệt tình thân thiện rất OK 👌',
      'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'
    ],
    ['Henry', 4.5, '26 Aug, 2019', 'very nice product 👍', 'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'],
    ['Shahra', 3.5, '1 Aug, 2019', ' Sẽ giới thiệu cho bạn bè, người thân (>‿◠)✌', 'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'],
    [
      'Bin',
      1,
      '2 Aug, 2019',
      'Dán ôp lưng kg dán kỹ lưỡng.phục vụ tận tình.hàng kg chất lượng.thất vọng.ốp sau dán 50k mà dán kg ra gì',
      'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'
    ],
  ];
}
