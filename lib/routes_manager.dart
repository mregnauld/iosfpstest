import 'package:flutter/material.dart';
import 'package:iosfpstest/cle_page.dart';
import 'package:iosfpstest/comptes_page.dart';

class RoutesManager
{

  static const comptesPage = "/comptes";
  static const clePage = "/cle";


  static Route<dynamic> genererRoute(RouteSettings settings)
  {
    switch (settings.name)
    {
      case comptesPage:
        return _getPageRouteAnimee(
            page: const ComptesPage(),
            settings: settings);
      case clePage:
        return _getPageRouteAnimee(
            page: const ClePage(),
            settings: settings);
      default:
        return _getPageRouteAnimee(
            page: const SizedBox(),
            settings: settings);
    }
  }

  static Route _getPageRouteAnimee({
    required Widget page,
    required RouteSettings settings,
    Function transition = transitionHorizontaleDefaut,
    int dureeTransition = 300})
  {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation) => page,
      transitionDuration: Duration(milliseconds: dureeTransition),
      reverseTransitionDuration: Duration(milliseconds: dureeTransition),
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child) {
        return transition(context, animation, secondaryAnimation, child);
      },
    );
  }

  static Widget transitionHorizontaleDefaut(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child)
  {
    var tweenSlide = Tween<Offset>(begin: const Offset(0.5, 0), end: Offset.zero)
        .chain(CurveTween(curve: Curves.easeOut));
    var tweenAlpha = Tween<double>(begin: 0, end: 1)
        .chain(CurveTween(curve: Curves.easeOut));
    return SlideTransition(
      position: animation.drive(tweenSlide),
      child: FadeTransition(
        opacity: animation.drive(tweenAlpha),
        child: child,
      ),
    );
  }

}