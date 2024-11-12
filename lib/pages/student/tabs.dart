import 'package:flutter/material.dart';
import 'package:mybeautyiq/helpers/helper_colors.dart';
import 'package:mybeautyiq/pages/educator/content_complete_profile_2.dart';
import 'package:mybeautyiq/pages/educator/content_profile.dart';
import 'package:mybeautyiq/pages/student/content_complete_profile.dart';
import 'package:mybeautyiq/pages/student/content_complete_profile_1.dart';
import 'package:mybeautyiq/pages/student/content_profile.dart';
import 'package:mybeautyiq/pages/student/welcome.dart';
import 'package:provider/provider.dart';

class TabsPageStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NavegacionModel(),
      child: Scaffold(
        body: _Paginas(),
        bottomNavigationBar: _Navegacion(),
      ),
    );
  }
}

class _Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return BottomNavigationBar(
        currentIndex: navegacionModel.paginaActual,
        onTap: (i) => navegacionModel.paginaActual = i,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: PersonalColors.tabInactive),
              activeIcon: Icon(Icons.home, color: PersonalColors.tabActive),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: PersonalColors.tabInactive),
              activeIcon: Icon(Icons.search, color: PersonalColors.tabActive),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on, color: PersonalColors.tabInactive),
              activeIcon:
                  Icon(Icons.location_on, color: PersonalColors.tabActive),
              label: ''),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.calendar_month, color: PersonalColors.tabInactive),
              activeIcon:
                  Icon(Icons.calendar_month, color: PersonalColors.tabActive),
              label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: PersonalColors.tabInactive),
            activeIcon: Icon(Icons.person, color: PersonalColors.tabActive),
            label: '',
          ),
        ]);
  }
}

class _Paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return PageView(
      //physics: BouncingScrollPhysics(),
      controller: navegacionModel.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        CompleteProfileStudent(),
        Container(
          color: PersonalColors.beautyColor,
        ),
        Container(
          color: PersonalColors.beautyColor,
        ),
        Container(
          color: PersonalColors.beautyColor,
        ),
        const ProfileStudent()
      ],
    );
  }
}

//singlenton
class _NavegacionModel with ChangeNotifier {
  int _paginaActual = 0;
  final PageController _pageController = PageController();

  int get paginaActual => _paginaActual;

  set paginaActual(int valor) {
    _paginaActual = valor;
    _pageController.animateToPage(valor,
        duration: const Duration(milliseconds: 1), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => _pageController;
}
