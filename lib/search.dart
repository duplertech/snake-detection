import 'package:flutter/material.dart';
import 'package:snake_detection/icons.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 25.0),
            padding:
                const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFF3F3F4),
                ),
              ],
            ),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                icon: Icon(
                  CustomIcons.search,
                  color: Color(0xFF333333),
                ),
                hintText: 'Search',
                border: InputBorder.none,
              ),
              cursorColor: const Color(0xFF646464),
              style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF646464),
              ),
            ),
          ),
          const Text(
            'Result From Your Scan',
            style: TextStyle(
                color: Color(0xFF323232),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 25),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFF5F6F6),
                ),
              ],
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    )),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2014/08/15/21/40/snake-419043_960_720.jpg',
                          fit: BoxFit.fitWidth, // set your height
                          width: double.maxFinite,
                          height: 100, // and width here
                        )),
                  ),
                  const Text(
                    'Royal Ball Python',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF323232)),
                  ),
                  const Text(
                    'Venomous',
                    style: TextStyle(color: Colors.red),
                  ),
                ]),
          ),
          const Text(
            'Other Results',
            style: TextStyle(
                color: Color(0xFF323232),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          Container(
            // padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(top: 10, bottom: 25),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: 21,
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFF5F6F6),
                        ),
                      ],
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  'https://cdn.pixabay.com/photo/2014/08/15/21/40/snake-419043_960_720.jpg',
                                  fit: BoxFit.fitWidth, // set your height
                                  width: double.maxFinite,
                                  height: 100,
                                  // and width here
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Royal African Copper asdfasfadfadfadfadfasdfadfadsfadsfa',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF323232)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Venomous',
                            style: TextStyle(color: Colors.red),
                          ),
                        ]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
