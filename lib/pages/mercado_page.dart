import 'package:trabajofinal/pages/imports.dart';

class MercadoPage extends StatefulWidget {
  const MercadoPage({super.key});

  @override
  State<MercadoPage> createState() => _MercadoPageState();
}

class _MercadoPageState extends State<MercadoPage> {
  List<Mercado>? listadeMercados;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    obtenerMercados();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 157, 233, 196),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        child: ListView.builder(
          itemCount: listadeMercados?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(listadeMercados![index].name,
                      style: TextStyle(fontSize: 33)),
                  Image.network(
                    listadeMercados![index].urlFoto,
                    scale: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    listadeMercados![index].direccion,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
    //  } else {
  }

  obtenerMercados() async {
    listadeMercados = await MercadoService().getMercados();
    if (listadeMercados != null) {
      setState(() {
        isLoaded = true;

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'Mercados cargados  correctamente',
          ),
          backgroundColor: Colors.green,
        ));
      });
    } else {
      isLoaded = false;
    }
  }
}
