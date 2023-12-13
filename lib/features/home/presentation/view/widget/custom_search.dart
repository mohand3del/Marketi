import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
      ),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
          border: Border.all(color: Colors.blue.shade100,width: 2,),
        ),
        child:  Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              const Icon(FontAwesomeIcons.magnifyingGlass,size: 24,),
              const SizedBox(
                width: 15,
              ),
              const Expanded(
                child: Text('What are you looking for ?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff929BAB)
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 3,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue.shade100,width: 1),
                    ),
                    child: const Icon(FontAwesomeIcons.sliders,color: Colors.blue,size: 24,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
