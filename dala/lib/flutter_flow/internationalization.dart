import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['sw', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String swText = '',
    String enText = '',
  }) =>
      [swText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LanguagePage
  {
    'cazf1rou': {
      'sw': 'Choose Language',
      'en': 'Chagua Lugha',
    },
    'jgjdv1gi': {
      'sw': 'SAWA',
      'en': 'OK',
    },
    '1130ppfa': {
      'sw': 'Nyumbani',
      'en': 'Home',
    },
  },
  // SignUpPage
  {
    '8enewza1': {
      'sw': 'Fungua Akaunti',
      'en': 'Sign Up',
    },
    'p8uthdz0': {
      'sw': 'Barua Pepe',
      'en': 'Email',
    },
    '55p0fxjp': {
      'sw': 'Weka namba ya simu apa...',
      'en': 'Enter your email here ...',
    },
    'm36y5j6a': {
      'sw': 'Namba ya Simu',
      'en': 'Phone Number',
    },
    'h0uaoz7i': {
      'sw': 'Weka namba ya simu apa...',
      'en': 'Enter your phone number here ...',
    },
    'c0j6tyug': {
      'sw': 'Nywila',
      'en': 'Passwords',
    },
    'mcq0nrg2': {
      'sw': 'Weka barua pepe apa...',
      'en': 'Enter your email here ...',
    },
    'npsyi6id': {
      'sw': 'Rudia  Nywila',
      'en': 'Confirm Password',
    },
    'jxcq83tx': {
      'sw': 'Weka barua pepe apa...',
      'en': 'Enter your email here ...',
    },
    'syiv5iui': {
      'sw': 'Vigezo na Masharti',
      'en': 'Terms and Conditions.',
    },
    '5xzqisfs': {
      'sw': 'Soma vigezo na masharti',
      'en': 'Read Terms and Conditions',
    },
    'jd9htreb': {
      'sw': 'Tengeneza Akaunti',
      'en': 'Create an Account',
    },
    'lbcbwvbd': {
      'sw': 'Tengeneza Akaunti',
      'en': 'Create an Account',
    },
    'vwnitu58': {
      'sw': 'Teyari una akaunti?',
      'en': 'Already have an account?',
    },
    'tuodibne': {
      'sw': 'Ingia ',
      'en': 'Login',
    },
    't5m4mw7p': {
      'sw': 'Nyumbani',
      'en': 'Home',
    },
  },
  // ChangePassPage
  {
    '5kyjbabx': {
      'sw': 'Nyuma',
      'en': 'Back',
    },
    'xwb12mey': {
      'sw': 'Umesahau Nywila',
      'en': 'Forgot Password',
    },
    'j1kvysmc': {
      'sw':
          'Tutakutumia link kwenye barua pepe yako ili kubadili nywila, tafadhari ingiza barua pepe yako uliotumia kufungulia akaunti.',
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
    },
    '6doh0ro9': {
      'sw': 'Barua pepe yako...',
      'en': 'Your email address...',
    },
    'lalay1ql': {
      'sw': '',
      'en': '',
    },
    'dx70e7jw': {
      'sw': 'Tuma Link',
      'en': 'Send Link',
    },
    'u2u1i1j8': {
      'sw': 'Home',
      'en': '',
    },
  },
  // SignInPage
  {
    'b6ndx1rv': {
      'sw': 'Ingia ',
      'en': 'Log In',
    },
    'fugnx9wl': {
      'sw': 'Email Address',
      'en': 'Email',
    },
    'dl0grtgw': {
      'sw': '',
      'en': '',
    },
    'ei6cxp8i': {
      'sw': 'Password',
      'en': 'Passwords',
    },
    'e87ay7x4': {
      'sw': '',
      'en': '',
    },
    'fu4jh0ht': {
      'sw': 'Ingia ',
      'en': 'Log In',
    },
    'oiob5kob': {
      'sw': 'Umesahau Nywila?',
      'en': ' Forgot Password?',
    },
    '5egfwis8': {
      'sw': 'Huna akaunti?',
      'en': 'Don\'t have an account?',
    },
    'cd5fvruz': {
      'sw': 'Jiunge',
      'en': 'Register',
    },
    'l5ja2apy': {
      'sw': 'Home',
      'en': '',
    },
  },
  // StartPage
  {
    'y3eqks23': {
      'sw': 'Jenga Nyumba',
      'en': 'Build a House',
    },
    'w0kgn48g': {
      'sw':
          'Ukilipa 12.5% ya gharama ya ujenzi wa nyumba, unajengewa kuanzia msingi mpaka finnishing alafu utalipa kiasi kilichobaki mpaka kwa miaka 20.',
      'en':
          'If you pay 12.5% of the cost of building of a house, it is built from foundation to finnishing and then you will pay the remaining amount for up to 20 years.',
    },
    '5cdkstic': {
      'sw': 'Fungua',
      'en': 'Open',
    },
    'l9qlefr1': {
      'sw': 'Karabati Nyumba',
      'en': 'House Renovation',
    },
    'mtmusb1r': {
      'sw':
          'Fanya ukarabati, ongeza vyumba, badili mwonekano wa nyumba, na malizia ujenzi.\nKwa ukarabati unao gharimu 20 mil mpaka 1 bil, ukilipa 1 mil, tunakufanyia ukarabati alafu gharama iliyobaki utalipa kwa miaka 20.',
      'en':
          'Renovate, add rooms, change house appearance, and finish construction. For repairs that cost 20 mil to 1 bil, we do renovation for you and then the remain cost you will pay for 20 years.',
    },
    'fc6shd4g': {
      'sw': 'Fungua',
      'en': 'Open',
    },
    'sufh60jx': {
      'sw': 'Home',
      'en': '',
    },
  },
  // HomePage
  {
    'u5znnfcm': {
      'sw': 'Huduma ya Ujenzi',
      'en': 'Construction Service',
    },
    '11jcdddy': {
      'sw': 'Huduma ya Ukarabati',
      'en': 'Renovation Service',
    },
    '2oqza74j': {
      'sw': 'Vigezo na Masharti',
      'en': 'Terms and Conditions',
    },
    '56nf56eh': {
      'sw': 'Badili Lugha',
      'en': 'Change Language',
    },
    'twr5gdub': {
      'sw': 'Kadi Yangu',
      'en': 'My Card',
    },
    '07o8t9jj': {
      'sw': 'Taarifa za Kadi',
      'en': 'Card InfoInformation ',
    },
    '7w2heh2d': {
      'sw': 'Sign Out',
      'en': 'Sign Out',
    },
    'oaj9qn5v': {
      'sw': 'Dala',
      'en': 'Dala',
    },
    'sdcj697o': {
      'sw': 'Nyumba za bei 20mil - 50 mil',
      'en': 'Housing costs 20mil - 50 mil',
    },
    'qns3u34s': {
      'sw': 'Fungua',
      'en': 'View',
    },
    'osuov6ka': {
      'sw': 'BEI:',
      'en': 'COST:',
    },
    'uxxzcv6c': {
      'sw': 'LIPA',
      'en': 'PAY',
    },
    'as5i6c7a': {
      'sw': 'Fungua',
      'en': 'View',
    },
    '4ohutev4': {
      'sw': 'Nyumba za bei 51mil - 100 mil',
      'en': 'Housing costs 51mil - 100 mil',
    },
    'jml0h5qk': {
      'sw': 'Fungua',
      'en': 'View',
    },
    '50al009j': {
      'sw': 'BEI:',
      'en': 'COST:',
    },
    'l4qo96qw': {
      'sw': 'LIPA',
      'en': 'PAY',
    },
    'otjuwbw1': {
      'sw': 'Nyumba za bei 101mil - 1 bil',
      'en': 'Housing costs 101mil - 1 bil',
    },
    'keqm8im7': {
      'sw': 'Fungua',
      'en': 'View',
    },
    'yrqqb9r7': {
      'sw': 'BEI:',
      'en': 'COST:',
    },
    'aqas41cm': {
      'sw': 'LIPA',
      'en': 'PAY',
    },
    'egy9wt9i': {
      'sw': 'Tukutengenezee michoro na\n bajeti kwaajili yako?',
      'en': 'Should we create a house \ndesign and budget for you?',
    },
    'nnrpk745': {
      'sw': 'Agiza',
      'en': 'Request',
    },
    'ys612suo': {
      'sw': 'Nyumbani',
      'en': 'Home',
    },
  },
  // MyHome
  {
    'i7yxlppb': {
      'sw': 'Tukutengenezee michoro \nbajeti kwaajili yako?',
      'en': 'Should we create a house \ndesign and budget for you?',
    },
    'rvv3aqq9': {
      'sw': 'Agiza',
      'en': 'Request',
    },
    'euojpbe5': {
      'sw': 'BEI :',
      'en': 'COST :',
    },
    'cnpvu8zn': {
      'sw': 'LIPA :',
      'en': 'PAY :',
    },
    '229dck26': {
      'sw': 'Nyumba yangu',
      'en': 'My House',
    },
    '3zgd4ykj': {
      'sw': 'Huduma ya Ujenzi',
      'en': 'Construction Service',
    },
    'nnni833j': {
      'sw': 'Huduma ya Ukarabati',
      'en': 'Renovation Service',
    },
    'j78576xn': {
      'sw': 'Vigezo na Masharti',
      'en': 'Terms and Conditions',
    },
    'bw7jq0mf': {
      'sw': 'Badili Lugha',
      'en': 'Change Language',
    },
    'wyowrz2m': {
      'sw': 'Kadi Yangu',
      'en': 'My Card',
    },
    'tvkwbino': {
      'sw': 'Taarifa za Kadi',
      'en': 'Card InfoInformation ',
    },
    'hyergxpe': {
      'sw': 'Sign Out',
      'en': 'Sign Out',
    },
    'd6ifbl02': {
      'sw': 'Michoro Yangu',
      'en': 'My Designs',
    },
  },
  // MyAccountPage
  {
    'hk34cpo3': {
      'sw': 'Karibu,',
      'en': 'Welcome,',
    },
    'h2ug4ujs': {
      'sw': '\"Dala, Kila Mtu Kwake.\"',
      'en': '\"Dala, Kila Mtu Kwake.\"',
    },
    '1tcdj4g2': {
      'sw': 'LIPA',
      'en': 'PAY',
    },
    'xmhmdnf9': {
      'sw': 'DALA ',
      'en': 'DALA',
    },
    'stge8mmn': {
      'sw': 'Lipa 15% ya gharama',
      'en': 'Pay 15% of the  cost',
    },
    'fbs18sbj': {
      'sw': 'Huduma ya Haraka',
      'en': 'Quick Service',
    },
    'q1b6mw0t': {
      'sw': 'Riba ya Mkopo',
      'en': 'Loan Interest',
    },
    'exbqi9hq': {
      'sw': 'Anza Ujenzi',
      'en': 'Start Building',
    },
    'b7x1v9n2': {
      'sw': 'Nyumba',
      'en': 'House',
    },
    'm58o9o9i': {
      'sw': 'Histolia ya Miamala',
      'en': 'Transaction History',
    },
    'p3jg588p': {
      'sw': 'Dala Pay ',
      'en': 'Dala Pay ',
    },
    '0oevanhm': {
      'sw': 'rejesha',
      'en': 'refund',
    },
    '0qjcmlqa': {
      'sw': 'inasubiri',
      'en': 'pending',
    },
    'o1xs070m': {
      'sw': 'Akaunti Yangu',
      'en': 'My Account',
    },
    'jl9qtum4': {
      'sw': 'Huduma ya Ujenzi',
      'en': 'Construction Service',
    },
    'l3auocmc': {
      'sw': 'Huduma ya Ukarabati',
      'en': 'Renovation Service',
    },
    'vk0reddq': {
      'sw': 'Vigezo na Masharti',
      'en': 'Terms and Conditions',
    },
    '47tcxheg': {
      'sw': 'Badili Lugha',
      'en': 'Change Language',
    },
    '0ftv93yh': {
      'sw': 'Kadi Yangu',
      'en': 'My Card',
    },
    'ilft10dg': {
      'sw': 'Taarifa za Kadi',
      'en': 'Card InfoInformation ',
    },
    'p79x56it': {
      'sw': 'Sign Out',
      'en': 'Sign Out',
    },
    'zqgj7kro': {
      'sw': 'Akaunti',
      'en': 'My Accounti',
    },
  },
  // HousePage
  {
    'd96187xj': {
      'sw': 'Nyumba',
      'en': 'House',
    },
    '9capem0p': {
      'sw': 'Kiwango: Chini',
      'en': 'Sub-Standard',
    },
    'blwzie6g': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    'wjrlaiuz': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    '9274fmss': {
      'sw': 'Kiwango: Kati',
      'en': 'Standard',
    },
    'tw496qve': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    '8r09udth': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    '1npucdxy': {
      'sw': 'Kiwango: Juu',
      'en': 'Premium',
    },
    'b71a1cob': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    'ru94ae7j': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    'skmk7lnh': {
      'sw': 'Huduma',
      'en': 'Service',
    },
    'o3vf80t0': {
      'sw':
          'Fahamu zaidi kwanini ulipe asilimia 12.5 tu ya gharama ya nyumba na kujengewa nyumba yote.',
      'en':
          'Find out more about why you pay only 12.5 percent of the cost of housing and we buid for you the whole house.',
    },
    'uzen24k8': {
      'sw': 'Fungua',
      'en': 'More',
    },
    'jfyu495a': {
      'sw': 'Taarifa na Maelezo',
      'en': 'Information and Details',
    },
    '0kpv3cz0': {
      'sw': 'Vigezo na Masharti',
      'en': 'Terms and Conditions',
    },
    'hjw8ityb': {
      'sw': 'Vigezo na masharti ya kupata huduma hiii. ',
      'en': 'Terms and conditions for access to this service.',
    },
    'h9obozam': {
      'sw': 'Fungua',
      'en': 'Open',
    },
    'nj3s6sh1': {
      'sw': '\"Kila Mtu Kwake.\"',
      'en': '\"Kila Mtu Kwake.\"',
    },
    '6ag8ad9t': {
      'sw': 'CHAGUA NYUMBA',
      'en': 'SELECT HOUSE ',
    },
    'mx0wk3cn': {
      'sw': 'BADILI ',
      'en': 'UPDATE ',
    },
    '9uglqlql': {
      'sw': 'Nyumbani',
      'en': 'Home',
    },
  },
  // PlanHousePage
  {
    'xaqfrpqb': {
      'sw': 'Nyumba',
      'en': 'House',
    },
    'bi5j7eb1': {
      'sw': 'Kiwango: Chini',
      'en': 'Sub-Standard',
    },
    'ebdiuqyo': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    'qau94hum': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    'ed2soped': {
      'sw': 'Kiwango: Kati',
      'en': 'Standard',
    },
    '5kzmms54': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    's1cjtqoi': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    '5r2hpurv': {
      'sw': 'Kiwango: Juu',
      'en': 'Premium',
    },
    'te2dafh0': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    '1vetl270': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    'z3tcst4f': {
      'sw': 'Huduma ',
      'en': 'Service',
    },
    'h3sv85lg': {
      'sw':
          'Fahamu zaidi kwanini ulipe asilimia 12.5 tu ya gharama ya nyumba na kujengewa nyumba yote.',
      'en':
          'Find out more about why you pay only 12.5 percent of the cost of housing and we buid for you the whole house.',
    },
    '6hlwy06j': {
      'sw': 'Fungua',
      'en': 'More',
    },
    'f56laloj': {
      'sw': 'Taarifa na Maelezo',
      'en': 'Information and Details',
    },
    '1bcy5490': {
      'sw': 'Vigezo na Masharti',
      'en': 'Terms and Conditions',
    },
    'va2ocofa': {
      'sw': 'Vigezo na masharti ya kupata huduma hiii. ',
      'en': 'Terms and conditions for access to this service.',
    },
    'eig8hh4k': {
      'sw': 'Fungua',
      'en': 'Open',
    },
    'rh3dhwnp': {
      'sw': '\"Kila Mtu Kwake.\"',
      'en': '\"Kila Mtu Kwake.\"',
    },
    'owr1d6b6': {
      'sw': 'BADILI NYUMBA',
      'en': 'UPDATE HOUSE',
    },
    'ayo542a6': {
      'sw': 'Nyumbani',
      'en': 'Home',
    },
  },
  // HousePlanPage
  {
    'zfj80lwl': {
      'sw': 'Nyumba',
      'en': 'House',
    },
    'l4h7fka4': {
      'sw': 'Kiwango: Chini',
      'en': 'Sub-Standard',
    },
    'jzs488zq': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    'n332stvj': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    'f9rhsmrk': {
      'sw': 'Kiwango: Kati',
      'en': 'Standard',
    },
    'pvjdq10z': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    'a96ou12i': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    'g30igxqy': {
      'sw': 'Kiwango: Juu',
      'en': 'Premium',
    },
    'c7lmwuek': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    'nfodcsui': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    '19udppse': {
      'sw': 'Huduma ',
      'en': 'Service ',
    },
    '1to1wsi5': {
      'sw':
          'Fahamu zaidi kwanini ulipe asilimia 12.5 tu ya gharama ya nyumba na kujengewa nyumba yote.',
      'en':
          'Find out more about why you pay only 12.5 percent of the cost of housing and we buid for you the whole house.',
    },
    'cg0ii7i5': {
      'sw': 'Fungua',
      'en': 'More',
    },
    'ea5qcfvg': {
      'sw': 'Taarifa na Maelezo',
      'en': 'Information and Details',
    },
    '1fyqa0gh': {
      'sw': 'Vigezo na Masharti',
      'en': 'Terms and Conditions',
    },
    '6thhkzli': {
      'sw': 'Vigezo na masharti ya kupata huduma hiii. ',
      'en': 'Terms and conditions for access to this service.',
    },
    '0zjpwr6a': {
      'sw': 'Fungua',
      'en': 'Open',
    },
    'zusnpkd4': {
      'sw': '\"Kila Mtu Kwake.\"',
      'en': '\"Kila Mtu Kwake.\"',
    },
    'rwxeiy12': {
      'sw': 'BADILI ',
      'en': 'UPDATE ',
    },
    'u4thghhj': {
      'sw': 'Nyumbani',
      'en': 'Home',
    },
  },
  // HousesPlanPage
  {
    'lylor9rr': {
      'sw': 'Tafuta  gharama ..',
      'en': 'Search price...',
    },
    'zryd3k70': {
      'sw': 'BEI:',
      'en': 'COST:',
    },
    '4ya6itgx': {
      'sw': 'LIPA',
      'en': 'PAY',
    },
    'jhs9ajga': {
      'sw': 'Product Name',
      'en': '',
    },
    '1y9kfbgl': {
      'sw': '\$24.20',
      'en': '',
    },
    't4pmwc5p': {
      'sw': 'Product Name',
      'en': '',
    },
    '50yddale': {
      'sw': '\$24.20',
      'en': '',
    },
    '6nrdio2f': {
      'sw': 'Product Name',
      'en': '',
    },
    '6hwvswso': {
      'sw': '\$24.20',
      'en': '',
    },
    'ssokseiu': {
      'sw': 'Product Name',
      'en': '',
    },
    'v5jljtsx': {
      'sw': '\$24.20',
      'en': '',
    },
    '5rnhpm7w': {
      'sw': 'Product Name',
      'en': '',
    },
    'vpyxus0o': {
      'sw': '\$24.20',
      'en': '',
    },
    '6b0m7hrm': {
      'sw': 'Chagua Nyumba',
      'en': 'Select House',
    },
    'l7ua5195': {
      'sw': 'Nyumbani',
      'en': 'Home',
    },
  },
  // HouseRenovation
  {
    '9u7mibfu': {
      'sw': 'Ukarabati wa Nyumba',
      'en': 'House Renovation ',
    },
    '63xsk8bk': {
      'sw': 'GHARAMA:',
      'en': 'COST:',
    },
    'zdw3i3en': {
      'sw': '- ',
      'en': '-',
    },
    'slioc9p2': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    '8ksd1r7r': {
      'sw': 'Dar - ',
      'en': 'Dar - ',
    },
    'p9bprdlc': {
      'sw': 'Mkoani',
      'en': 'Regional',
    },
    'v7my9aa5': {
      'sw': 'Lipa kidogo kidogo kwa mpaka miezi 12',
      'en': 'Pay in installments for up to 12months',
    },
    'cqokg94o': {
      'sw': 'Huduma ',
      'en': 'Service ',
    },
    'ylfvzqza': {
      'sw':
          'Fahamu zaidi kwanini ulipe 1 mil/ 1.5 tu kwaajili ya ukarabati wa nyumba.',
      'en': 'Find out more why you only pay 1 mil / 1.5 for a home renovation.',
    },
    'pb6ui6g2': {
      'sw': 'Fungua',
      'en': 'More',
    },
    '4oyjumwr': {
      'sw': 'Taarifa na Maelezo',
      'en': 'Information and Details',
    },
    'wnzissa8': {
      'sw':
          '- Tunakarabati nyumba.\n- Tunaongeza vyumba, swimming pool, \n   vyoo, n.k.\n- Tunamalizia ujenzi wa nyumba.\n- Tunabadilisha mwonekano wa nyumba \n   kuwa wa kisasa',
      'en':
          '- We renovate the house.\n- We add rooms, swimming pool, \n   toilets, etc. \n- We finish the construction of the \n   house. \n- We change the look of the house to  \n   a modern one.',
    },
    'wun1m2gn': {
      'sw': 'Vigezo na Masharti',
      'en': 'Terms and Conditions',
    },
    'vr3zjtq1': {
      'sw': 'Vigezo na masharti ya kupata huduma hiii. ',
      'en': 'Terms and conditions for access to this service.',
    },
    '8bngkgyo': {
      'sw': 'Fungua',
      'en': 'Open',
    },
    '0mw9zdm3': {
      'sw': 'WEKA MPANGO',
      'en': 'SET PLAN',
    },
    'pt22t3a8': {
      'sw': 'Nyumbani',
      'en': 'Home',
    },
  },
  // HouseTypePage1
  {
    'trav8ivx': {
      'sw': 'BEI:',
      'en': 'COST:',
    },
    '8jdpe6lf': {
      'sw': 'LIPA',
      'en': 'PAY',
    },
    'yjfkmuyw': {
      'sw': 'Product Name',
      'en': '',
    },
    'jm4twhml': {
      'sw': '\$24.20',
      'en': '',
    },
    'r9zjyrs7': {
      'sw': 'Product Name',
      'en': '',
    },
    'nf6yqee2': {
      'sw': '\$24.20',
      'en': '',
    },
    '1zwx99g3': {
      'sw': 'Product Name',
      'en': '',
    },
    '671b03zi': {
      'sw': '\$24.20',
      'en': '',
    },
    '218jjq5y': {
      'sw': 'Product Name',
      'en': '',
    },
    'yyh683cs': {
      'sw': '\$24.20',
      'en': '',
    },
    '174zo1he': {
      'sw': 'Product Name',
      'en': '',
    },
    'gqnd17lq': {
      'sw': '\$24.20',
      'en': '',
    },
    '8fzm4jl3': {
      'sw': 'Nyumba',
      'en': 'Houses',
    },
    'aj6cy9sc': {
      'sw': 'Nyumba',
      'en': 'Home',
    },
  },
  // HouseTypePage2
  {
    'oiyqx0f1': {
      'sw': 'Nyumba',
      'en': 'Houses',
    },
    'c8zxq7zh': {
      'sw': 'BEI:',
      'en': 'COST:',
    },
    'sf0bnep3': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    '9pwfv1ei': {
      'sw': 'Product Name',
      'en': '',
    },
    'pitcnymy': {
      'sw': '\$24.20',
      'en': '',
    },
    'cf38hdp6': {
      'sw': 'Product Name',
      'en': '',
    },
    'jebnfz66': {
      'sw': '\$24.20',
      'en': '',
    },
    'z9l06d6t': {
      'sw': 'Product Name',
      'en': '',
    },
    'mhhgss7j': {
      'sw': '\$24.20',
      'en': '',
    },
    'sp8sp867': {
      'sw': 'Product Name',
      'en': '',
    },
    'jsq45jwm': {
      'sw': '\$24.20',
      'en': '',
    },
    'ail25yzk': {
      'sw': 'Product Name',
      'en': '',
    },
    'iyhnes9z': {
      'sw': '\$24.20',
      'en': '',
    },
    '9j6qjezo': {
      'sw': 'Nyumba',
      'en': 'House',
    },
  },
  // HouseTypePage3
  {
    'ehq384t8': {
      'sw': 'Nyumba',
      'en': 'Houses',
    },
    'uejhppvn': {
      'sw': 'BEI:',
      'en': 'COST:',
    },
    'iatq2spw': {
      'sw': 'LIPA:',
      'en': 'PAY:',
    },
    'lilii2nu': {
      'sw': 'Product Name',
      'en': '',
    },
    '4bp2v76l': {
      'sw': '\$24.20',
      'en': '',
    },
    'hl0n1xcl': {
      'sw': 'Product Name',
      'en': '',
    },
    'xl1mbpf5': {
      'sw': '\$24.20',
      'en': '',
    },
    'wllcy4f2': {
      'sw': 'Product Name',
      'en': '',
    },
    'dfgcdfuo': {
      'sw': '\$24.20',
      'en': '',
    },
    'qipvb7hs': {
      'sw': 'Product Name',
      'en': '',
    },
    '0t20k8s4': {
      'sw': '\$24.20',
      'en': '',
    },
    'fqvii7av': {
      'sw': 'Product Name',
      'en': '',
    },
    '2l39aenh': {
      'sw': '\$24.20',
      'en': '',
    },
    'fhydjw1f': {
      'sw': 'Nyumba',
      'en': 'House',
    },
  },
  // Policy
  {
    '6wjbwau7': {
      'sw': 'TERMS AND CONDITIONS ',
      'en': 'TERMS AND CONDITIONS ',
    },
    'nj3q3y63': {
      'sw': 'Sera Ya Kurejesha Pesa',
      'en': 'Our Refund Policy ',
    },
    'ip424uiv': {
      'sw':
          'Rejesha pesa yako ya malipo uliyofanya \nkwaajili ya ujenzi wa nyumba,   ndani ya miaka 2 tokea pale ulipo lipa kwa mara ya kwanza, kama bado hauja tuma maombi ya ujenzi wanyumba.\nRejesha pesa ya malipo uliyofanya kwaajili ya ukarabati wa nyumba, ndani ya masaa 24 tangu ufanye malipo kwa mara ya kwanza.',
      'en':
          'Return your mortgage payments within 2 years of your first payment, if you have not yet applied for a mortgage. \nRefund the payment you made for home renovation, within 24 hours of making your first payment.',
    },
    '5bnj5xcv': {
      'sw':
          'Unaweza badilisha mpango wa ujenzi wa nyumba ndani ya muda wa  miaka miwili tokea pale ulipo fanya malipo kwa mara ya kwanza kwaajili ya ujenzi wa nyumba, kama ujenzi wa nyumba bado haujaanza. ',
      'en':
          'You can replace a house construction plan you want to build within 2 years from when you made a first payment for the house if the construction of the house haven’t begin yet.',
    },
    'gjlvdnkw': {
      'sw':
          'Utakapo tuma maombi ya kurudisha pesa, asilimia 10% ya pesa uliyolipa unyohitaji kurudishiwa itakatwa. ',
      'en':
          'When requesting for a refund, 10% of refund total will be deducted from your refund total.',
    },
    'zwjgmqmo': {
      'sw':
          'Utakapo tuma maombi ya kubadili mpango wa ujenzi wa nyumba hakutakua na makato.',
      'en':
          'When requesting for replacement of a house construction plan, no fees will be charged.',
    },
    '3kxm4twd': {
      'sw':
          'Itachukua mpaka siku 5 za kazi tokea utume maombi ya kurudishiwa pesa uliyolipa, mpaka pale utakapo rudishiwa pesa yako.',
      'en':
          'It will take a maximum of 5 working days from when you made request for refund, to receive your refund total.',
    },
    'knvjazph': {
      'sw': 'Bujeti ya Ujenzi',
      'en': 'Construction Budget',
    },
    '9gw7rqyn': {
      'sw':
          'Gharama zilizowekwa kwaajili ya ujenzi ni makadirio, kwaio zinaweza kupungua ama kuongezeka wakati wa ujenzi.',
      'en':
          'Budget/costs that have been stated for the construction of a house are estimated. So they may increase or decrease during construction.   ',
    },
    '7kjeg4ow': {
      'sw':
          'Kama ukilipa zaidi ya nusu ya kiasi kinachohitajika kwaajili ya ujenzi wa nyumba (yaani nusu ya 12% ya gharama yote ya nyumba), tutakuja kutembelea eneo lako kukusanya vipimo na maitaji yako ya nyumba kisha tutatengeneza ramani na bajeti kwaajili yako.',
      'en':
          'If you pay more than half the amount needed to build a house (means half of 12.5% of the total cost of housing), we will visit your area to collect your house measurements and needs and then create a map and budget for you.',
    },
    '8si3ebpd': {
      'sw':
          'Bajeti inayowekwa ni jumla ya gharama ya ufundi na nyenzo za ujenzi wa nyumba, ni nje ya gharama za ufundi na nyenzo za ujenzi wa uzio, kisima cha maji, na vitu vingine nje ya nyumba, lakini utaweza kuongezewa mpaka 25% ya gharama ya awali kwajili ya ufundi na nyenzo za ujenzi wa uzio, kisima cha maji na vitu vingine nje ya nyumba. ',
      'en':
          'The budget set is the sum of the technical and material costs of building houses, it is out of the cost of technical and materials for the construction of fences, water wells, and other items outside the house, but we will be able to add up to 25% of the initial cost for of crafts and materials for the construction of fences, water wells and other objects outside the house.',
    },
    '8z5pmkk2': {
      'sw': 'Uza Nyumba Yako',
      'en': 'Sell Your Home',
    },
    '56290mgj': {
      'sw':
          'Utaweza kuuza nyumba yako ya mkopo baada ya mda wa miaka 3 tokea ijengwe kwa mkopo.',
      'en': 'You will be able to sell your mortgage within 3 years mortgage.',
    },
    'duo81y6k': {
      'sw': 'Vigezo na Masharti',
      'en': 'Terms and Conditions',
    },
    '34todm8x': {
      'sw': 'Home',
      'en': 'Nyumbani ',
    },
  },
  // RenovationServicePage
  {
    'yl0cxob3': {
      'sw': 'Huduma',
      'en': 'Service',
    },
    '7zoyn02x': {
      'sw': 'Lipa 1 mil mpaka 1.5 mil. ',
      'en': 'Pay 1 mil to 1.5 mil. ',
    },
    'v46of8nc': {
      'sw':
          'Kiasi cha milioni 1 (Dar es Salaam) mpaka milioni 1 na nusu (kwa mkoani), utalipa kwaajili ya huduma ya ukarabati. Gharama iyo itahusisha sisi kutembelea nyumba yako inayoitaji ukarabati, kutengeneza mchoro na mpango wa ukarabati kama itahitajika. ',
      'en':
          'About 1 million (Dar es Salaam) to 1 and a half million (regional), you will pay for the renovation service. That cost will involve us visiting your home in need of renovation, making a sketch and renovation plan if needed.',
    },
    'cu7404rn': {
      'sw': 'Lipa 1 mil/ 1.5 mil Kidogo kidogo.',
      'en': 'Pay 1 mil / 1.5 mil in Installment.',
    },
    'ecrhgi6q': {
      'sw':
          'Lipa 1 mil/ 1.5 mil kidogo kidogo kwa mda wa mpaka mwaka mmoja, au lipa kwa mkupuo.',
      'en':
          'Pay 1 mil / 1.5 mil in installments for up to one year, or pay in lump-sum.',
    },
    'wv4hpuwa': {
      'sw': 'Nyongeza ya 20 mil mpaka 1 bil',
      'en': 'An additional 20 mil to 1 bil',
    },
    '89lvetfe': {
      'sw':
          'Baada ya kufanya malipo ya 1 mil/ 1.5 mil, na kupata mpango wa ukarabati, tutakuongezea kuanzia 20 mil mpaka 1 bil kulingana na mahitaji ya ukarabati wa nyumba yako.',
      'en':
          'After making a payment of 1 mil / 1.5 mil, and getting a renovation plan, we will add you from 20 mil to 1 bil depending on the repair needs of your home.',
    },
    'rfedkf2b': {
      'sw': 'Lipa 20 mil mpaka 1 bil',
      'en': 'Pay 20 mil to 1 bil',
    },
    'fvubr2f8': {
      'sw':
          'Baada ya ukarabati kukamilika, utalipa kiasi ulichoongezewa kwaajili ya ukarabati kidogo kidogo kwa muda wa mpaka miaka 25 au utalipa kwa mkupuo. Kutakua na riba ya mkopo.',
      'en':
          'After the renovation is complete, you will pay the extra amount for the repair in  installments over a period of up to 25 years or you will pay in lump-sum. There will be interest loan.',
    },
    'r4k4hbqa': {
      'sw': 'Home',
      'en': 'Home',
    },
  },
  // MortgageServicePage
  {
    'fslc7ruf': {
      'sw': 'Huduma',
      'en': 'Service',
    },
    '6mjum6go': {
      'sw': 'Chukulia mfano wa nyumba inayo gharimu\n50,000,000 / = ',
      'en': 'Take an example of an house costing \n50,000,000 / =',
    },
    'bjdchctm': {
      'sw': 'Lipa 6,250,000/=  badala ya 50,000,000/=',
      'en': 'Pay 6,250,000 / = instead of \n50,000,000 / =',
    },
    'k24cl6uc': {
      'sw':
          'Nyumba inayogharimu 50,000,000/= utajengewa kuanzia msingi mpaka finishing ukilipa 6,250,000/= sawasawa\n na  12.5% ya gharama ya ujenzi.',
      'en':
          'A house costing 50,000,000 / = will be built from foundation to finishing by paying 6,250,000 / = an equivalent to 12.5% of construction budget.',
    },
    '7yjlg728': {
      'sw': 'Lipa 6,250,000/=  kidogo kidogo ',
      'en': 'Pay 6,250,000 / = in installment',
    },
    'ixrjkpk2': {
      'sw':
          'Utalipa 250,000/= sawa sawa na 0.53% ya gharama ya ujenzi kila mwezi kwa miezi 24, au utalipa gharama yote kwa pamoja.',
      'en':
          'You will pay 250,000 / = equivalent to 0.53% of the monthly construction cost for 24 months, or you will pay the total cost together.',
    },
    '6koeanw9': {
      'sw': 'Nyongeza ya 43,750,000/= ',
      'en': 'Additional 43,750,000 / =',
    },
    'z4js3jc3': {
      'sw':
          'Baada ya kukamilisha malipo ya 6,250,000/= tutakuongezea 43,000,000/= ili kutimiza gharama za ujenzi ambazo ni 50,000,000/= na utajengewa nyumba kuanzia msingi mpaka finishing, na ujenzi ukiisha utahamia kwenye nyumba yako. Kutakua na riba ya mkopo.',
      'en':
          'After completing the payment of 6,250,000 / = we will add 43,000,000 / = to cover the construction costs which is 50,000,000 / = and you will build a house from foundation to finishing, and when the construction is completed you will move to your house. There will be loan interest',
    },
    'e0eatf4t': {
      'sw': 'Lipa 43,750,000 kwa miaka 25',
      'en': 'Pay 43,750,000 for 25 years',
    },
    'l9tn2p6l': {
      'sw':
          'Ukishahamia kwenye nyumba yako ndipo utakapo lipa 43,750,000/= ulioongezewa kwaajili ya ujenzi wa nyumba yako kidogo kidogo kwa mda wa mpaka miaka 25 au utalipa kwa mkupuo.',
      'en':
          'If you move into your home then you will pay 43,750,000 / = added for the construction of your house gradually for up to 25 years, or you may pay in lamp-sum.',
    },
    'yx6i0cuo': {
      'sw': 'Uza Nyumba Yako',
      'en': 'Sell Your Home',
    },
    'zclblvcv': {
      'sw':
          'Tutakusaidia kuuza nyumba yako pamoja na deni lililobaki kwa ndani ya siku 90, ambapo utarudishiwa pesa uliyotumia kununua kiwanja na ujenzi, pamoja na faida.',
      'en':
          'We will help you sell your home with the remaining debt within 90 days, where you will be reimbursed for the money you spent on property and construction, as well as profits.',
    },
    'lhrf658e': {
      'sw': 'Home',
      'en': 'Home',
    },
  },
  // ChangeLanguagePage
  {
    '1rdhe8k9': {
      'sw': 'Badili Lugha',
      'en': 'Change Language',
    },
    'tpv7ba2b': {
      'sw': 'SAWA',
      'en': 'OK',
    },
    'gz6cufex': {
      'sw': 'Nyumbani',
      'en': 'Home',
    },
  },
  // AdminPage
  {
    '6u0fd7f9': {
      'sw': 'Admin Panel',
      'en': 'Admin Panel',
    },
    'kj6ikvef': {
      'sw': 'Users',
      'en': 'Users',
    },
    '8kfcecb2': {
      'sw': 'User Phone No:',
      'en': 'User Phone No:',
    },
    'n20dq2ky': {
      'sw': 'User Type:',
      'en': 'User Type:',
    },
    'fnw3895n': {
      'sw': 'renovation',
      'en': 'renovation',
    },
    '8zysnts8': {
      'sw': 'construction',
      'en': 'construction',
    },
    'jw23nmlp': {
      'sw': 'Email:',
      'en': 'Email:',
    },
    'ap4kv1gd': {
      'sw': 'Transactions',
      'en': 'Transactions',
    },
    'sypqer6c': {
      'sw': 'Amount:',
      'en': 'Amount:',
    },
    '3l59htn9': {
      'sw': 'Phone No:',
      'en': 'Phone No:',
    },
    'fxgmnz2k': {
      'sw': 'Mortgage/Interest',
      'en': 'Mortgage/Interest',
    },
    '5d9vtb5m': {
      'sw': 'User Phone No:',
      'en': 'User Phone No:',
    },
    'uq8t0s42': {
      'sw': 'Home',
      'en': '',
    },
  },
  // AdminPage1
  {
    'nl5k55tl': {
      'sw': 'Admin Panel',
      'en': 'Admin Panel',
    },
    'zpghj6nh': {
      'sw': 'House Request',
      'en': 'House Request',
    },
    'as5xa25y': {
      'sw': 'User Email:',
      'en': 'User Email:',
    },
    'nuhwg5ie': {
      'sw': 'House Plan',
      'en': 'House Plan',
    },
    'kavh7gc6': {
      'sw': 'User Email:',
      'en': 'User Email:',
    },
    '2b124z79': {
      'sw': 'Goal:',
      'en': 'Paid Goal:',
    },
    'kh0xmfz6': {
      'sw': 'Phone Number:',
      'en': 'Phone Number:',
    },
    'j7imdvja': {
      'sw': 'Pro Cards',
      'en': 'Pro Cards',
    },
    'enb7s0vj': {
      'sw': 'User Email:',
      'en': 'User Email:',
    },
    'qfj9tk0k': {
      'sw': 'Namba ya simu',
      'en': 'Phone Number:',
    },
    'adhchjpq': {
      'sw': 'Jun 1, 2021',
      'en': '',
    },
    's7jn15i5': {
      'sw': 'Home',
      'en': '',
    },
  },
  // CardPage
  {
    'tn954wjq': {
      'sw': 'OFA YA KUELEKEA SABASABA',
      'en': 'OFFER TO SABASABA',
    },
    'tzciqa8s': {
      'sw': 'KADI YA NAJIPANGA LEO ',
      'en': 'NAJIPANGA LEO CARD',
    },
    'b3vuv5j4': {
      'sw':
          'Kama bado unajipanga, ukiwa na kadi ya NAJIPANGA LEO itakuwezesha kuweka vitu vya ndani BURE siku ukijenga na sisi.\nVitu hivyo ni kama runinga, makochi, majiko, vitanda, makabati n.k ',
      'en':
          'Kama bado unajipanga, ukiwa na kadi ya NAJIPANGA LEO itakuwezesha kuweka vitu vya ndani BURE siku ukijenga na sisi.\nVitu hivyo ni kama runinga, makochi, majiko, vitanda, makabati n.k ',
    },
    'hm4r0nji': {
      'sw': 'SHARTI',
      'en': 'SHARTI',
    },
    'oial1k1h': {
      'sw':
          'Utatakiwa kuchagua uwekewekewa vitu vyote vya sebuleni, jikoni, chumbani, au sehemu ya kulia.',
      'en':
          'Utatakiwa kuchagua uwekewekewa vitu vyote vya sebuleni, jikoni, chumbani, au sehemu ya kulia.',
    },
    'w69gapxm': {
      'sw':
          'Tembelea ofisi zetu ujipatie kadi ya NAJIPANGA LEO sasa kwa kulipa 100,000/= au tuma maombi tukuletee kadi popote ulipo ndani ya Dar-es-Salaam.',
      'en':
          'Tembelea ofisi zetu ujipatie kadi ya NAJIPANGA LEO sasa kwa kulipa 100,000/= au tuma maombi tukuletee kadi popote ulipo ndani ya Dar-es-Salaam.',
    },
    'lxzdc7h7': {
      'sw': 'TUMA',
      'en': 'SEND',
    },
    'd9qq8088': {
      'sw': 'Kadi ya Jipange ',
      'en': 'Jipange Card',
    },
    'xcj6i6ns': {
      'sw': 'Home',
      'en': '',
    },
  },
  // MyCardPage
  {
    '8n3nnne5': {
      'sw': 'Kadi Yangu',
      'en': 'My Card',
    },
    'zxkjnhq0': {
      'sw': 'Home',
      'en': '',
    },
  },
  // SignaturePage
  {
    'b6bdk98z': {
      'sw': 'Saini',
      'en': 'Signature',
    },
    'gj9rf7al': {
      'sw': 'Home',
      'en': '',
    },
  },
  // FinnishHouse
  {
    'yydnytub': {
      'sw':
          'Weka kidogo kidogo mpaka 12.5% ya gharama iliyobaki, tumalizie kukujengea nyumba yote.',
      'en':
          'Pay a small down payment up to 12.5%  of the remaining cost in instalment, and we finish building for you the whole house.',
    },
    '8wx1kiqi': {
      'sw': 'Malizia Ujenzi wa Nyumba Yako',
      'en': 'Finish Building Your Home',
    },
  },
  // TermsConditions
  {
    '1eyf8x5e': {
      'sw': 'Premium Content',
      'en': '',
    },
    'ca54zsdc': {
      'sw':
          'In order to access thi content you will need to purchase the premium plan below!',
      'en': '',
    },
    'kr8d8i55': {
      'sw': 'Pro Plan',
      'en': '',
    },
    '6ev931v0': {
      'sw': 'How to launch an NFT Collection ',
      'en': '',
    },
    'z1eakjwn': {
      'sw': 'Access to all premium content',
      'en': '',
    },
    'ulvsq4um': {
      'sw': 'Unlimited access to all free content',
      'en': '',
    },
    'qn80yklp': {
      'sw': 'Promos for in person lessons',
      'en': '',
    },
    '3olvkkn5': {
      'sw': 'Premium Content',
      'en': '',
    },
    'c3ik0x2e': {
      'sw':
          'In order to access thi content you will need to purchase the premium plan below!',
      'en': '',
    },
    '24f4pge7': {
      'sw': 'Subscribe \$14.99/mo',
      'en': '',
    },
  },
  // Payment
  {
    'ryrqbmm5': {
      'sw': 'Namba ya Kutuma (Ya mtandao uliochagua)',
      'en': 'Sending Number (For selected network)',
    },
    '5wzuf4ah': {
      'sw': 'weka namba',
      'en': 'enter phone number',
    },
    'pnx32sgc': {
      'sw': '',
      'en': '',
    },
    'l4amvwjf': {
      'sw': 'Kiasi',
      'en': 'Amount',
    },
    'cn4r7k69': {
      'sw': 'weka kiasi',
      'en': 'enter amount',
    },
    '0si0aovf': {
      'sw': '',
      'en': '',
    },
    '2gfct5pp': {
      'sw': 'Lipa Kwa ',
      'en': 'Pay By ',
    },
    '9510hvp4': {
      'sw': 'Tigo Pesa',
      'en': 'Tigo Pesa',
    },
    'icgobz49': {
      'sw': 'M-PESA',
      'en': 'M-PESA',
    },
    '3nx91jln': {
      'sw': 'Airtel Money',
      'en': 'Airtel Money',
    },
    'dwcwy5co': {
      'sw': 'CRDB Bank',
      'en': 'CRDB Bank',
    },
    'l6scgmjb': {
      'sw': 'NMB Bank',
      'en': 'NMB Bank',
    },
    'swzxrctn': {
      'sw': 'Other Banks',
      'en': 'Other Banks',
    },
    'wwvtf18z': {
      'sw': 'LIPA',
      'en': 'PAY',
    },
  },
  // MortgageReq
  {
    '155139e2': {
      'sw': 'Kuhusu Kiwanja',
      'en': 'Employment Status (Activity)',
    },
    'dnx0n2vv': {
      'sw': 'Huna Kiwanja',
      'en': 'You have no land',
    },
    'ed8apdp6': {
      'sw': 'Una kiwanja kisicho na hati miliki',
      'en': 'You have land with no title deed',
    },
    'u8vmay8u': {
      'sw': 'Una kiwanja chenye hati miliki',
      'en': 'You have land with title deed',
    },
    'ppjuzdu3': {
      'sw': 'chagua...',
      'en': 'Please select ...',
    },
    '1jvof5bb': {
      'sw': 'Kuhusu malipo ya mwanzo',
      'en': 'About down-payment ',
    },
    'r15mts9l': {
      'sw': 'Una 15% ya gharama ya ujenzi',
      'en': 'You have 15% of the construction cost',
    },
    'xd2o44el': {
      'sw': 'Huna 15% ya gharama ya ujenzi',
      'en': 'You do not have 15% of the construction cost',
    },
    'hcjoc5u3': {
      'sw': 'Chagua...',
      'en': 'Please select ...',
    },
    'k6ndprwx': {
      'sw': 'Mkopo wa miaka mingapi?',
      'en': 'Loan of how long?',
    },
    '4mdqof05': {
      'sw': 'Miaka 5 au chini',
      'en': '5 years or below',
    },
    'bcd0xjoe': {
      'sw': 'Kati ya: miaka 6 mpaka 10',
      'en': 'Range: From 6 years to 10',
    },
    '4tnf9jtg': {
      'sw': 'Kati ya: miaka 11 mpaka 15',
      'en': 'Range: From 11 years to 15',
    },
    '58kak51b': {
      'sw': 'Kati ya: miaka 16 mpaka 25',
      'en': 'Range: From 16 years to 25',
    },
    '2vkerk68': {
      'sw': 'Chagua...',
      'en': 'Please select ...',
    },
    'cvx1o86h': {
      'sw': 'Kipato cha Mwezi',
      'en': 'Monthly Income',
    },
    'pa8gl0mt': {
      'sw': 'Chini ya 1,000,000/=',
      'en': 'Below 1,000,000/=',
    },
    'g9mazjao': {
      'sw': 'Kati ya: 1,000,000/= mpaka 2,000,000/=',
      'en': 'Range: From 1,000,000/= to 2,000,000/=',
    },
    'pi8vab3t': {
      'sw': 'Kati ya:  2,000,000/= mpaka 3,000,000/=',
      'en': 'Range: From 2,000,000/=  to 3,500,000/=',
    },
    'jfqpjxpa': {
      'sw': 'Juu ya 3,000,000/= ',
      'en': 'Above 3,000,000/=',
    },
    'roz3rqbu': {
      'sw': 'chagua...',
      'en': 'Please select ...',
    },
    'bztvt312': {
      'sw': 'Tuma',
      'en': 'Send',
    },
  },
  // RenovationReq
  {
    'io24anvl': {
      'sw': 'Shughuli',
      'en': 'Employment Status (Activity)',
    },
    '8w6s2py9': {
      'sw': 'Mfanyakazi',
      'en': 'Employee',
    },
    'u23pzt55': {
      'sw': 'Mfanyabiashara',
      'en': 'Entreprenuer',
    },
    '931zpzlc': {
      'sw': 'Hakuna',
      'en': 'None',
    },
    'v1cp1uk5': {
      'sw': 'chagua...',
      'en': 'Please select ...',
    },
    'ywa07344': {
      'sw': 'Kipato cha mwezi',
      'en': 'Averge Monthly Income (Monthly Income)',
    },
    'or067tji': {
      'sw': 'Chini ya 400,000',
      'en': 'Employee (Employe)',
    },
    'yjr0voyw': {
      'sw': 'Kati ya: 400,000/= mpaka 750,000/=',
      'en': 'Range: From 400,000/= to 750,000/=',
    },
    'lsg64anr': {
      'sw': 'Kati ya:  750,000/= mpaka 1,500,000/=',
      'en': 'Range:  From 750,000/=  to 1,500,000/=',
    },
    'e5y74si7': {
      'sw': 'Juu ya 1,500,000/= ',
      'en': 'Above 1,500,000/=',
    },
    'a3i3ydy6': {
      'sw': 'chagua...',
      'en': 'Please select ...',
    },
    '41d9kvg3': {
      'sw': 'Mahusiano',
      'en': 'Relationship Status (Relationships)',
    },
    'tutkslu2': {
      'sw': 'Upo kwenye ndoa',
      'en': 'Maried',
    },
    '4yjyi0lz': {
      'sw': 'Haupo kwenye ndoa ',
      'en': 'Not married',
    },
    'smd9ffcm': {
      'sw': 'Chagua...',
      'en': 'Please select ...',
    },
    '0lp7oo3c': {
      'sw': 'Makazi',
      'en': 'Home',
    },
    'mv0p0kdp': {
      'sw': 'Unahishi kwenye nyumba yako.',
      'en': 'You live in your house.',
    },
    '7i3db1dj': {
      'sw': 'Umepanga.',
      'en': 'You have rent a house ',
    },
    'u2owe6y8': {
      'sw': 'Chagua...',
      'en': 'Please select ...',
    },
    'gxxms3wd': {
      'sw': 'Tuma',
      'en': 'Send',
    },
  },
  // BusinessCode
  {
    '0kzv7i8x': {
      'sw':
          'Lipa gharama yote uanze ujenzi, au lipa kidogo kidogo kila mwezi kwa mpaka miezi 24.',
      'en':
          'Pay the full cost to start building, or pay a small monthly installment for up to 24 months.',
    },
    'igv8cz1i': {
      'sw': 'SAWA',
      'en': 'OK',
    },
  },
  // PaymentRefund
  {
    'hpj5z84c': {
      'sw': 'Kiasi:',
      'en': 'Amount:',
    },
    's4x4e4sm': {
      'sw': 'Namba ya Kupokea (Ya mtandao uliochagua)',
      'en': 'Receiving Number (For selected network)',
    },
    '1llr90la': {
      'sw': 'weka namba',
      'en': 'enter phone number',
    },
    'l4f6an45': {
      'sw': '',
      'en': '',
    },
    'ddxxt3e7': {
      'sw': 'Pokea Kwa ',
      'en': 'Receive By ',
    },
    'avujviqa': {
      'sw': 'Tigo Pesa',
      'en': 'Tigo Pesa',
    },
    '89e3o7ak': {
      'sw': 'M-PESA',
      'en': 'M-PESA',
    },
    'esh48c37': {
      'sw': 'Airtell Money',
      'en': 'Airtell Money',
    },
    'k7y2n40k': {
      'sw': 'REJESHA',
      'en': 'REFUND',
    },
  },
  // DalaTigoPesa
  {
    'xdoj5btj': {
      'sw':
          'Jinsi ya Kulipa - TIGO PESA\n1. Piga *150*01# ili kupata menyu yako ya Tigo Pesa. \n2. Chagua 1 \'Tuma Pesa\'.\n3. Chagua 3 \'Mitandao mingine\'.\n4. Chagua 3 \'M-PESA\'. \n5. Ingiza namba sahihi kuendelea \'5351999\'\n6. Ingiza kiasi: \"100000\".\n7. Thibitisha maelezo ya ankara na weka nambari ya siri .',
      'en':
          'How To Pay - TIGO PESA\n1. Dial *150*01# to get your Tigo Pesa Menu.\n2. Select 1 for ”Send money”.\n3. Select 3 for “To other networks”.\n4. Select 3 for “M-PESA”.\n5. Enter collect number to proceed: \"5351999\".\n6. Enter amount: “100000”.\n7. Confirm details and Enter PIN. ',
    },
    '4240mx98': {
      'sw': 'Namba ya kampuni:',
      'en': 'Business Number:',
    },
    'm8ojtoos': {
      'sw': '351999',
      'en': '351999',
    },
    'tii17c7q': {
      'sw': 'Jina la kampuni:',
      'en': 'Company Name:',
    },
    'o6wvpydi': {
      'sw': 'Dala Ujenzi',
      'en': 'Dala Ujenzi',
    },
    'k9y7su3z': {
      'sw': 'Kiasi:',
      'en': 'Amount:',
    },
    '4yz8mun3': {
      'sw': 'Ada:',
      'en': 'fees:',
    },
    'bjlj6l88': {
      'sw': '***',
      'en': '***',
    },
    'tpydq07x': {
      'sw': 'Anza',
      'en': 'Start',
    },
  },
  // DalaM-PESA
  {
    'mrv7shfz': {
      'sw':
          'Jinsi ya Kulipa - M-PESA\n1. Piga *150*00# ili kupata menyu yako ya M-PESA. \n2. Chagua 4 \'Lipa Bili\'.\n3. Chagua 3 \'Ingiza namba ya Kampuni\'.\n4. Ingiza namba ya Kampuni:  \'351999\'. \n5. Weka Kumbukumbu namba: \"123\".\n6. Ingiza kiasi: \"100000\".\n7. Thibitisha maelezo ya ankara na weka nambari ya siri .',
      'en':
          'How To Pay -  M-PESA\n1. Dial *150*00# to get your M-PESA Menu.\n2. Select 4 for  “Pay by M-PESA”.\n3. Select 4 for “Enter  Business Number ”.\n4. Enter business number: “5351999”.\n5. Enter Reference Number: \"123\".\n6. Enter amount: “100000”.\n7. Enter PIN. ',
    },
    '6uq3dv0c': {
      'sw': 'Namba ya kampuni:',
      'en': 'Business Number:',
    },
    'ylfa68a5': {
      'sw': '5351999',
      'en': '5351999',
    },
    'lu2gqpbu': {
      'sw': 'Jina la kampuni:',
      'en': 'Company Name:',
    },
    'gxs6j8xw': {
      'sw': 'Dala Ujenzi',
      'en': 'Dala Ujenzi',
    },
    'g6irw5zh': {
      'sw': 'Kumbukumbu ya malipo:',
      'en': 'Ref No:',
    },
    '74v064j6': {
      'sw': '123',
      'en': '123',
    },
    'a56xp8c7': {
      'sw': 'Kiasi:',
      'en': 'Amount:',
    },
    'mnznt3pv': {
      'sw': 'Ada:',
      'en': 'fees:',
    },
    'zj24x0o3': {
      'sw': '***',
      'en': '***',
    },
    '1hdt3n82': {
      'sw': 'Anza',
      'en': 'Start',
    },
  },
  // DalaAirtelMoney
  {
    '70d67urv': {
      'sw':
          'Jinsi ya Kulipa - Airtel Money\n1. Piga *150*60# ili kupata menyu yako ya Airtel Money. \n2. Chagua 1 \'Tuma Pesa\'.\n3. Chagua 2 \'Tuma mitandao minginei\'.\n4. Chagua 2 \'M-PESA\'. \n5.  Chagua 2 \'Weka lipa namba ya M-PESA\'.\n6. Chagua 1 \'Weka lipa namba ya M-PESA\'.\n7. Ingiza namba ya simu \"5351999\".\n8. Ingiza kiasi cha pesa unachotaka kutuma. \'10000\'.\n9. Hakiki taarifa na uingize namba ya siri.',
      'en':
          'How To Pay -  Airtel Money\n1. Dial *150*60# to get your Airtel Money Menu.\n2. Select 1 for  ”Send Money\".\n3. Select 2 for “Send to other network”.\n4. Select 2 for “M-PESA”.\n5.  Select 2 for “Pay M-PESA Merchant”..\n6. Select 1 for “Enter M-PESA Merchant number”.\n7. Enter Phone number: \"5351999\".\n8. Enter Amount: \"10000\".\n9. Confirm details and Enter PIN. \n',
    },
    'c173wnju': {
      'sw': 'Namba ya kampuni:',
      'en': 'Business Number:',
    },
    'vqd9laa9': {
      'sw': '5351999',
      'en': '5351999',
    },
    '9j1oeyst': {
      'sw': 'Jina la kampuni:',
      'en': 'Company Name:',
    },
    'if2a2wjm': {
      'sw': 'Dala Ujenzi',
      'en': 'Dala Ujenzi',
    },
    'folgzi5f': {
      'sw': 'Kiasi:',
      'en': 'Amount:',
    },
    's2s6h61b': {
      'sw': 'Ada:',
      'en': 'fees:',
    },
    'kpkfh7rm': {
      'sw': '***',
      'en': '***',
    },
    'tlj8lui3': {
      'sw': 'Anza',
      'en': 'Start',
    },
  },
  // DalaCRDB
  {
    'h4e63e3m': {
      'sw':
          'Jinsi ya Kulipa -CRDB Bank\n1. Piga *150*  # ili kupata menyu yako ya  Benk.\n2. Chagua Malipo.\n3. Chagua Lipa kwa M-PESA.\n4. Weka namba ya simu:  \'5351999\'. \n5. Weka kiasi: \"100000\".\n6. Weka nambari ya siri ya benki.',
      'en':
          'How To Pay -  CRDB Bank\n1. Dial *150*# to get your bank menu.\n2. Select Pay.\n3. Select Pay by M-PESA.\n4. Enter phone number: “5351999”.\n5. Enter amount: “100000”.\n7. Enter bank PIN. ',
    },
    'o2h7kltm': {
      'sw': 'Namba ya kampuni:',
      'en': 'Business Number:',
    },
    '3uznm06i': {
      'sw': '5351999',
      'en': '5351999',
    },
    '1slcu0yw': {
      'sw': 'Jina la kampuni:',
      'en': 'Company Name:',
    },
    '6q9rn952': {
      'sw': 'Dala Ujenzi',
      'en': 'Dala Ujenzi',
    },
    'azfwmln5': {
      'sw': 'Kiasi:',
      'en': 'Amount:',
    },
    '2f08sbhn': {
      'sw': 'Anza',
      'en': 'Start',
    },
  },
  // DalaNMB
  {
    '9o0q4ap8': {
      'sw':
          'Jinsi ya Kulipa - NMB Bank\n1. Piga *150*  # ili kupata menyu yako ya  Benk.\n2. Chagua Malipo.\n3. Chagua Lipa kwa M-PESA.\n4. Weka namba ya simu:  \'5351999\'. \n5. Weka kiasi: \"100000\".\n6. Weka nambari ya siri ya benki.',
      'en':
          'How To Pay -  NMB Bank\n1. Dial *150*# to get your bank menu.\n2. Select Pay.\n3. Select Pay by M-PESA.\n4. Enter phone number: “5351999”.\n5. Enter amount: “100000”.\n7. Enter bank PIN. ',
    },
    '7howkcyx': {
      'sw': 'Namba ya kampuni:',
      'en': 'Business Number:',
    },
    'p9s8op5f': {
      'sw': '5351999',
      'en': '5351999',
    },
    '3ok5p0bw': {
      'sw': 'Jina la kampuni:',
      'en': 'Company Name:',
    },
    'tv3olds8': {
      'sw': 'Dala Ujenzi',
      'en': 'Dala Ujenzi',
    },
    'a4k9y7je': {
      'sw': 'Kiasi:',
      'en': 'Amount:',
    },
    'nef6iul7': {
      'sw': 'Anza',
      'en': 'Start',
    },
  },
  // DalaBanks
  {
    'djfluozh': {
      'sw':
          'Jinsi ya Kulipa - Bank\n1. Piga *150*  # ili kupata menyu yako ya  Benk.\n2. Chagua Malipo.\n3. Chagua Lipa kwa M-PESA.\n4. Weka namba ya simu:  \'5351999\'. \n5. Weka kiasi: \"100000\".\n6. Weka nambari ya siri ya benki.',
      'en':
          'How To Pay -  Bank\n1. Dial *150*# to get your bank menu.\n2. Select Pay.\n3. Select Pay by M-PESA.\n4. Enter phone number: “5351999”.\n5. Enter amount: “100000”.\n7. Enter bank PIN. ',
    },
    'evb0mvtz': {
      'sw': 'Namba ya kampuni:',
      'en': 'Business Number:',
    },
    'u4zvd8a3': {
      'sw': '5351999',
      'en': '5351999',
    },
    'i5qtprhh': {
      'sw': 'Jina la kampuni:',
      'en': 'Company Name:',
    },
    'wx7ytjy5': {
      'sw': 'Dala Ujenzi',
      'en': 'Dala Ujenzi',
    },
    'da3tgy9v': {
      'sw': 'Kiasi:',
      'en': 'Amount:',
    },
    'oufw6ylo': {
      'sw': 'Anza',
      'en': 'Start',
    },
  },
  // RemovePending
  {
    'fgsg53vr': {
      'sw': 'Add or remove pending from a transaction.',
      'en': 'Add or remove pending from a transaction.',
    },
    '66g6zug5': {
      'sw': 'Remove Pending',
      'en': 'Remove Pending',
    },
    'rotzyrsi': {
      'sw': 'Add Pending',
      'en': 'Add Pending',
    },
  },
  // AdminPanel
  {
    'sy7nflh6': {
      'sw':
          'In admin panel you can view users list, transactions list, mortgage list, and posting a house.',
      'en': 'Add or remove pending from a transaction.',
    },
    'hqx1g23l': {
      'sw': 'View Lists 1',
      'en': 'View Lists 1',
    },
    '1gedfti4': {
      'sw': 'View List',
      'en': 'View List',
    },
  },
  // MortgageInfo
  {
    'rnfydts5': {
      'sw': 'Mortgage Information',
      'en': 'Mortgage Information',
    },
    'm35kxaz9': {
      'sw': 'Land:',
      'en': 'Land:',
    },
    'ga2ivzzk': {
      'sw': 'Down-payment:',
      'en': 'Down-payment:',
    },
    'nhtwvasr': {
      'sw': 'Duration:',
      'en': 'Duration:',
    },
    '10ndlska': {
      'sw': 'Type:',
      'en': 'Type:',
    },
    '9k7e10xo': {
      'sw': 'Monthly Income:',
      'en': 'Monthly Income:',
    },
  },
  // HomeReq
  {
    'uxwq2dsn': {
      'sw': 'Bajeti ya ujenzi',
      'en': 'Construction Budget ',
    },
    '40fshkmk': {
      'sw': 'gharama',
      'en': 'price',
    },
    'lxnntj35': {
      'sw': '',
      'en': '',
    },
    'to9ab9vd': {
      'sw': 'Idadi ya vyumba',
      'en': 'Number of rooms',
    },
    '5rdoxxuf': {
      'sw': '1',
      'en': '1',
    },
    'ygh43gzd': {
      'sw': '2',
      'en': '2',
    },
    'sru8pb6c': {
      'sw': '3',
      'en': '3',
    },
    '1lrtwtqo': {
      'sw': '4',
      'en': '4',
    },
    'v2vuer4z': {
      'sw': '5',
      'en': '5',
    },
    '9eef9n75': {
      'sw': '6',
      'en': '6',
    },
    '4zphgmtp': {
      'sw': 'chagua...',
      'en': 'Please select ...',
    },
    'siobtwq3': {
      'sw': 'Maelezo zaidi',
      'en': 'More details',
    },
    '8vn51522': {
      'sw': 'andika maelezo',
      'en': 'enter details',
    },
    'awvnuck1': {
      'sw': '',
      'en': '',
    },
    'klzhtip6': {
      'sw': 'Tuma',
      'en': 'Send',
    },
  },
  // RequestInfo
  {
    'j8fqjido': {
      'sw': 'House Request',
      'en': 'House Request',
    },
    'iulghzox': {
      'sw': 'Budget:',
      'en': 'Budget:',
    },
    'aan9llyf': {
      'sw': 'Number of Rooms:',
      'en': 'Number of Rooms:',
    },
    '1mq52evc': {
      'sw': 'More Details:',
      'en': ' More Details:',
    },
  },
  // PlanInfo
  {
    '90fy4tq2': {
      'sw': 'House Plan Information',
      'en': 'House Plan Information',
    },
    'c4lo4jww': {
      'sw': 'Amount:',
      'en': 'Amount:',
    },
    'ksmq6fst': {
      'sw': 'Transaction Status',
      'en': 'Phone No:',
    },
    'etui13ys': {
      'sw': 'PENDING',
      'en': 'PENDING',
    },
  },
  // DeletePlan
  {
    'w3z20sl9': {
      'sw': 'Futa Mpango',
      'en': 'Delete Plan',
    },
    'adlk8xh3': {
      'sw': 'Una uhakika unataka kufuta mpango \nwako wa ujenzi?',
      'en': 'Are you sure you want to delete your construction plan?',
    },
    'wkh7j1bd': {
      'sw': 'NDIO',
      'en': 'YES',
    },
  },
  // CardRequest
  {
    'rnhncw78': {
      'sw': 'Majina yako kamili (jina la kwanza na la mwisho).',
      'en': 'Full Name (First and Last name).',
    },
    'b1c7qnoi': {
      'sw': 'andika jina',
      'en': 'write name',
    },
    '9fggl17j': {
      'sw': '',
      'en': '',
    },
    'diq7epsa': {
      'sw': 'Aina ya Kadi.',
      'en': 'Type of Card.',
    },
    'lmuyk8h0': {
      'sw': 'Living Room Furnishing',
      'en': 'Living Room Furnishing',
    },
    '7cbltxk8': {
      'sw': 'Room Furnishing',
      'en': 'Room Furnishing',
    },
    'id9lf84t': {
      'sw': 'Dinning Furnishing',
      'en': 'Dinning Furnishing',
    },
    '0lh6nhg3': {
      'sw': 'Living Room Furnishing',
      'en': 'Living Room Furnishing',
    },
    'whyj7sut': {
      'sw': 'Kitchen Furnishing',
      'en': 'Kitchen Furnishing',
    },
    'id690in7': {
      'sw': 'chagua...',
      'en': 'Please select ...',
    },
    'v6k6vd58': {
      'sw': 'Tuma',
      'en': 'Send',
    },
  },
  // InterestReq
  {
    'o4f5ozrq': {
      'sw': 'Kipato cha mwezi',
      'en': 'Averge Monthly Income (Monthly Income)',
    },
    'vthowgg0': {
      'sw': 'Chini ya 1,000,000/=',
      'en': 'Below 1,000,000/=',
    },
    '3vurm5su': {
      'sw': 'Kati ya: 1,000,000/= mpaka 2,000,000/=',
      'en': 'Range: From 1,000,000/= to 2,000,000/=',
    },
    'dy8gp2xu': {
      'sw': 'Kati ya:  2,000,000/= mpaka 3,000,000/=',
      'en': 'Range: From 2,000,000/=  to 3,500,000/=',
    },
    'obyx1fqc': {
      'sw': 'Juu ya 3,000,000/= ',
      'en': 'Above 3,000,000/=',
    },
    'c0yf5l7q': {
      'sw': 'chagua...',
      'en': 'Please select ...',
    },
    '566elrks': {
      'sw': 'Mkopo wa miaka mingapi?',
      'en': 'Loan of how long?',
    },
    'zou3mao8': {
      'sw': 'Miaka 5 au chini',
      'en': '5 years or below',
    },
    'fiwqi1tt': {
      'sw': 'Kati ya: miaka 6 mpaka 10',
      'en': 'Range: From 6 years to 10',
    },
    'y818lp8g': {
      'sw': 'Kati ya: miaka 11 mpaka 15',
      'en': 'Range: From 11 years to 15',
    },
    'hguvz1z6': {
      'sw': 'Kati ya: miaka 16 mpaka 25',
      'en': 'Range: From 16 years to 25',
    },
    'x28njvj9': {
      'sw': 'Chagua...',
      'en': 'Please select ...',
    },
    'p4x1xpr2': {
      'sw': 'Kazi',
      'en': 'Employment Status',
    },
    'qxhwyrqu': {
      'sw': 'Mfanyakazi',
      'en': 'Employee ',
    },
    'i55j2sgy': {
      'sw': 'Mfanyabiashara',
      'en': 'Entrepreneur',
    },
    'h8fcfyec': {
      'sw': 'Chagua...',
      'en': 'Please select ...',
    },
    'iyan7x2r': {
      'sw': 'Tuma',
      'en': 'Send',
    },
  },
  // HouseLevel
  {
    'tmio4tyb': {
      'sw':
          'Chagua kiwango cha nyumba unachohitaji. Gharama ya nyumba inapanda kulingana na kiwango.',
      'en':
          'Choose the level of housing you need. The cost of housing rises according to the standard.',
    },
    'vp1a63my': {
      'sw': 'Kiwnago Cha Chini',
      'en': 'Sub Standard ',
    },
    '0ch12lms': {
      'sw': 'Kiwango Cha Kati',
      'en': 'Standard ',
    },
    'qx6rsquv': {
      'sw': 'Kiwango Cha Juu',
      'en': 'Premium ',
    },
    'hszppbmd': {
      'sw': 'Tuma',
      'en': 'Send',
    },
  },
  // HouseLevelUpdate
  {
    '1s0mcqdn': {
      'sw':
          'Chagua kiwango cha nyumba unachohitaji. Gharama ya nyumba inapanda kulingana na kiwango.',
      'en':
          'Choose the level of housing you need. The cost of housing rises according to the standard.',
    },
    'wwaz7noi': {
      'sw': 'Kiwnago Cha Chini',
      'en': 'Sub Standard ',
    },
    'mnr6olc9': {
      'sw': 'Kiwango Cha Kati',
      'en': 'Standard ',
    },
    'ef8hb6m7': {
      'sw': 'Kiwango Cha Juu',
      'en': 'Premium ',
    },
    'fai3vp8t': {
      'sw': 'Tuma',
      'en': 'Send',
    },
  },
  // CardInfo
  {
    've6htmpi': {
      'sw': 'Card  Information',
      'en': 'Card Information',
    },
    'akg0izhd': {
      'sw': 'Card Name:',
      'en': 'Card Name:',
    },
    '0we5i54u': {
      'sw': 'Username:',
      'en': 'Username:',
    },
    'i4ydwn9d': {
      'sw': 'Request Time:',
      'en': 'Request Time:',
    },
  },
  // Miscellaneous
  {
    'uw4si68v': {
      'sw': '',
      'en': '',
    },
    '6d1ylqct': {
      'sw': '',
      'en': '',
    },
    'yobs7okl': {
      'sw': '',
      'en': '',
    },
    '7ffcgwch': {
      'sw': '',
      'en': '',
    },
    'nlbavln6': {
      'sw': '',
      'en': '',
    },
    'l8q0tue7': {
      'sw': '',
      'en': '',
    },
    't1kedfxe': {
      'sw': '',
      'en': '',
    },
    'k8sd87k2': {
      'sw': '',
      'en': '',
    },
    'ye36wt9d': {
      'sw': '',
      'en': '',
    },
    '0l3x3xtq': {
      'sw': '',
      'en': '',
    },
    'rc4f4pic': {
      'sw': '',
      'en': '',
    },
    'h2nu4iv5': {
      'sw': '',
      'en': '',
    },
    's6w8bjrs': {
      'sw': '',
      'en': '',
    },
    'ovzbggn4': {
      'sw': '',
      'en': '',
    },
    'yq3u4u3n': {
      'sw': '',
      'en': '',
    },
    'd3kdqa8t': {
      'sw': '',
      'en': '',
    },
    'vbzfzihq': {
      'sw': '',
      'en': '',
    },
    '5uma4gey': {
      'sw': '',
      'en': '',
    },
    'ubyd9x0j': {
      'sw': '',
      'en': '',
    },
    'sf0tf7x2': {
      'sw': '',
      'en': '',
    },
    'krlb9cjd': {
      'sw': '',
      'en': '',
    },
    'h9mso4s9': {
      'sw': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
