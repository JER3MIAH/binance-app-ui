// bath assets (svgs and pngs) path

const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';

//?
final String drawerIcon = 'drawerIcon'.svg;
final String globeIcon = 'globeIcon'.svg;
final String userIcon = 'userIcon'.svg;
final String topLogoLight = 'topLogoLight'.svg;
final String topLogoDark = 'topLogoDark'.svg;
final String btcUsdtIcon = 'btc-usdt-icon'.svg;
final String arrowDown = 'arrowDown'.svg;
final String chartIcon = 'chartIcon'.svg;
final String clockIcon = 'clockIcon'.svg;
final String highIcon = 'highIcon'.svg;
final String lowIcon = 'lowIcon'.svg;
final String infoIcon = 'infoIcon'.svg;
final String coloredDrawerIcon1 = 'coloredDrawerIcon1'.svg;
final String coloredDrawerIcon2 = 'coloredDrawerIcon2'.svg;
final String coloredDrawerIcon3 = 'coloredDrawerIcon3'.svg;
final String expandIcon = 'expandIcon'.svg;
final String candleChartIcon = 'candleChartIcon'.svg;
final String dividerLight = 'dividerLight'.svg;
final String dividerDark = 'dividerDark'.svg;
final String undoIcon = 'undoIcon'.svg;
final String redoIcon = 'redoIcon'.svg;

// extensions
extension ImageExtension on String {
  // png paths
  String get png => '$basePngPath$this.png';
  // svgs path
  String get svg => '$baseSvgPath$this.svg';
}
