import 'package:flutter/widgets.dart';

class ContactVO{
  //字母键值
  String sectionKey;
  //名称
  String name;
  //头像
  String avatorUrl;
  //构造函数
  ContactVO({@required this.sectionKey,this.name,this.avatorUrl});

}

List<ContactVO> contactData = [
  new ContactVO(
    sectionKey: 'A',
    name: 'A张望',
    avatorUrl: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2056282507,3538585734&fm=26&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'A',
      name: '阿亮',
      avatorUrl: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1543148391,1621204917&fm=26&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'B',
      name: 'Bb啊',
      avatorUrl: 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3237565597,3483832202&fm=26&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'C',
      name: 'Cc',
      avatorUrl: 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1759855556,380824623&fm=26&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'C',
      name: 'C我',
      avatorUrl: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1972396625,4247024900&fm=26&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'C',
      name: 'C实现',
      avatorUrl: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1485293838,2503395834&fm=26&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'D',
      name: '大众',
      avatorUrl: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=973557091,2881028009&fm=11&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'D',
      name: '大将',
      avatorUrl: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1148545956,3361209271&fm=26&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'D',
      name: '大下',
      avatorUrl: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3219964689,105116787&fm=26&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'D',
      name: '大网',
      avatorUrl: 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2365487321,533522151&fm=26&gp=0.jpg'
  ),
  new ContactVO(
      sectionKey: 'D',
      name: '大贤子',
      avatorUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1101758591,2904200639&fm=26&gp=0.jpg'
  ),
];