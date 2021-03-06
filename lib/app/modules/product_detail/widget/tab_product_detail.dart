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
      'T??i ph??n v??n gi???a oppo A55 v?? Samsung A22...nh??ng t??i ???? ch???n A22.m???t quy???t ??inh qu?? ????ng.a22 t??i x??i th???y m?????t.loa nghe r?? to.c???m ???ng nh???y.m??n h??nh s???c n??t.pin x??i nh?? con tr??u.camera ch???p s???c n??t.ram v?? b??? nh??? qu?? r???ng r???i.n??i chung ko c?? g?? ph???i ch??.c??n n??i ri??ng mua tgdd t??i y??n t??m h??n d?? bi???t c?? m???c h??n ??? ngo??i ch??t x??u.nh??ng x??i th?? trong l??ng th???y c?? gi?? tr??? h??n mua ??? ngoai ???',
      'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'
    ],
    [
      'Shahra',
      2.5,
      '1 Aug, 2019',
      'Cho h???i t??i m???i mua m??y ss A22 .... t??i theo d??i bin m??y ss a22 v?? may ss a12 c??ng l??n m???ng l?????t fb th?? m???y a22 t??i bin nhanh xu???ng h??n_ b??n a12 xu???ng 4% bin th?? m???y t??i a22 ???? xu???ng 7% bin ....cho h???i ph???i do bin l???i ko',
      'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'
    ],
    [
      'Bin',
      4.5,
      '2 Aug, 2019',
      'B???n t?? v???n b??n h??ng v???t chuy??n nghi???p v?? nhi???t t??nh th??n thi???n r???t OK ????',
      'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'
    ],
    ['Henry', 4.5, '26 Aug, 2019', 'very nice product ????', 'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'],
    ['Shahra', 3.5, '1 Aug, 2019', ' S??? gi???i thi???u cho b???n b??, ng?????i th??n (>??????)???', 'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'],
    [
      'Bin',
      1,
      '2 Aug, 2019',
      'D??n ??p l??ng kg d??n k??? l?????ng.ph???c v??? t???n t??nh.h??ng kg ch???t l?????ng.th???t v???ng.???p sau d??n 50k m?? d??n kg ra g??',
      'https://banner2.cleanpng.com/20180623/iqh/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c40ce333.6524068515297806760528.jpg'
    ],
  ];
}
