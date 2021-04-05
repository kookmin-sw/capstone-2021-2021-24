import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  Widget get_in(text1, title){
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child:
          Text(
            text1,
            style: TextStyle(fontSize: 15),),
        ),
      ],
    );



  }
  final String first =
      "본 약관은 서비스 이용자가 뉴로어소시에이츠 주식회사(이하 회사라 합니다)가 제공하는 온라인 서비스 (이하 서비스라고 합니다)에 회원으로 가입하고 이를 이용함에 있어 회사와 그 이용자의 권리, 의무 및 책임 사항을 규정함을 목적으로 합니다.";
  final String second =
      "① 이 약관은 서비스 화면이나 기타의 방법으로 이용고객에게 공지함으로써 효력을 발생합니다.\n ② 사이트는 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다";
  final String third =
      "이 약관에서 사용하는 용어의 정의는 다음과 같습니다. \n ① 회원 : 사이트와 서비스 이용계약을 체결하거나 이용자 아이디(ID)를 부여받은 개인 또는 단체를 말합니다. \n② 신청자 : 회원가입을 신청하는 개인 또는 단체를 말합니다. \n③ 아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 사이트가 승인하는 문자와 숫자의 조합을 말합니다. \n ④ 비밀번호 : 회원이 부여 받은 아이디(ID)와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다. \n ⑤ 해지 : 사이트 또는 회원이 서비스 이용계약을 취소하는 것을 말합니다.";
  final String fourth =
      "① 이용약관 하단의 동의 버튼을 누르면 이 약관에 동의하는 것으로 간주됩니다. \n ② 이용계약은 서비스 이용희망자의 이용약관 동의 후 이용 신청에 대하여 사이트가 승낙함으로써 성립합니다.";
  final String fifth =
      "① 신청자가 본 서비스를 이용하기 위해서는 사이트 소정의 가입신청 양식에서 요구하는 이용자 정보를 기록하여 제출해야 합니다. \n ② 가입신청 양식에 기재하는 모든 이용자 정보는 모두 실제 데이터인 것으로 간주됩니다. 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스의 제한을 받을 수 있습니다.";
  final String sixth =
      "① 사이트는 신청자에 대하여 제2항, 제3항의 경우를 예외로 하여 서비스 이용신청을 승낙합니다. \n ② 사이트는 다음에 해당하는 경우에 그 신청에 대한 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다. \n 가. 서비스 관련 설비에 여유가 없는 경우 \n 나. 기술상 지장이 있는 경우";
  final String seventh =
      "회원은 이용 신청시에 기재했던 회원정보가 변경되었을 경우에는, 온라인으로 수정하여야 하며 변경하지 않음으로 인하여 발생되는 모든 문제의 책임은 회원에게 있습니다.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이용약관'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text('차카니 서비스 이용약관', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text('제 1장 총칙', style: TextStyle(fontSize: 20),),

              get_in(first, '제1조 (목적)'),

              get_in(second, '제2조 (정의)'),

              get_in(third, '제3조 (용어의 정의)'),

              SizedBox(height: 20),
              Text('제 2장 총칙', style: TextStyle(fontSize: 20),),

              get_in(fourth, '제4조 (이용계약의 성립)'),

              get_in(fifth, '제5조 (이용신청)'),

              get_in(sixth, '제6조 (이용신청의 승낙)'),

              get_in(seventh, '제7조 (이용자정보의 변경)'),

              SizedBox(
                height: 20,
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
