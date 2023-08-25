import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'requisicao_s_m_s_model.dart';
export 'requisicao_s_m_s_model.dart';

class RequisicaoSMSWidget extends StatefulWidget {
  const RequisicaoSMSWidget({Key? key}) : super(key: key);

  @override
  _RequisicaoSMSWidgetState createState() => _RequisicaoSMSWidgetState();
}

class _RequisicaoSMSWidgetState extends State<RequisicaoSMSWidget> {
  late RequisicaoSMSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequisicaoSMSModel());

    _model.textController ??= TextEditingController(text: currentPhoneNumber);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitWave(
                  color: Color(0xFF09AD35),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<UsersRecord> requisicaoSMSUsersRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final requisicaoSMSUsersRecord = requisicaoSMSUsersRecordList.isNotEmpty
            ? requisicaoSMSUsersRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFF09AD35),
            automaticallyImplyLeading: true,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xEB000000),
                size: 35.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'kb5mc5fa' /* Alterar Senha */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Rubik',
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x230E151B),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'ntk0ydkm' /* Insira seu email abaixo e você... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Rubik',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 50.0, 16.0, 50.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => TextFormField(
                                controller: _model.textController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'rhnnu684' /* Seu Telefone */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.w600,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'ntoz255x' /* Nós enviaremos um código SMS p... */,
                                  ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30.0,
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Rubik',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                keyboardType: TextInputType.emailAddress,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 25.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (isiOS) {
                                        await launchUrl(Uri.parse(
                                            "sms:${currentPhoneNumber}&body=${Uri.encodeComponent('Seu código SMS é: 1308')}"));
                                      } else {
                                        await launchUrl(Uri(
                                          scheme: 'sms',
                                          path: currentPhoneNumber,
                                          queryParameters: <String, String>{
                                            'body': 'Seu código SMS é: 1308',
                                          },
                                        ));
                                      }

                                      context.pushNamed(
                                        'CodigodeConfirmacaoSMS',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.leftToRight,
                                            duration:
                                                Duration(milliseconds: 300),
                                          ),
                                        },
                                      );

                                      context.pop();
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'buy4juws' /* Enviar SMS */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 280.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF09AD35),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Rubik',
                                            fontSize: 20.0,
                                          ),
                                      elevation: 5.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                  ),
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
            ),
          ),
        );
      },
    );
  }
}
