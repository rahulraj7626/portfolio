import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:performance/performance.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({Key? key}) : super(key: key);

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
//  late PdfControllerPinch _pdfController;
  final pdfController = PdfController(
    document: PdfDocument.openAsset("assets/images/cv.pdf"),
  );

  @override
  void initState() {
    // _pdfController = PdfControllerPinch(
    //   document: PdfDocument.openAsset("assets/images/cv.pdf"),
    //   initialPage: 0,
    // );
    super.initState();
  }

  @override
  void dispose() {
    // _pdfController.dispose();
    pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PdfView(
      controller: pdfController,
    )

        //  PdfViewPinch(
        //   documentLoader: const Center(child: CircularProgressIndicator()),
        //   pageLoader: const Center(child: CircularProgressIndicator()),
        //   controller: _pdfController,
        // ),
        );
  }
}
