import 'package:trabajofinal/pages/imports.dart';
import 'package:trabajofinal/pages/inicio_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;
  final screens = [
    InicioPage(),
    MercadoPage(),
    MapSample(),
    CestaCompraPage(),
  ];
  final colors = const [
    Color.fromARGB(255, 55, 216, 149),
    Color.fromARGB(255, 55, 216, 149),
    Color.fromARGB(255, 55, 216, 149),
    Color.fromARGB(255, 55, 216, 149),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 214, 181),
      appBar: AppBar(
        title: const Text(
          "A COMPRAR!",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: colors[_currentIndex],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        // padding: const EdgeInsets.symmetric(horizontal: ),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: GNav(
            color: colors[_currentIndex],
            tabBackgroundColor: colors[_currentIndex],
            selectedIndex: _currentIndex,
            tabBorderRadius: 10,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            onTabChange: (index) => {
                  setState(
                    () => _currentIndex = index,
                  )
                },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "inicio",
                iconActiveColor: Colors.black,
                textColor: Colors.black,
              ),
              GButton(
                icon: Icons.shopify,
                text: "Mercado",
                iconActiveColor: Colors.black,
                textColor: Colors.black,
              ),
              GButton(
                icon: Icons.map_rounded,
                text: "Sitios",
                iconActiveColor: Colors.black,
                textColor: Colors.black,
              ),
              GButton(
                icon: Icons.list_alt,
                text: "Lista",
                iconActiveColor: Colors.black,
                textColor: Colors.black,
              ),
            ]),
      ),
    );
  }
}
