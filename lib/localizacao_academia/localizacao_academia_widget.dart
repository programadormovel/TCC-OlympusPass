import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'localizacao_academia_model.dart';
export 'localizacao_academia_model.dart';

class LocalizacaoAcademiaWidget extends StatefulWidget {
  const LocalizacaoAcademiaWidget({Key? key}) : super(key: key);

  @override
  _LocalizacaoAcademiaWidgetState createState() =>
      _LocalizacaoAcademiaWidgetState();
}

class _LocalizacaoAcademiaWidgetState extends State<LocalizacaoAcademiaWidget> {
  late LocalizacaoAcademiaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocalizacaoAcademiaModel());

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
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '96yzkbgj' /* Localização da Academia */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'oa8e5015' /* Nosso Endereço */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Rubik',
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 30.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'gmeoo324' /* R. Min. Raphael de Barros Mont... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Rubik',
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    _model.apiResult54k = await MapGymRouteCall.call();
                    _shouldSetState = true;
                    if ((_model.apiResult54k?.succeeded ?? true)) {
                      if (_shouldSetState) setState(() {});
                      return;
                    }

                    if (_shouldSetState) setState(() {});
                    return;
                    if (_shouldSetState) setState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'mpm0qxio' /* Obter Rota no Mapa */,
                  ),
                  options: FFButtonOptions(
                    width: 350.0,
                    height: 70.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFFF1F4F8),
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 20.0,
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
      ),
    );
  }
}
