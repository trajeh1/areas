import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ar', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? arText = '',
    String? enText = '',
  }) =>
      [arText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // profile
  {
    'j6xmgntw': {
      'ar': 'خروج',
      'en': 'sign out',
    },
    'vy7nhsh6': {
      'ar': 'ملفي',
      'en': 'Profile',
    },
    '8l11r0d3': {
      'ar': 'ملفي',
      'en': 'Profile',
    },
  },
  // SignIn
  {
    'sza7yvw5': {
      'ar': 'تسجيل الدخول',
      'en': 'sign in',
    },
    '8bg592o2': {
      'ar': 'بريد إلكتروني',
      'en': 'E-mail',
    },
    '78c1rsrw': {
      'ar': 'الرقم السري',
      'en': 'password',
    },
    'clf37r3z': {
      'ar': 'دخول',
      'en': 'Entry',
    },
    'sg7jdqi0': {
      'ar': 'هل نسيت كلمة السر؟',
      'en': 'Forgot your password?',
    },
    'brnlamwf': {
      'ar': 'الدخول من خلال',
      'en': 'Or register with us',
    },
    '8gssw17r': {
      'ar': '  Google',
      'en': 'Continue with Google',
    },
    'm10gcqqz': {
      'ar': 'اشتراك',
      'en': 'Subscription',
    },
    'hgee9ed4': {
      'ar': 'للبدء نرجو ملء النموذج أدناه',
      'en': 'To get started please fill out the form below',
    },
    'gcq8azxf': {
      'ar': 'البريد الالكتروني',
      'en': 'E-mail',
    },
    'pna2o912': {
      'ar': 'الاسم',
      'en': 'Name',
    },
    'lgvqzgca': {
      'ar': 'الرقم السري',
      'en': 'Password',
    },
    'oqeg8qjy': {
      'ar': 'تأكيد الرقم السري',
      'en': 'Confirm the password',
    },
    'jdtdr2ig': {
      'ar': 'انشاء حساب',
      'en': 'Create an account',
    },
    '16unan47': {
      'ar': 'أو قم بالتسجيل من خلال',
      'en': 'Or register with us',
    },
    'lunv9z2t': {
      'ar': ' Google',
      'en': 'Continue with Google',
    },
    'o8x674ry': {
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
    },
  },
  // List2
  {
    'o53rjm0o': {
      'ar': 'Abernathy Reynolds',
      'en': '',
    },
    '7lf0ngt0': {
      'ar': '@username',
      'en': '',
    },
    'qk6adx9j': {
      'ar': 'Following',
      'en': '',
    },
    'w1iya3qq': {
      'ar': 'Follow',
      'en': '',
    },
    'igplah2e': {
      'ar': 'Posts',
      'en': '',
    },
    'gr54yn1m': {
      'ar': 'April 25, 9:00am',
      'en': '',
    },
    'xakob96k': {
      'ar': 'How to shoot Landscapes',
      'en': '',
    },
    'krra1zlc': {
      'ar': 'With Kaylene Huchtins',
      'en': '',
    },
    'w78arthg': {
      'ar': 'April 29, 9:00am',
      'en': '',
    },
    '8v21t71k': {
      'ar': 'Adventure Photography',
      'en': '',
    },
    'c70wa2f2': {
      'ar': 'With Kaylene Huchtins',
      'en': '',
    },
    '88zf0egf': {
      'ar': 'April 29, 9:00am',
      'en': '',
    },
    'hojac5o8': {
      'ar': 'How to photograph people',
      'en': '',
    },
    'hfpnomb5': {
      'ar': 'With Kaylene Huchtins',
      'en': '',
    },
    '9a5xvxqz': {
      'ar': 'April 29, 9:00am',
      'en': '',
    },
    '7qdhl6i0': {
      'ar': 'Portraits 101',
      'en': '',
    },
    'pgft7ha4': {
      'ar': 'With Kaylene Huchtins',
      'en': '',
    },
    'vrn38wr9': {
      'ar': 'April 29, 9:00am',
      'en': '',
    },
    '6j6092bu': {
      'ar': 'Commercial Photography',
      'en': '',
    },
    'qtfpg5g3': {
      'ar': 'With Kaylene Huchtins',
      'en': '',
    },
    'jm3q3lt2': {
      'ar': 'Activity',
      'en': '',
    },
    'vxs5sb0d': {
      'ar': '4 hour session',
      'en': '',
    },
    'e9kcun5z': {
      'ar': 'Scene Setup 101',
      'en': '',
    },
    'oot7zybh': {
      'ar': '\$500',
      'en': '',
    },
    '3c2nwvfk': {
      'ar': '2 Week Intensive',
      'en': '',
    },
    'cp0ablb1': {
      'ar': 'Adventure Photography',
      'en': '',
    },
    'alc9bc4n': {
      'ar': '\$2,000',
      'en': '',
    },
    '4xa45e5l': {
      'ar': 'Followers',
      'en': '',
    },
    'fjbdz9xc': {
      'ar': 'Albert Swiss',
      'en': '',
    },
    'mwd2mrrl': {
      'ar': 'albert@companyname.com',
      'en': '',
    },
    '8pa2rjc9': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Home02List3
  {
    'bw6o27fy': {
      'ar': 'Get Away',
      'en': '',
    },
    'xl0z4jfw': {
      'ar': 'Find some wonderful little cabins below.',
      'en': '',
    },
    'if16nvoj': {
      'ar': 'Search for your getaway...',
      'en': '',
    },
    'rlexwlhd': {
      'ar': 'Popular Bookings',
      'en': '',
    },
    'tbcpr3pz': {
      'ar': 'Mountain Lake Cabin',
      'en': '',
    },
    'vqfy5gzn': {
      'ar':
          'Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway.',
      'en': '',
    },
    '8si31jim': {
      'ar': '\$143/night',
      'en': '',
    },
    '83xqby3s': {
      'ar': 'Little Mountain House',
      'en': '',
    },
    '55n7dqen': {
      'ar':
          'Escape to the serene beauty of the mountains and enjoy a luxurious stay in our cozy mountain house, the perfect destination for your dream mountain getaway.',
      'en': '',
    },
    'pf4zcp5c': {
      'ar': '\$182/night',
      'en': '',
    },
    'lpzatkce': {
      'ar': 'Ski Cabin',
      'en': '',
    },
    'fpmkdd5c': {
      'ar':
          'Escape to the serene beauty of the mountains and enjoy a luxurious stay in our cozy mountain house, the perfect destination for your dream mountain getaway.',
      'en': '',
    },
    '5wuu90ae': {
      'ar': '\$182/night',
      'en': '',
    },
    '5twd1g2r': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Onboardin
  {
    'djcdcvce': {
      'ar': ' المحميات الوطنية واكثر',
      'en': 'National reserves and more',
    },
    'yo2ag9va': {
      'ar':
          ' المحميات الوطنية ضرورية للحفاظ  على تراثنا البيئي وثرواته المتجددة',
      'en':
          'Maintaining national reserves is essential for safeguarding our environment heritage and its renewable resources.',
    },
    '4dg2m6cg': {
      'ar': 'معلومات قيمة',
      'en': 'Valuable information',
    },
    '4mansw3q': {
      'ar': 'نوضح بعض خيارات التنزه الرائعة هنا!! الشيقة!!',
      'en': 'We outline some great hiking options here!! Interesting!!',
    },
    'e1w72rm9': {
      'ar': 'اكتشاف ثم انطلق',
      'en': 'Discover and go',
    },
    '64eb0mwx': {
      'ar': 'اطلع على بعض الأنظمة والتعليمات هنا!!',
      'en': 'See some regulations and instructions here!!',
    },
    'm5v8wxxg': {
      'ar': 'التسجيل معنا',
      'en': 'Register with us',
    },
    'cmd64iln': {
      'ar': 'تخطي التسجيل ',
      'en': 'Skip registration',
    },
    'x5vydoc8': {
      'ar': 'التسجيل',
      'en': 'Register',
    },
  },
  // protectedAreaDetails
  {
    'hp32pq53': {
      'ar': 'الوصف - وطبيعة المكان',
      'en': 'Description - The nature of the place',
    },
    'ui9v05rm': {
      'ar': 'اقرب محطة',
      'en': 'Nearest station',
    },
    '18zv3o5i': {
      'ar': 'اقرب مركز صحي',
      'en': 'The nearest health center',
    },
    'wa8c0r1u': {
      'ar': 'BBQ place',
      'en': 'Barbeque',
    },
    '06k8q0fe': {
      'ar': 'سباحة',
      'en': 'Swimming',
    },
    'w9dfyg86': {
      'ar': 'غوص',
      'en': 'Diving',
    },
    'y8x2typw': {
      'ar': 'تسلق جبال',
      'en': 'Climbing',
    },
    'vcpbjlaq': {
      'ar': 'صيد',
      'en': 'Hunting',
    },
    '0h3pqb7k': {
      'ar': 'مخيمات',
      'en': 'Camps',
    },
    'fito3mwx': {
      'ar': 'طريق ممهد',
      'en': 'Paved road',
    },
    'ja648yvc': {
      'ar': 'شبكة اتصال',
      'en': 'Connection network',
    },
    'rfy5aqho': {
      'ar': 'دورات مياه',
      'en': 'WC',
    },
    'clhip8og': {
      'ar': 'فنادق',
      'en': 'Hotels',
    },
    'q2m8qwsw': {
      'ar': 'المحميات',
      'en': 'Reserves',
    },
  },
  // ProtectedArealist
  {
    'idhqcj55': {
      'ar': 'ادناه مجموعة المحميات  المسجلة في النظام  والتي يبلغ عددها ٦٩ ',
      'en': 'Below is a group of 69 protected areas registered in the system',
    },
    'rw63yd64': {
      'ar': 'الكل',
      'en': 'All',
    },
    'l6tfp1j4': {
      'ar': 'كل المحميات',
      'en': 'All reserves',
    },
    '4lc7j8vw': {
      'ar': 'معتمد',
      'en': 'Attested',
    },
    '6gizu94m': {
      'ar': 'المحميات المعتمده',
      'en': 'Approved reserves',
    },
    'l4rpu0qc': {
      'ar': 'مقترحة',
      'en': 'Suggested',
    },
    '9u9kyj47': {
      'ar': 'المحميات المقترحه',
      'en': 'Proposed reserves',
    },
    'mxuetyh0': {
      'ar': ' المحميات',
      'en': 'Reserves',
    },
    '5gnwinta': {
      'ar': 'المحميات',
      'en': 'Reserves',
    },
  },
  // explore
  {
    'for3vep1': {
      'ar': 'استكشف جمال الطبيعة',
      'en': 'Explore the beauty of nature',
    },
    'nme2ec33': {
      'ar': 'بالصور والمعلومات',
      'en': 'With pictures and information',
    },
    'a7o3qby0': {
      'ar': 'المحميات الوطنية',
      'en': 'National reserves',
    },
    'gpmbe01r': {
      'ar': 'لحياة افضل',
      'en': 'For a better life',
    },
    '4b0qw3kf': {
      'ar': '٦٩',
      'en': '69',
    },
    'mcygsdaw': {
      'ar': 'الكائنات الحية',
      'en': 'Living things',
    },
    '5zpk61ba': {
      'ar': 'تحتاج من يرعها',
      'en': 'She needs someone to take care of her',
    },
    'wj6canx5': {
      'ar': '١٢٠',
      'en': '120',
    },
    'lcfftada': {
      'ar': 'الجزر',
      'en': 'Islands',
    },
    'w40qgzs3': {
      'ar': 'جمال الطبيعة الخلابة',
      'en': 'The beauty of stunning nature',
    },
    'uf8bmexy': {
      'ar': '٢٠٠',
      'en': '200',
    },
    'ajsr32ze': {
      'ar': 'نشاط ترفيهي ورياضي',
      'en': 'Commercial entertainment and sports activity',
    },
    'n1qg9jwx': {
      'ar': 'قريبا',
      'en': 'Coming soon',
    },
    'h1sjvqkp': {
      'ar': 'معرفت الانظمة واجب عليك',
      'en': 'Knowing the systems is your duty',
    },
    'hctduy3i': {
      'ar': '56.4k',
      'en': '56.4k',
    },
    'ltj7aezc': {
      'ar': 'انواع الانشطة',
      'en': 'Types of activities',
    },
    'q7or8zd1': {
      'ar': '٦٩',
      'en': '69',
    },
    '6dj97yok': {
      'ar': 'المحظورات',
      'en': 'Prohibitions',
    },
    '1w5cah9z': {
      'ar': '\$45.6M',
      'en': '45.6',
    },
    'gfmthrdo': {
      'ar': 'غرامات المخالفات',
      'en': 'Fines for violations',
    },
    'ir1mzedz': {
      'ar': '56.4k',
      'en': '56.4',
    },
    'ulue3fq9': {
      'ar': 'اللوائح والانظمة',
      'en': 'Regulations and regulations',
    },
    'np2eh6bm': {
      'ar': '\$45.6M',
      'en': '45.6',
    },
    'i57mb9iz': {
      'ar': 'غرامات وسائل الصيد',
      'en': 'Hunting fines',
    },
    '2ftzddpc': {
      'ar': '\$45.6M',
      'en': '45.6',
    },
    'brfkdy8c': {
      'ar': 'الغرامات',
      'en': 'Fines',
    },
    '5sva61ia': {
      'ar': ' الرئيسية',
      'en': 'Main',
    },
  },
  // Profile06
  {
    'ddw87jwi': {
      'ar': 'الحساب',
      'en': 'Account',
    },
    '1jc08w5b': {
      'ar': 'خيارات الدفع',
      'en': 'Payment options',
    },
    '6rv1di08': {
      'ar': 'الدولة',
      'en': 'Country',
    },
    'oh185ews': {
      'ar': 'اعداد التنبيهات',
      'en': 'Set up alerts',
    },
    '7bg1icm4': {
      'ar': 'تعديل الملف الشخصي',
      'en': 'Edit profile',
    },
    'ocq8v2wh': {
      'ar': 'عام',
      'en': 'In General',
    },
    'qpk2hu89': {
      'ar': 'الدعم الفني',
      'en': 'In General',
    },
    '0ix38dkt': {
      'ar': 'شروط الخدمة',
      'en': 'Terms of Service',
    },
    '77wq80gc': {
      'ar': 'ادعو أصدقاء',
      'en': 'Invite friends',
    },
    'gtyxvt3u': {
      'ar': 'خروج ',
      'en': 'Exit',
    },
    'dvz5g62y': {
      'ar': 'ملفي',
      'en': 'Profile',
    },
    'b8ro0rgn': {
      'ar': 'الصفحة الرئيسية',
      'en': 'Home',
    },
  },
  // OrganismsList
  {
    'qfndq7k1': {
      'ar': 'مجموع الكائنات الحية  المسجلة في التطبيق عدد ١٢٠ ',
      'en': 'Total number of organisms registered in the app',
    },
    'c0la7hgi': {
      'ar': 'الثدييات',
      'en': 'Mammals',
    },
    'b4zi1hrx': {
      'ar': 'الثدييات',
      'en': 'Mammals',
    },
    'v52px2wf': {
      'ar': 'الطيور',
      'en': 'Birds',
    },
    'dv0fx7ar': {
      'ar': 'الطيور',
      'en': 'Birds',
    },
    'j903eicm': {
      'ar': 'الزواحف',
      'en': 'Reptiles',
    },
    '7fa20vdy': {
      'ar': 'الزواحف',
      'en': 'Reptiles',
    },
    'gingxwas': {
      'ar': 'الكائنات الحية',
      'en': 'living thing',
    },
    '7583xkmy': {
      'ar': 'المحميات',
      'en': 'Reserves',
    },
  },
  // IslandsList
  {
    '1hrwtd6d': {
      'ar': ' مجموعة الجزر  المسجلة في التتطبيق  والتي يبلغ عددها  ١٨٠  ',
      'en':
          'The group of islands registered in the application, which number 180',
    },
    '6twwmxg2': {
      'ar': 'الخليج العربي',
      'en': 'The Arabian Gulf',
    },
    '4whntrun': {
      'ar': 'جزر الخليج العربي',
      'en': ' Arabian Gulf islands',
    },
    'mhflemqi': {
      'ar': 'البحر الاحمر',
      'en': ' Red Sea',
    },
    'dm0yfw05': {
      'ar': 'جزر البحر الاحمر',
      'en': 'Red Sea islands',
    },
    'gyqajeyb': {
      'ar': 'الجزر',
      'en': 'Islands',
    },
    '965fcy0l': {
      'ar': 'المحميات',
      'en': 'Reserves',
    },
  },
  // DetailsCopy
  {
    '8o78d20v': {
      'ar': 'اقرب محطة',
      'en': '',
    },
    '2eh0vsas': {
      'ar': 'اقرب مركز صحي',
      'en': '',
    },
    'x5i8v59z': {
      'ar': 'مخيمات',
      'en': '',
    },
    '11cb0vl1': {
      'ar': 'طريق ممهد',
      'en': '',
    },
    'v1rwx7cs': {
      'ar': 'شبكة اتصال',
      'en': '',
    },
    'do7ip8f2': {
      'ar': 'دورات مياه',
      'en': '',
    },
    '1e5illwi': {
      'ar': 'فنادق',
      'en': '',
    },
    '3fbud0lq': {
      'ar': 'شواء',
      'en': '',
    },
    '9cw9t190': {
      'ar': 'سباحة',
      'en': '',
    },
    'r3nmfgyy': {
      'ar': 'غوص',
      'en': '',
    },
    '3qjy49zf': {
      'ar': 'تسلق جبال',
      'en': '',
    },
    'tnvqiff6': {
      'ar': 'صيد',
      'en': '',
    },
    '7k8byrvg': {
      'ar': 'المحميات',
      'en': '',
    },
  },
  // Finesforviolations
  {
    'iwovzyj6': {
      'ar': 'الصيد',
      'en': '',
    },
    'hlusimfl': {
      'ar': 'نشاط مخالف',
      'en': '',
    },
    'qufd3vg7': {
      'ar': 'الاحتطاب',
      'en': '',
    },
    '9oojckz9': {
      'ar': 'النفايات',
      'en': '',
    },
    'wxv6jjbr': {
      'ar': 'الزراعة',
      'en': '',
    },
    '5ecs19m2': {
      'ar': 'الكائنات الفطرية',
      'en': '',
    },
    'npug3u7c': {
      'ar': 'إتلاف',
      'en': '',
    },
    'gsfm822x': {
      'ar': 'الرعي',
      'en': '',
    },
    '7u6h6o84': {
      'ar': 'غرامات المخالفات',
      'en': '',
    },
    'nbvieex4': {
      'ar': 'Home',
      'en': '',
    },
  },
  // finesforviolations2
  {
    '0pe7m2tk': {
      'ar': 'اقرب محطة',
      'en': '',
    },
    '9vbhu694': {
      'ar': 'اقرب مركز صحي',
      'en': '',
    },
    'tl5bjbc7': {
      'ar': 'مخيمات',
      'en': '',
    },
    'jejfq7qp': {
      'ar': 'طريق ممهد',
      'en': '',
    },
    'i7kkn49v': {
      'ar': 'شبكة اتصال',
      'en': '',
    },
    'sjf3uibx': {
      'ar': 'دورات مياه',
      'en': '',
    },
    'bb468exe': {
      'ar': 'فنادق',
      'en': '',
    },
    '8qqe0m8y': {
      'ar': 'شواء',
      'en': '',
    },
    'xr6isiy5': {
      'ar': 'سباحة',
      'en': '',
    },
    'tbr2hvxr': {
      'ar': 'غوص',
      'en': '',
    },
    'vuayvgv0': {
      'ar': 'تسلق جيال',
      'en': '',
    },
    'ic9anez5': {
      'ar': 'صيد',
      'en': '',
    },
    'j3tt1hc9': {
      'ar': 'المحميات',
      'en': '',
    },
  },
  // huntingMethodsFines
  {
    'nhfa90pv': {
      'ar': 'حمل السلاح',
      'en': '',
    },
    'dyx1cox3': {
      'ar': 'استخدام السلاح',
      'en': '',
    },
    'm1ss1n8j': {
      'ar': 'مخالافات الصيد',
      'en': '',
    },
    '9yys84cg': {
      'ar': 'Home',
      'en': '',
    },
  },
  // prohibitions
  {
    'psjkyz5r': {
      'ar': 'المحظورات',
      'en': '',
    },
    'ipx662aq': {
      'ar': 'Home',
      'en': '',
    },
  },
  // activitiesTypes
  {
    'jea6t25t': {
      'ar': 'قريبا سيتم حصر مواقع الانشطة المسموحة ',
      'en': '',
    },
    'e5o8h5ah': {
      'ar': 'Search activities...',
      'en': '',
    },
    'ckkfvtt2': {
      'ar': 'انواع الانشطة',
      'en': '',
    },
  },
  // regulation
  {
    '2bxqbnw1': {
      'ar': 'قريبا سيتم حصر مواقع الانشطة المسموحة ',
      'en': '',
    },
    '3cqhrg3v': {
      'ar': 'Search activities...',
      'en': '',
    },
    '1sw1k9sn': {
      'ar': 'انواع الانشطة',
      'en': '',
    },
  },
  // organismDetails2
  {
    'a4yw8ews': {
      'ar': 'الوصف - وطبيعة المكان',
      'en': '',
    },
    '9cnqdurp': {
      'ar': 'اماكن توجدها',
      'en': '',
    },
    'p09ss81l': {
      'ar': '؟؟',
      'en': '',
    },
    '90ouz4tc': {
      'ar': 'استيرادها',
      'en': '',
    },
    'ztvwwnxi': {
      'ar': ' تصديرها ',
      'en': '',
    },
    'bfco4a86': {
      'ar': ' تربيتها',
      'en': '',
    },
    '4w438934': {
      'ar': '  صيدها',
      'en': '',
    },
    '412sxsys': {
      'ar': 'Home',
      'en': '',
    },
  },
  // islandDetails
  {
    'p0zqtnv0': {
      'ar': '4.9 نجمة',
      'en': '',
    },
    't1iixkn0': {
      'ar': 'البحر',
      'en': '',
    },
    't720ujo8': {
      'ar': ' :ا لمنطقة ',
      'en': '',
    },
    'o2nnd2w2': {
      'ar': ' :اقرب مدينة ',
      'en': '',
    },
    'iwigvl2u': {
      'ar': ' : المساحة كم٢',
      'en': '',
    },
    'ysumbuoa': {
      'ar': ' : المسافة عن الشاطئ ميل ',
      'en': '',
    },
    'm3pac4t2': {
      'ar': 'الوصف - وطبيعة المكان',
      'en': '',
    },
    'n1260hhs': {
      'ar': 'عالي',
      'en': '',
    },
    'lcr2465w': {
      'ar': 'المد والجزر',
      'en': '',
    },
    '5fe2v5q9': {
      'ar': 'متوفر',
      'en': '',
    },
    '8giffmm0': {
      'ar': 'الغوص',
      'en': '',
    },
    'imw2qlh0': {
      'ar': '20',
      'en': '',
    },
    'owomuejf': {
      'ar': 'موقع',
      'en': '',
    },
    'wjla6z6f': {
      'ar': 'مسموح',
      'en': '',
    },
    '8fs8qir8': {
      'ar': 'السباحة',
      'en': '',
    },
    '173kpdpw': {
      'ar': 'متوسط',
      'en': '',
    },
    '4chrfopb': {
      'ar': 'الامان',
      'en': '',
    },
    'utjtmemk': {
      'ar': 'Home',
      'en': '',
    },
  },
  // testD
  {
    '93j1yu9g': {
      'ar': 'Home',
      'en': '',
    },
  },
  // invitefriends
  {
    '5vo7rd55': {
      'ar': 'Invite Friends',
      'en': '',
    },
    '9bstvkys': {
      'ar': 'Email Address',
      'en': '',
    },
    '7x288dm0': {
      'ar': 'Enter email address',
      'en': '',
    },
    'i11lxilk': {
      'ar': 'Mobile Number',
      'en': '',
    },
    'jn2jutdn': {
      'ar': 'Enter mobile number',
      'en': '',
    },
    '9wwd8ut5': {
      'ar': 'Send Invite',
      'en': '',
    },
    'wy1uyx3x': {
      'ar': 'Or share the link:',
      'en': '',
    },
    'gnohin38': {
      'ar': 'www.example.com/invite',
      'en': '',
    },
    'ctnxxwxu': {
      'ar': 'دعوة صديق',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'fqm2lt3l': {
      'ar':
          'يحتاج التطبيق إلى الوصول إلى موقعك لتقديم خدماتنا بشكل أفضل. يرجى السماح للتطبيق بالوصول إلى الموقع',
      'en':
          'This app needs access to your location to provide our services effectively.',
    },
    '16b3fab6': {
      'ar':
          'يحتاج التطبيق إلى إرسال الإشعارات لإعلامك بالتحديثات والأخبار المهمة',
      'en':
          'This app needs permission to send notifications to inform you about important updates and news. ',
    },
    'sjwr9wj3': {
      'ar':
          'يحتاج التطبيق إلى الوصول إلى معرض الصور الخاص بك لتحميل الصور ومشاركتها',
      'en':
          'his app needs access to your photo album to upload and share photos. ',
    },
    '63mndve2': {
      'ar': 'حدث خطأ أثناء محاولة تسجيل الدخول، يرجى المحاولة مرة أخرى',
      'en': 'An error has occured while trying to login, please try again.',
    },
    'q3r39pcq': {
      'ar':
          'يرجى متابعة بريدكم الالكتروني المسجل، تم ارسال تعليمات إعادة ضبط كلمة المرور لبريدكم!',
      'en': 'Password reset email sent!',
    },
    'gp8as3ij': {
      'ar': 'يرجى إدخال البريد الالكتروني',
      'en': 'Email is required',
    },
    '1lhc92ik': {
      'ar': 'رقم الجوال مطلوب، يجب أن يبدأ بـ (+)',
      'en': 'Phone number is required and has to start with (+)',
    },
    '9t0ssd4h': {
      'ar': 'كلمة المرور والتأكيد لا تتطابق',
      'en': 'Passowrd and passowrd confirmation don\'t match',
    },
    'ius6zieg': {
      'ar': 'يرجى ادخال رمز التحقق',
      'en': 'Please enter the verification code',
    },
    'pqr3ezhh': {
      'ar':
          'مر وقت طويل من آخر تسجيل دخول. يرجى تسجيل الدخول لتفادي حذف الحساب',
      'en':
          'Too long since most recent sign in. Sign in again please before deleting your account',
    },
    'fjuvpbtc': {
      'ar':
          'مر وقت طويل من آخر تسجيل دخول، يرجى تسجيل الدخول قبل تحديث البريد الالكتروني',
      'en':
          'Too long since most recent sign in. Sign in again before updating your email.',
    },
    '3m6am9e3': {
      'ar':
          'تم ارسال بريد الكتروني لتأكيد تغيير بريدكم الالكتروني، يرجى متابعة صندوق الوارد',
      'en': 'Email change confirmation email sent',
    },
    '4lyhj1mq': {
      'ar': 'البريد الالكتروني المدخل مستخدم مسبقا',
      'en': 'The email entered is already in use',
    },
    'x3dx2wxo': {
      'ar': 'اسم المستخدم أو كلمة المرور غير صحيحة، يرجى التأكد من البيانات',
      'en':
          'The supplied auth credential is incorrect, malformed or has expired',
    },
    'jdu1cays': {
      'ar': '',
      'en': '',
    },
    'vurjyh6q': {
      'ar': '',
      'en': '',
    },
    'vwkn5xjm': {
      'ar': '',
      'en': '',
    },
    '45k2smch': {
      'ar': '',
      'en': '',
    },
    'p6oip4di': {
      'ar': '',
      'en': '',
    },
    'sag15zz4': {
      'ar': '',
      'en': '',
    },
    'i0vd7a98': {
      'ar': '',
      'en': '',
    },
    '4btdo4x3': {
      'ar': '',
      'en': '',
    },
    'n4e457ji': {
      'ar': '',
      'en': '',
    },
    'bj8skril': {
      'ar': '',
      'en': '',
    },
    'utav7d2o': {
      'ar': '',
      'en': '',
    },
    '7sccmjam': {
      'ar': '',
      'en': '',
    },
    '7mr8xpp2': {
      'ar': '',
      'en': '',
    },
    'flvpdjzh': {
      'ar': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
