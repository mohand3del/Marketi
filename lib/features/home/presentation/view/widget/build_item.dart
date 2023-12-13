import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildItem extends StatelessWidget {
  const BuildItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shadowColor: const Color(0xffD9E6FF),
      child: Container(
        height: 144,
        width: 160,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Card(
                      elevation: 0,
                      child: Container(
                        height: 96,
                        width: 152,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffD9E6FF),
                        ),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://www.costco.co.uk/medias/sys_master/images/h37/hc3/119433914056734.jpg'),
                          )
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 24,
                        decoration: const BoxDecoration(
                          color: Color(0xffB2CCFF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.elliptical(100, 50),
                          ),
                        ),
                        child: const Text('15% OFF',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3F80FF),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.white,
                        child: Icon(FontAwesomeIcons.heart,size: 15,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Row(
                children: [
                  Text('499 LE',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Icon(FontAwesomeIcons.star,size: 14,),
                  SizedBox(
                    width: 2,
                  ),
                  Text('4.9',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),                  child: Text('Smart Watch',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
