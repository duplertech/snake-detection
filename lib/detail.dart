import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          title: const Text(
            'Snake Detector',
            style: TextStyle(
              color: Color(0xFF2E5043),
              fontWeight: FontWeight.bold,
            ),
          ),
          automaticallyImplyLeading: false),
      body: Card(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: (ListView(
              children: [
                Row(
                  children: [
                    InkWell(
                        splashColor: const Color.fromARGB(137, 163, 207, 191),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFF323232),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        }),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'About Snake',
                      style: TextStyle(
                          color: Color(0xFF323232),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        'Royal Black Cobra',
                        style: TextStyle(
                            color: Color(0xFF1E1E1E),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: const Color(0xFF2E5043),
                        minimumSize: const Size(80, 36),
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Find Rescuer'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
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
                        height: 200, // and width here
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Venomous',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                      color: Color(0xFF323232),
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: const [
                    Text(
                      'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
                      style: TextStyle(
                          color: Color(0xFF646464),
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Where to find Anti Venom?',
                  style: TextStyle(
                      color: Color(0xFF323232),
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                                child: Text(
                              'Anti Venom',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '9812121212',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                                child: Text(
                              'Anti Venom',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '9812121212',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                                child: Text(
                              'Anti Venom Is Available In This Place Lumbini Provicial ',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '9812121212',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                                child: Text(
                              'Anti Venom',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '9812121212',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                                child: Text(
                              'Anti Venom',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '9812121212',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                                child: Text(
                              'Anti Venom',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '9812121212',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                                child: Text(
                              'Anti Venom',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '9812121212',
                              style: TextStyle(
                                  color: Color(0xFF646464),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ))),
      ),
    );
  }
}
