import 'package:board_pro/presenter/screens/search/enum/search_state.dart';
import 'package:board_pro/presenter/widgets/custom_progress_bar/ark_progress_bar.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class SearchBlockWidget extends StatefulWidget {
  final SearchState searchState;

  SearchBlockWidget({@required this.searchState});

  @override
  State createState() {
    return SearchBlockWidgetState();
  }
}

class SearchBlockWidgetState extends State<SearchBlockWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: TitleText(
              getStringByState(),
              textColor: AppColors.BLACK,
              size: height / 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height / 50),
          Container(
            width: height / 5,
            height: height / 5,
            child: ArcProgressBar(
              foregroundColor: AppColors.WHITE,
              searchState: widget.searchState,
              value: 0.8,
            ),
          )
        ],
      ),
    );
  }

  String getStringByState() {
    String result;
    if (widget.searchState == SearchState.NOT_SYNC) {
      result = AppLocalizations.of(context).translate("no_connection");
    } else if (widget.searchState == SearchState.SYNC) {
      result = AppLocalizations.of(context).translate("put_product");
    } else if (widget.searchState == SearchState.WEIGHTED) {
      result = AppLocalizations.of(context).translate("cool");
    }
    return result;
  }
}
