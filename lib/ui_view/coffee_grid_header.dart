import 'package:FirstApp/models/coffee_item.dart';

import 'package:FirstApp/ui_view/coffee_item_card.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class CoffeeGridHeader extends StatefulWidget {
  final int tableID;

  CoffeeGridHeader({key, @required this.tableID});
  @override
  _CoffeeGridHeaderState createState() => _CoffeeGridHeaderState();
}

class _CoffeeGridHeaderState extends State<CoffeeGridHeader> {
  List<CoffeeItemGROUP> lstGroup = [
    new CoffeeItemGROUP(1, "Cà phê"),
    new CoffeeItemGROUP(2, "Chà xữa"),
    new CoffeeItemGROUP(3, "Đồ ăn nhanh"),
    new CoffeeItemGROUP(4, "Sinh tố"),
    new CoffeeItemGROUP(5, "Rượu Tây"),
    new CoffeeItemGROUP(6, "Bia bọt"),
  ];
  List<CoffeeItem> lstItem = [
    CoffeeItem(
        1,
        'Trà Sữa Size L',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'M',
        idGroup: 2),
    CoffeeItem(
        2,
        'Cà phê đen nóng size ML',
        'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
        12000,
        'L',
        count: 0,
        idGroup: 1),
    CoffeeItem(
        3,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        idGroup: 1),
    CoffeeItem(
        4,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        idGroup: 1),
    CoffeeItem(
        5,
        'Cà phê đen nóng size L',
        'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
        10000,
        'SL',
        idGroup: 1),
    CoffeeItem(
        6,
        'Trà sữa trân châu đường đen size XL',
        'https://icdn.dantri.com.vn/thumb_w/640/2018/8/17/photo-2-15344660253391589797590.jpg',
        45000,
        'L',
        idGroup: 2),
    CoffeeItem(
        7,
        'Cà phê nguyên chất size M',
        'https://media-cdn.laodong.vn/Storage/NewsPortal/2019/7/24/746077/Uong-Ca-Phe.jpg',
        32000,
        'XL',
        count: 0,
        idGroup: 1),
    CoffeeItem(
        8,
        'Bạc xĩu đá',
        'https://cdn.tgdd.vn/Files/2020/03/30/1245448/3-cach-lam-bac-xiu-da-thom-ngon-vo-cung-don-gian-8.jpg',
        22000,
        'S',
        idGroup: 3),
    CoffeeItem(
        9,
        'Trà Sữa Size L',
        'https://vietblend.vn/wp-content/uploads/2018/12/tra-sua-ngon.jpg',
        45000,
        'M',
        idGroup: 2),
    CoffeeItem(
        10,
        'Cà phê đen nóng size M',
        'https://miro.medium.com/max/600/1*zdg0oNPDdrGgJlvsABosfg.jpeg',
        12000,
        'L',
        count: 0,
        idGroup: 1),
    CoffeeItem(
        11,
        'Cà phê nguyên chất size M',
        'https://nguyenchat.com.vn/wp-content/uploads/2019/02/ty-le-pha-ca-phe-phin-05-500x350.png',
        32000,
        'XL',
        count: 0,
        idGroup: 1),
    CoffeeItem(
        12,
        'Bạc xĩu nóng đặc biệt',
        'https://knowledge-phache.weebly.com/uploads/1/1/9/5/119571284/bac-xiu-3-tang_orig.jpg',
        22000,
        'S',
        count: 0,
        idGroup: 5),
    CoffeeItem(
        13,
        'Cà phê đen nóng size L',
        'https://www.highlandscoffee.com.vn/vnt_upload/product/04_2020/Bac_Xiu_Da.png',
        10000,
        'SL'),
    CoffeeItem(
        14,
        'Trà sữa trân châu đường đen size XL',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa8nLpe3sOhvr6I-ErzHM0SGDxDCNjAmJxdg&usqp=CAU',
        45000,
        'L',
        idGroup: 2),
    CoffeeItem(
        15,
        'Cà phê nguyên chất size M',
        'https://znews-photo.zadn.vn/w660/Uploaded/ngotno/2020_03_22/fe_1_.jpg',
        32000,
        'XL',
        idGroup: 3),
    CoffeeItem(
        16,
        'Bạc xĩu đậm vị cà phê',
        'https://kinhdoanhcafe.com/wp-content/uploads/2017/02/cafe-bac-xiu.jpg',
        22000,
        'S',
        idGroup: 4),
    CoffeeItem(
        17,
        'Trà Sữa Size L',
        'https://cdn.dayphache.edu.vn/wp-content/uploads/2019/10/cach-lam-tra-sua-hoa-dau-biec.jpg',
        45000,
        'M',
        idGroup: 2),
    CoffeeItem(
        18,
        'Cà phê đen nóng size M',
        'https://photo-cms-plo.zadn.vn/w653/Uploaded/2021/tmuihk/2020_04_14/ca-phe-xay-pha-phin_oghf.jpg',
        12000,
        'L',
        idGroup: 4),
    CoffeeItem(
        19,
        'Cà phê nguyên chất size M',
        'https://lh6.googleusercontent.com/t78Ow_hwAJz2V_5gFvAZsB6k_KvlBqBmMN_krTBNab8fkqtrlrKXE8PNsN-4plauHr1to4wN0439IREu8yyqso6At2q2LTlgJtacole0ftDslZyL1cQ6kWrLZbkGFLPq_q4cVxA',
        32000,
        'XL',
        idGroup: 1),
    CoffeeItem(20, 'Bạc xĩu kem',
        'https://meta.vn/Data/image/2020/05/29/bac-xiu-la-gi-3.jpg', 22000, 'S',
        idGroup: 3),
    CoffeeItem(
        21,
        'Cà phê đen nóng size L',
        'https://cdn.muabannhanh.com/asset/frontend/img/gallery/2018/09/25/5ba9a9b01280c_1537845680.jpg',
        10000,
        'SL',
        idGroup: 5),
    CoffeeItem(
        22,
        'Trà sữa trân châu đường đen size XL',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCZR1Pype7mPsLR5q3t0qORkt7dEBD7PRNuQ&usqp=CAU',
        45000,
        'L',
        idGroup: 2),
    CoffeeItem(
        23,
        'Cà phê nguyên chất size M',
        'https://cdn.24h.com.vn/upload/1-2019/images/2019-03-22/Neu-uong-tra-ca-phe-cach-nay-nguy-co-ung-thu-tang-gap-doi-1-1553232958-76-width540height344.jpg',
        32000,
        'XL',
        idGroup: 6),
    CoffeeItem(
        24,
        'Bạc xĩu nóng',
        'https://www.annacoffee.vn/image/cache/catalog/san-pham/menu-quan/bacxiu2-cr-800x800.jpg',
        22000,
        'S',
        idGroup: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tableID.toString()),
      ),
      body: coffeeGridHeader(),
    );
  }

  Widget coffeeGridHeader() {
    lstGroup
        .map((g) =>
            g.lstCoffeeItem = lstItem.where((i) => i.idGroup == g.id).toList())
        .toList();

    return new ListView.builder(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 70),
      itemCount: lstGroup.length,
      itemBuilder: (context, index) {
        return new StickyHeader(
          header: new Container(
            height: 37.0,
            color: Colors.white,
            padding: new EdgeInsets.symmetric(horizontal: 12.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              lstGroup[index].name,
              style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          content: Container(
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  lstItem.where((i) => i.idGroup == lstGroup[index].id).length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (contxt, indx) {
                // print(' index: ${lstItem[indx].name}');
                CoffeeItem cf = lstGroup[index].lstCoffeeItem[indx];
                // print(' Item : $cf');
                // return CoffeeCard(cf);
                return CoffeeItemCard(
                  key: Key(cf.id.toString()),
                  idTable: widget.tableID,
                  coffeeItem: cf,
                );
              },
            ),
          ),
        );
      },
      shrinkWrap: true,
    );
  }
}
