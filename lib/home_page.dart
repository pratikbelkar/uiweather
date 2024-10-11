import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uiweather/theme/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Consumer<ThemeProvider>(
                builder: (context, ThemeProvider, child) {
              return Switch(
                  value: ThemeProvider.isselected,
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.white,
                  thumbColor: const WidgetStatePropertyAll(Colors.orange),
                  inactiveTrackColor: Colors.transparent,
                  thumbIcon: WidgetStatePropertyAll(
                    ThemeProvider.isselected
                        ? const Icon(Icons.nights_stay)
                        : const Icon(Icons.sunny),
                  ),
                  onChanged: (value) {
                    ThemeProvider.toggletheme();
                  });
            }),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Pune',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Consumer<ThemeProvider>(
                  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                  builder: (context, ThemeProvider, child) {
                    return Icon(
                      ThemeProvider.isselected
                          ? Icons.nights_stay
                          : Icons.sunny,
                      size: 250,
                      color: ThemeProvider.isselected
                          ? Colors.white
                          : Colors.orange,
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '25 ° C',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Good Morning',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                const Text(
                  'Noida',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 116, 113, 113)),
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  width: 50,
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.wb_twilight),
                        Text('sunrise'),
                        Text('7:00')
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: [
                        Icon(Icons.air),
                        Text('wind'),
                        Text('4m/s'),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: [
                        Icon(Icons.thermostat),
                        Text('temperature'),
                        Text('24')
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
