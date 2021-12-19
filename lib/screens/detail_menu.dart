import 'package:coba_lagi/consttants.dart';
import 'package:flutter/material.dart';

class DetailMenu extends StatelessWidget {
  const DetailMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: size.height * .1),
                        MenuInfo()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 100, horizontal: 50),
                        margin: EdgeInsets.only(bottom: 16),
                        width: size.width - 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 20,
                              color: Color(0xFFD3D3D3).withOpacity(.84),
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Menu 1: Telur Rebus & Roti\n",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "Rendah kalori, Tinggi nutrisi dan serat \n",
                                    style: TextStyle(color: kLightBlackColor),
                                  ),
                                  TextSpan(
                                    text:
                                        "Dapat meningkatkan metabolisme tubuh \n",
                                    style: TextStyle(color: kLightBlackColor),
                                  ),
                                  TextSpan(
                                    text: "Membuat tubuh kenyang lebih lama \n",
                                    style: TextStyle(color: kLightBlackColor),
                                  ),
                                  TextSpan(
                                    text:
                                        "Dikonsumsi minimal satu kali sehari \n",
                                    style: TextStyle(color: kLightBlackColor),
                                  ),
                                  TextSpan(
                                    text: "Kaya akan Protein \n",
                                    style: TextStyle(color: kLightBlackColor),
                                  ),
                                  TextSpan(
                                    text: "Mencegah obesitas \n",
                                    style: TextStyle(color: kLightBlackColor),
                                  ),
                                  TextSpan(
                                    text: "Baik untuk pencernaan \n",
                                    style: TextStyle(color: kLightBlackColor),
                                  ),
                                  TextSpan(
                                    text:
                                        "Roti Gandum mengandung 190 kalori \n",
                                    style: TextStyle(color: kLightBlackColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  const MenuInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Telur&",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "Gandum",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Berikut ini adalah kandungan yang terdapat pada telur rebus & roti gandum yang sangat baik untuk kesehatan tubuh khususnya diet.",
                        maxLines: 7,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            )
          ],
        )),
        Image.asset(
          "assets/images/rotigandum1.png",
          height: 138,
        ),
      ],
    );
  }
}
