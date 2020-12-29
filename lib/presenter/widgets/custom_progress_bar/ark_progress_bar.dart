import 'package:board_pro/presenter/screens/main_screen/widgets/search_widget.dart';
import 'package:board_pro/presenter/screens/search/enum/search_state.dart';
import 'package:board_pro/presenter/screens/search/search_screen.dart';
import 'package:board_pro/presenter/widgets/custom_progress_bar/arc_progress_bar_painter.dart';
import 'package:flutter/material.dart';

class ArcProgressBar extends StatelessWidget {
  final Color foregroundColor;
  final double value;
  final SearchState searchState;

  const ArcProgressBar({
    Key key,
    @required this.foregroundColor,
    @required this.value,
    @required this.searchState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: CustomPaint(
        child: Center(
          child: SearchWidget(
            searchEnum: searchState,
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchScreen(
                            weight: 232.6,
                          )));
            },
          ),
        ),
        foregroundPainter: ArcProgressBarPainter(
          foregroundColor: foregroundColor,
          percentage: value,
          strokeWidth: 20
        ),
      ),
    );
  }
}
