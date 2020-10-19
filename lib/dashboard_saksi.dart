import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:adobe_xd/pinned.dart';

class DashboardSaksi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff263238),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 16, 20, 16),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  elevation: 0,
                  child: Text(
                    "Logout",
                    style: TextStyle(fontFamily: 'Gilroy'),
                  ),
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Color(0xFFD63031),
                ),
              ),
              SizedBox(height: 60.0,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hi, Hilmi Mubarok",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34.0,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16.0,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Selamat Datang di Aplikasi Quick Count",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontFamily: 'Gilroy Light',
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              SizedBox(height: 60.0,),
              Center(child: Gambar()),
              SizedBox(height: 60.0,),
              RaisedButton(
                padding: EdgeInsets.all(18.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                elevation: 0,
                onPressed: (){
                  Navigator.of(context).push(_createRoute());
                },
                color: Color(0xFF00B894),
                textColor: Colors.white,
                child: Container(
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    "Mulai Penghitungan",
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 20.0
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ListCalon(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(50.0, 0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

class Gambar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 0),
      child: SizedBox(
        width: 254.0,
        height: 277.0,
        child: Stack(
          children: <Widget>[
            Pinned.fromSize(
              bounds: Rect.fromLTWH(20.1, 38.0, 234.3, 234.3),
              size: Size(254.4, 276.8),
              pinLeft: true,
              pinRight: true,
              pinTop: true,
              pinBottom: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xff455a64),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(29.8, 47.7, 214.9, 214.9),
              size: Size(254.4, 276.8),
              pinLeft: true,
              pinRight: true,
              pinBottom: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xfff1ecec),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(123.3, 141.2, 28.7, 28.7),
              size: Size(254.4, 276.8),
              fixedWidth: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xff455a64),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(134.5, 53.1, 6.2, 11.6),
              size: Size(254.4, 276.8),
              fixedWidth: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff455a64),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(134.5, 246.3, 6.2, 11.6),
              size: Size(254.4, 276.8),
              pinBottom: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff455a64),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(231.1, 149.7, 6.2, 11.6),
              size: Size(254.4, 276.8),
              pinRight: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Transform.rotate(
                angle: 1.5708,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff455a64),
                  ),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(37.9, 149.7, 6.2, 11.6),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Transform.rotate(
                angle: 1.5708,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff455a64),
                  ),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(70.0, 149.6, 71.8, 36.8),
              size: Size(254.4, 276.8),
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_1xkl2s,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(122.1, 9.7, 30.3, 34.9),
              size: Size(254.4, 276.8),
              pinTop: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff455a64),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(102.3, 0.0, 69.8, 19.4),
              size: Size(254.4, 276.8),
              pinTop: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xff455a64),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(71.9, 173.2, 11.3, 12.2),
              size: Size(254.4, 276.8),
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_2sposy,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(12.2, 184.6, 7.2, 14.3),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_hnwk2w,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(13.6, 109.8, 23.6, 23.6),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xff2f2e41),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(16.0, 218.0, 10.5, 13.8),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_o51u57,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(31.9, 218.0, 10.5, 13.8),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_94t292,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(13.4, 137.6, 24.8, 52.6),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_kilz9e,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(17.8, 116.0, 17.8, 17.8),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xffffb8b8),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(22.6, 126.3, 9.3, 18.2),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_zdj40c,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(18.1, 135.8, 23.2, 39.2),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_kpcnzg,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(34.2, 136.4, 41.1, 43.0),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_pwflo8,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(15.6, 172.2, 28.6, 48.4),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_rctk3u,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 230.2, 26.5, 46.6),
              size: Size(254.4, 276.8),
              pinLeft: true,
              pinBottom: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_yeoill,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(15.9, 230.2, 26.5, 46.6),
              size: Size(254.4, 276.8),
              pinLeft: true,
              pinBottom: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_r7y0kl,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(16.4, 104.3, 9.8, 9.8),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xff2f2e41),
                ),
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(13.7, 101.6, 5.4, 9.8),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: SvgPicture.string(
                _svg_c6uvgi,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(18.6, 114.2, 16.3, 9.8),
              size: Size(254.4, 276.8),
              pinLeft: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xff2f2e41),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_1xkl2s =
    '<svg viewBox="70.0 149.6 71.8 36.8" ><path transform="translate(-380.94, -154.85)" d="M 522.6852416992188 316.620361328125 L 517.381591796875 304.4930419921875 L 450.9241027832031 341.2996520996094 L 522.6852416992188 316.620361328125 Z" fill="#455a64" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2sposy =
    '<svg viewBox="71.9 173.2 11.3 12.2" ><path transform="translate(-638.09, -353.21)" d="M 709.9561767578125 529.118896484375 L 711.8955078125 531.8341674804688 C 711.8955078125 531.8341674804688 720.8168334960938 542.3070068359375 721.2047119140625 537.264404296875 C 721.5926513671875 532.2220458984375 714.6107788085938 528.7310180664063 714.6107788085938 528.7310180664063 L 710.7318725585938 526.4037475585938 L 709.9561767578125 529.118896484375 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hnwk2w =
    '<svg viewBox="12.2 184.6 7.2 14.3" ><path transform="translate(-812.2, -362.31)" d="M 828.8436889648438 547.377685546875 L 827.2197265625 550.2925415039063 C 827.2197265625 550.2925415039063 821.5721435546875 562.8377075195313 826.2957153320313 561.0301513671875 C 831.0189819335938 559.2227172851563 831.1862182617188 551.4185180664063 831.1862182617188 551.4185180664063 L 831.629638671875 546.9168701171875 L 828.8436889648438 547.377685546875 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o51u57 =
    '<svg viewBox="16.0 218.0 10.5 13.8" ><path transform="translate(-795.79, -388.92)" d="M 822.2669677734375 607.48876953125 L 820.7154541015625 617.57373046875 L 820.7154541015625 620.6767578125 L 811.7941284179688 620.6767578125 L 811.7941284179688 616.798095703125 C 811.7941284179688 616.798095703125 811.4063110351563 609.8159790039063 812.957763671875 607.8768310546875 C 814.5091552734375 605.9375 822.2669677734375 607.48876953125 822.2669677734375 607.48876953125 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_94t292 =
    '<svg viewBox="31.9 218.0 10.5 13.8" ><path transform="translate(-751.31, -388.92)" d="M 793.68896484375 607.48876953125 L 792.137451171875 617.57373046875 L 792.137451171875 620.6767578125 L 783.2162475585938 620.6767578125 L 783.2162475585938 616.798095703125 C 783.2162475585938 616.798095703125 782.8282470703125 609.8159790039063 784.3798217773438 607.8768310546875 C 785.9312744140625 605.9375 793.68896484375 607.48876953125 793.68896484375 607.48876953125 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kilz9e =
    '<svg viewBox="13.4 137.6 24.8 52.6" ><path transform="translate(-777.1, -324.82)" d="M 813.4745483398438 462.384033203125 C 813.4745483398438 462.384033203125 816.906005859375 464.192626953125 814.5623168945313 468.3065185546875 C 812.2186279296875 472.4204711914063 798.4675903320313 514.9821166992188 798.4675903320313 514.9821166992188 L 790.5346069335938 512.72998046875 L 797.5308227539063 485.81298828125 L 801.536865234375 468.8950805664063 L 813.4745483398438 462.384033203125 Z" fill="#24e9c1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zdj40c =
    '<svg viewBox="22.6 126.3 9.3 18.2" ><path transform="translate(-779.39, -315.81)" d="M 801.9930419921875 442.0630493164063 L 803.1566772460938 460.2935180664063 L 811.3023071289063 454.4752807617188 C 811.3023071289063 454.4752807617188 808.5873413085938 443.6145935058594 809.3629760742188 442.8388366699219 L 801.9930419921875 442.0630493164063 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kpcnzg =
    '<svg viewBox="18.1 135.8 23.2 39.2" ><path transform="translate(-766.92, -323.4)" d="M 789.517578125 466.3367309570313 L 798.292724609375 459.8387451171875 C 798.292724609375 459.8387451171875 802.3178100585938 458.191162109375 803.4814453125 460.1304931640625 C 804.64501953125 462.0699462890625 810.4632568359375 490.7733764648438 807.3602294921875 496.2037353515625 C 807.3602294921875 496.2037353515625 790.6813354492188 499.6947021484375 787.1903076171875 497.7552490234375 L 785.638916015625 487.6703491210938 C 785.638916015625 487.6703491210938 783.6992797851563 481.4642333984375 786.80224609375 477.5853271484375 L 789.517578125 466.3367309570313 Z" fill="#24e9c1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pwflo8 =
    '<svg viewBox="34.2 136.4 41.1 43.0" ><path transform="translate(-689.69, -323.91)" d="M 723.92578125 461.0281982421875 C 723.92578125 461.0281982421875 727.0286865234375 458.7008056640625 729.7439575195313 462.5797119140625 C 732.4592895507813 466.45849609375 765.0413208007813 497.1012573242188 765.0413208007813 497.1012573242188 L 759.6109619140625 503.307373046875 L 738.2774047851563 485.4647216796875 L 724.701416015625 474.60400390625 L 723.92578125 461.0281982421875 Z" fill="#24e9c1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rctk3u =
    '<svg viewBox="15.6 172.2 28.6 48.4" ><path transform="translate(-764.22, -352.42)" d="M 784.2940063476563 526.5787963867188 C 784.2940063476563 526.5787963867188 803.4942626953125 522.8938598632813 805.4337158203125 525.6090087890625 L 805.8215942382813 529.8757934570313 C 805.8215942382813 529.8757934570313 810.0883178710938 538.021240234375 807.7610473632813 551.2092895507813 C 805.4337158203125 564.397216796875 806.9852294921875 572.542724609375 806.9852294921875 572.542724609375 C 806.9852294921875 572.542724609375 796.5123901367188 571.3792724609375 788.7546997070313 572.542724609375 C 780.9970092773438 573.7066040039063 779.8334350585938 572.542724609375 779.8334350585938 572.542724609375 L 784.2940063476563 526.5787963867188 Z" fill="#455a64" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yeoill =
    '<svg viewBox="0.0 230.2 26.5 46.6" ><path transform="translate(-811.75, -398.66)" d="M 826.981201171875 628.8680419921875 L 838.2299194335938 629.255859375 L 834.3511962890625 658.3470458984375 C 834.3511962890625 658.3470458984375 837.4540405273438 670.7593994140625 833.963134765625 671.535400390625 C 831.5364379882813 672.025146484375 829.06884765625 672.2847900390625 826.5933227539063 672.3109130859375 C 826.5933227539063 672.3109130859375 823.1024780273438 675.8018798828125 819.2236938476563 675.4139404296875 C 816.647705078125 675.0850830078125 814.1515502929688 674.296875 811.8538818359375 673.086669921875 C 811.8538818359375 673.086669921875 811.078125 670.7593994140625 813.7932739257813 669.98388671875 C 816.5084228515625 669.2078857421875 823.8782958984375 666.880615234375 825.4298095703125 658.735107421875 L 826.981201171875 628.8680419921875 Z" fill="#455a64" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r7y0kl =
    '<svg viewBox="15.9 230.2 26.5 46.6" ><path transform="translate(-767.27, -398.66)" d="M 798.4031982421875 628.8680419921875 L 809.6519165039063 629.255859375 L 805.7731323242188 658.3470458984375 C 805.7731323242188 658.3470458984375 808.8759765625 670.7593994140625 805.38525390625 671.535400390625 C 802.9584350585938 672.025146484375 800.490966796875 672.2847900390625 798.0153198242188 672.3109130859375 C 798.0153198242188 672.3109130859375 794.5244750976563 675.8018798828125 790.6456909179688 675.4139404296875 C 788.0697021484375 675.0850830078125 785.5736083984375 674.296875 783.2757568359375 673.086669921875 C 783.2757568359375 673.086669921875 782.5001831054688 670.7593994140625 785.2152099609375 669.98388671875 C 787.9305419921875 669.2078857421875 795.30029296875 666.880615234375 796.8516845703125 658.73486328125 L 798.4031982421875 628.8680419921875 Z" fill="#455a64" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c6uvgi =
    '<svg viewBox="13.7 101.6 5.4 9.8" ><path transform="translate(-811.28, -296.16)" d="M 826.0117797851563 402.6507873535156 C 826.0117797851563 400.1490478515625 827.9012451171875 398.051025390625 830.3895874023438 397.7900695800781 C 830.220703125 397.7724609375 830.05078125 397.7636108398438 829.8809204101563 397.7635192871094 C 827.181640625 397.7635192871094 824.99365234375 399.9517211914063 824.99365234375 402.6507873535156 C 824.99365234375 405.3500061035156 827.181640625 407.5381774902344 829.8809204101563 407.5381774902344 C 830.0508422851563 407.5379638671875 830.2208251953125 407.5291748046875 830.3899536132813 407.5115661621094 C 827.9014892578125 407.2507629394531 826.0119018554688 405.1528625488281 826.0117797851563 402.6507873535156 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
