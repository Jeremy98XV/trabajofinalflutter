import 'package:trabajofinal/pages/imports.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _teruel =
      CameraPosition(target: LatLng(40.330094, -1.094200), zoom: 15);

  static const CameraPosition _alcampo = CameraPosition(
      target: LatLng(40.333419, -1.094395),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green[400],
        onPressed: _irAlcampo,
        label: const Text(
          'Ir a Alcampo',
        ),
        icon: const Icon(Icons.gps_fixed),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _teruel,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  Future<void> _irAlcampo() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_alcampo));
  }
}
