class AppIcons {
  const AppIcons._();

  static const _base = 'assets/images/';

  static String _fullSvgPath(String name) => '$_base$name.svg';

  static final add = _fullSvgPath('add');
  static final cross = _fullSvgPath('cross');
  static final home = _fullSvgPath('home');
  static final statistics = _fullSvgPath('statistics');
  static final arrow = _fullSvgPath('arrow');
  static final dateTime = _fullSvgPath('dateTime');
}
