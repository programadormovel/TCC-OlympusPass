import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sobre_nos_model.dart';
export 'sobre_nos_model.dart';

class SobreNosWidget extends StatefulWidget {
  const SobreNosWidget({Key? key}) : super(key: key);

  @override
  _SobreNosWidgetState createState() => _SobreNosWidgetState();
}

class _SobreNosWidgetState extends State<SobreNosWidget> {
  late SobreNosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SobreNosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF09AD35),
        appBar: AppBar(
          backgroundColor: Color(0xFF09AD35),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'nde85bnl' /* Sobre Nós */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '5r1yb7yb' /* Olympus Pass */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Rubik',
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(44.0, 20.0, 44.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'sp73mhnh' /* Esse código é necessário para ... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Rubik',
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 200.0),
              child: FFButtonWidget(
                onPressed: () async {
                  // TelaInicialAfterConfirmation

                  context.pushNamed(
                    'MinhaConta',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 600),
                      ),
                    },
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'gh0uhn54' /* Voltar Para Menu */,
                ),
                options: FFButtonOptions(
                  width: 300.0,
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFFF1F4F8),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 15.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
