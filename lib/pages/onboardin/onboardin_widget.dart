import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboardin_model.dart';
export 'onboardin_model.dart';

class OnboardinWidget extends StatefulWidget {
  const OnboardinWidget({super.key});

  @override
  State<OnboardinWidget> createState() => _OnboardinWidgetState();
}

class _OnboardinWidgetState extends State<OnboardinWidget>
    with TickerProviderStateMixin {
  late OnboardinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardinModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 3200.0.ms,
            begin: const Offset(0.0, -80.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3200.0.ms,
            duration: 3200.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, -80.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });

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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  child: Container(
                    width: double.infinity,
                    height: 430.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 429.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: MasonryGridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            itemCount: 11,
                            itemBuilder: (context, index) {
                              return [
                                () => ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(16.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bW91bnRhaW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60',
                                        width: 120.0,
                                        height: 120.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bW91bnRhaW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60',
                                        width: 120.0,
                                        height: 160.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(16.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/32/600',
                                        width: 100.0,
                                        height: 0.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(16.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1454496522488-7a8e488e8606?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bW91bnRhaW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60',
                                        width: 80.0,
                                        height: 180.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1434394354979-a235cd36269d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60',
                                        width: 120.0,
                                        height: 160.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bW91bnRhaW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60',
                                        width: 120.0,
                                        height: 180.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(16.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1445363692815-ebcd599f7621?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60',
                                        width: 120.0,
                                        height: 190.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1540390769625-2fc3f8b1d50c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60',
                                        width: 120.0,
                                        height: 160.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1443632864897-14973fa006cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60',
                                        width: 120.0,
                                        height: 180.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(16.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1614597396930-cd6760b99f7c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60',
                                        width: 120.0,
                                        height: 190.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                () => ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/32/600',
                                        width: 120.0,
                                        height: 160.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                              ][index]();
                            },
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 670.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Container(
                  width: double.infinity,
                  height: 124.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: const BoxDecoration(),
                        child: SizedBox(
                          width: double.infinity,
                          height: 183.0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: PageView(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          48.0, 0.0, 48.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AutoSizeText(
                                            FFLocalizations.of(context).getText(
                                              'djcdcvce' /*  المحميات الوطنية واكثر */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Arabic',
                                                  fontSize: 35.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Arabic'),
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation1']!),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 2.0),
                                              child: AutoSizeText(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'yo2ag9va' /*  المحميات الوطنية ضرورية للحفا... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Arabic',
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Arabic'),
                                                    ),
                                                minFontSize: 12.0,
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation2']!),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          48.0, 0.0, 48.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '4dg2m6cg' /* معلومات قيمة */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displaySmallFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmallFamily),
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation3']!),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4mansw3q' /* نوضح بعض خيارات التنزه الرائعة... */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLargeFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily),
                                                      ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation4']!),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          48.0, 0.0, 48.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'e1w72rm9' /* اكتشاف ثم انطلق */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displaySmallFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmallFamily),
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation5']!),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '64eb0mwx' /* اطلع على بعض الأنظمة والتعليما... */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLargeFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily),
                                                      ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation6']!),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child:
                                      smooth_page_indicator.SmoothPageIndicator(
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) async {
                                      await _model.pageViewController!
                                          .animateToPage(
                                        i,
                                        duration: const Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    effect: smooth_page_indicator
                                        .ExpandingDotsEffect(
                                      expansionFactor: 3.0,
                                      spacing: 8.0,
                                      radius: 16.0,
                                      dotWidth: 8.0,
                                      dotHeight: 8.0,
                                      dotColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      activeDotColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      paintStyle: PaintingStyle.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('SignIn');
                          },
                          text: FFLocalizations.of(context).getText(
                            'm5v8wxxg' /* التسجيل معنا */,
                          ),
                          icon: const Icon(
                            Icons.handshake_outlined,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Arabic',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Arabic'),
                                ),
                            elevation: 4.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 6.0, 16.0, 44.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('explore');
                          },
                          text: FFLocalizations.of(context).getText(
                            'cmd64iln' /* تخطي التسجيل  */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Arabic',
                                  letterSpacing: 0.0,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Arabic'),
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                            hoverColor: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                      ),
                      FlutterFlowLanguageSelector(
                        width: 150.0,
                        height: 30.0,
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        dropdownIconColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 8.0,
                        textStyle: TextStyle(
                          fontFamily: 'Arabic',
                          color: FlutterFlowTheme.of(context).primary,
                          fontWeight: FontWeight.normal,
                          fontSize: 13.0,
                        ),
                        hideFlags: true,
                        flagSize: 24.0,
                        flagTextGap: 8.0,
                        currentLanguage:
                            FFLocalizations.of(context).languageCode,
                        languages: FFLocalizations.languages(),
                        onChanged: (lang) => setAppLanguage(context, lang),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
