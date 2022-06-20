import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import '../main.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      cameras[0],
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      // height: MediaQuery.of(context).size.height - 00,
      child: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(
              _controller,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: const [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Scan The Snake',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 8.0, right: 15),
                            child: Icon(
                              Icons.flash_off,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.image,
                            size: 33,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            size: 55,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                spreadRadius: 25,
                                blurRadius: 20,

                                // changes position of shadow
                              ),
                            ],
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: const Color(0xFF2E5043),
                              minimumSize: Size(80, 33),
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                              ),
                            ),
                            onPressed: () {},
                            child: Text('Predict'),
                          )
                        ],
                      ),
                    )
                  ]),
            );
          } else {
            // Otherwise, display a loading indicator.
            return const Center(
                child: CircularProgressIndicator(
              color: Color(0xFF2E5043),
            ));
          }
        },
      ),
    );
  }
}
