import 'package:board_pro/presenter/screens/updates/enum/update_state.dart';
import 'package:board_pro/presenter/screens/updates/widgets/board_soft_widget.dart';
import 'package:board_pro/presenter/screens/updates/widgets/close_button_widget.dart';
import 'package:board_pro/presenter/screens/updates/widgets/new_soft_available_widget.dart';
import 'package:board_pro/presenter/screens/updates/widgets/update_button_widget.dart';
import 'package:board_pro/presenter/widgets/text.dart';
import 'package:board_pro/resources/app_colors.dart';
import 'package:board_pro/services/app_localizations.dart';
import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  final UpdateState updateState;

  Updates({@required this.updateState});

  @override
  State createState() {
    return UpdatesState();
  }
}

class UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        color: AppColors.WHITE,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 40,
                    right: MediaQuery.of(context).size.height / 40),
                child: Container(
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: height / 60),
                      Container(
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: CloseButtonWidget(),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      Container(
                          child: Center(
                        child: BoardSoftWidget(version: "v1.2"),
                      )),
                      SizedBox(
                        height: height / 20,
                      ),
                      Container(
                        child: Expanded(
                            child: Stack(
                          children: [
                            Visibility(
                              visible:
                                  widget.updateState == UpdateState.UPDATED,
                              child: Align(
                                alignment: Alignment(0, -0.3),
                                child: TitleText(
                                  AppLocalizations.of(context)
                                      .translate("you_have"),
                                  textColor: AppColors.BLACK,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  size: height / 60,
                                ),
                              ),
                            ),
                            Visibility(
                              visible:
                                  widget.updateState != UpdateState.UPDATED,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: NewSoftAvailableWidget(
                                      version: "v1.2",
                                      description:
                                          "- Optimized battery\n- Security updates\n- New effects added: (rainbow with glitter)\n- More accurate and fast weights. Weighting time is faster for 0.2 seconds now, also a bit accuracy upgraded",
                                    ),
                                  ),
                                  Spacer(),
                                  UpdateButtonWidget(
                                    updateState: widget.updateState,
                                    function: () {},
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                      )
                    ],
                  ),
                )),
          ),
        ));
  }
}
