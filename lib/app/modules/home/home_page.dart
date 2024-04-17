import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/language/pt_br.dart';
import '../../core/ui/app_colors.dart';
import '../../core/ui/widgets/grid_item.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final HomeController _controller;
  const HomePage({
    super.key,
    required HomeController controller,
  }) : _controller = controller;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .1,
                  ),
                  Text(
                    '${PtBr.hello},',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    PtBr.whatsYouNeed,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: AppColors.white,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size(
                MediaQuery.sizeOf(context).width,
                -(Theme.of(context).inputDecorationTheme.hintStyle?.fontSize ??
                    16.0),
              ),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * .9,
                height: (Theme.of(context)
                            .inputDecorationTheme
                            .hintStyle
                            ?.fontSize ??
                        16.0) *
                    2,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: PtBr.search,
                    prefixIcon: Icon(Icons.search),
                  ),
                  style: GoogleFonts.poppins(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Container(
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Mais buscados',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Expanded(
                    child: Wrap(
                      spacing: 24,
                      runSpacing: 24,
                      children: [
                        GridItem(
                          filePath: 'assets/icons8-maçã-94.png',
                          label: 'Maçã',
                        ),
                        GridItem(
                          filePath: 'assets/icons8-banana-94.png',
                          label: 'Banana',
                        ),
                        GridItem(
                          filePath: 'assets/icons8-bife-94.png',
                          label: 'Carne',
                        ),
                        GridItem(
                          filePath: 'assets/icons8-tigela-de-arroz-94.png',
                          label: 'Arroz',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.star_border),
            label: 'Favoritos',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }
}
