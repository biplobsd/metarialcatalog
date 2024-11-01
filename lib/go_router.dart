import 'package:go_router/go_router.dart';

import 'screens/app_bar_n_bottom_app_bar_screen.dart';
import 'screens/badge_screen.dart';
import 'screens/bottom_sheet_screen.dart';
import 'screens/card_screen.dart';
import 'screens/dialog_screen.dart';
import 'screens/divider_screen.dart';
import 'screens/floating_action_button_screen.dart';
import 'screens/home_screens.dart';
import 'screens/list_tile_screen.dart';
import 'screens/material_buttons_screen.dart';
import 'screens/navigation_rail_bar_screen.dart';
import 'screens/navigation_bar_screen.dart';
import 'screens/progress_indicator_screen.dart';
import 'screens/segmented_button_screen.dart';
import 'screens/selection_widgets_screen.dart';
import 'screens/snack_bar_screen.dart';
import 'screens/tab_bar_screen.dart';
import 'screens/text_field_screen.dart';

final routers = [
  GoRoute(
    path: HomeScreens.path,
    builder: (context, state) => const HomeScreens(),
  ),
  GoRoute(
    path: MaterialButtonsScreen.path,
    builder: (context, state) => const MaterialButtonsScreen(),
  ),
  GoRoute(
    path: FloatingActionButtonScreen.path,
    builder: (context, state) => const FloatingActionButtonScreen(),
  ),
  GoRoute(
    path: SegmentedButtonScreen.path,
    builder: (context, state) => const SegmentedButtonScreen(),
  ),
  GoRoute(
    path: BadgeScreen.path,
    builder: (context, state) => const BadgeScreen(),
  ),
  GoRoute(
    path: ProgressIndicatorScreen.path,
    builder: (context, state) => const ProgressIndicatorScreen(),
  ),
  GoRoute(
    path: SnackBarScreen.path,
    builder: (context, state) => const SnackBarScreen(),
  ),
  GoRoute(
    path: DialogScreen.path,
    builder: (context, state) => const DialogScreen(),
  ),
  GoRoute(
    path: BottomSheetScreen.path,
    builder: (context, state) => const BottomSheetScreen(),
  ),
  GoRoute(
    path: CardScreen.path,
    builder: (context, state) => const CardScreen(),
  ),
  GoRoute(
    path: DividerScreen.path,
    builder: (context, state) => const DividerScreen(),
  ),
  GoRoute(
    path: ListTileScreen.path,
    builder: (context, state) => const ListTileScreen(),
  ),
  GoRoute(
    path: AppBarNBottomAppBarScreen.path,
    builder: (context, state) => const AppBarNBottomAppBarScreen(),
  ),
  GoRoute(
    path: NavigationBarScreen.path,
    builder: (context, state) => const NavigationBarScreen(),
  ),
  GoRoute(
    path: NavigationRailBarScreen.path,
    builder: (context, state) => const NavigationRailBarScreen(),
  ),
  GoRoute(
    path: TabBarScreen.path,
    builder: (context, state) => const TabBarScreen(),
  ),
  GoRoute(
    path: SelectionWidgetsScreen.path,
    builder: (context, state) => const SelectionWidgetsScreen(),
  ),
  GoRoute(
    path: TextFieldScreen.path,
    builder: (context, state) => const TextFieldScreen(),
  ),
];

final goRouter = GoRouter(routes: routers);
