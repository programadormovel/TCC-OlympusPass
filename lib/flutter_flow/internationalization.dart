import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

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
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

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
  // MeusTreinos
  {
    'jw5tle4s': {
      'pt': 'Treino superior 1',
      'en': '',
    },
    'ube39w4f': {
      'pt': 'Supino inclinado',
      'en': '',
    },
    'y6bb24lx': {
      'pt': '15 Fev, 2022',
      'en': '',
    },
    'ixfmuj8i': {
      'pt': '3x de 12',
      'en': '',
    },
    '0om8j5m6': {
      'pt': 'Supino Reto com Barra',
      'en': '',
    },
    '43h4rt1x': {
      'pt': '15 Fev, 2022',
      'en': '',
    },
    'mdgy7u29': {
      'pt': '3x de 12',
      'en': '',
    },
    '98nl8xil': {
      'pt': 'Supino Reto com Halteres',
      'en': '',
    },
    'ehnh6wg5': {
      'pt': '15 Fev, 2022',
      'en': '',
    },
    'ubdasayx': {
      'pt': '3x de 10',
      'en': '',
    },
    '041gf39g': {
      'pt': 'Crucifixo Reto',
      'en': '',
    },
    'ez9ou6e0': {
      'pt': '15 Fev, 2022',
      'en': '',
    },
    'zs7wpsda': {
      'pt': '3x de 10',
      'en': '',
    },
    'wdrt0zdk': {
      'pt': 'Treino Superior adicional 1',
      'en': '',
    },
    'y11pir6c': {
      'pt': 'Crucifixo no Cross Over',
      'en': '',
    },
    'h8lhispq': {
      'pt': '15 Fev, 2022',
      'en': '',
    },
    'g8n2trw3': {
      'pt': '3x de 10',
      'en': '',
    },
    'czc0hjie': {
      'pt': 'Flexão de Braços',
      'en': '',
    },
    'nvhvrj3s': {
      'pt': '15 Fev, 2022',
      'en': '',
    },
    'a8htiu1e': {
      'pt': '4x de 15',
      'en': '',
    },
    '30yf63cj': {
      'pt': 'Meus Treinos',
      'en': '',
    },
    'k0s54g0n': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Inicio
  {
    '8snixyv3': {
      'pt': 'Cadastrar-se',
      'en': '',
    },
    'ouwkeqsk': {
      'pt': 'Login',
      'en': '',
    },
    'sord7xnb': {
      'pt': 'Copyrighting© Olympus Pass',
      'en': '',
    },
    'qizg8qsc': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Login
  {
    '9ipeygj9': {
      'pt': 'Login',
      'en': '',
    },
    'ksu8ofb4': {
      'pt': 'Seu Email',
      'en': '',
    },
    'bib2in6u': {
      'pt': 'Seu Email',
      'en': '',
    },
    '0urxjhpc': {
      'pt': 'Sua Senha',
      'en': '',
    },
    'vzfg0yb7': {
      'pt': 'Sua senha',
      'en': '',
    },
    'v7quw1wt': {
      'pt': 'Login',
      'en': '',
    },
    'zr2vqnmg': {
      'pt': 'Please fill in a valid email address...',
      'en': '',
    },
    'b2tha1ij': {
      'pt': 'That password doesn\'t match.',
      'en': '',
    },
    'e9q7a6qe': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Cadastro
  {
    'dy3qsdrj': {
      'pt': 'Cadastro',
      'en': '',
    },
    '2q0cuefk': {
      'pt': 'Nome Completo',
      'en': '',
    },
    '5el53y40': {
      'pt': 'Insira seu nome...',
      'en': '',
    },
    'cotoeive': {
      'pt': 'Email',
      'en': '',
    },
    'd5sh8nrj': {
      'pt': 'Insira seu email...',
      'en': '',
    },
    'i84hc9va': {
      'pt': 'Senha',
      'en': '',
    },
    'jrfmesjk': {
      'pt': 'Insira sua senha...',
      'en': '',
    },
    '884pks44': {
      'pt': 'Confirmar Senha',
      'en': '',
    },
    'q0jn4f5b': {
      'pt': 'Confirme sua senha...',
      'en': '',
    },
    'mpro8b35': {
      'pt': 'Criar Conta',
      'en': '',
    },
    'sdoo5ng6': {
      'pt': 'Já possui uma conta?',
      'en': '',
    },
    'ri7zojaw': {
      'pt': 'Login',
      'en': '',
    },
    'sy7dzn0t': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Contato
  {
    't73hot22': {
      'pt': 'Para entrar em contato, preencha as seguintes informações.',
      'en': '',
    },
    'l1od415u': {
      'pt': 'Seu Email',
      'en': '',
    },
    '916ucqej': {
      'pt': 'Seu Email...',
      'en': '',
    },
    'qjsjss8j': {
      'pt': 'Seu Nome',
      'en': '',
    },
    'x1ojvn3n': {
      'pt': 'Seu Nome...',
      'en': '',
    },
    'kgeq2b61': {
      'pt': 'Assunto',
      'en': '',
    },
    'peaxombt': {
      'pt': 'Assunto do Contato...',
      'en': '',
    },
    'j87ulxwb': {
      'pt': 'Descrição',
      'en': '',
    },
    'fdu5dj0z': {
      'pt': 'Descreva Aqui Detalhadamente Sua Solicitação',
      'en': '',
    },
    '29p3a6x9': {
      'pt': 'Enviar',
      'en': '',
    },
    'gjm5uwpz': {
      'pt':
          'Nossa equipe de atendimento está disponível de segunda à sábado das 09h às 18h, exceto feriados.',
      'en': '',
    },
    'zijps7t3': {
      'pt': 'Contato',
      'en': '',
    },
    'ghygf6l0': {
      'pt': 'Home',
      'en': '',
    },
  },
  // CodigodeConfirmacaoSMS
  {
    'jaloqeq7': {
      'pt': 'Confirme seu Código',
      'en': '',
    },
    '2qiinjmt': {
      'pt':
          'Esse código é necessário para alterar sua senha e  manter sua conta segura',
      'en': '',
    },
    '59ucl2x2': {
      'pt': 'Confirmar e Continuar',
      'en': '',
    },
    'gyxwe1io': {
      'pt': 'Home',
      'en': '',
    },
  },
  // RequisicaoSMS
  {
    'ntk0ydkm': {
      'pt':
          'Insira seu email abaixo e você receberá um link para alterar sua senha:',
      'en': '',
    },
    'rhnnu684': {
      'pt': 'Seu Telefone',
      'en': '',
    },
    'ntoz255x': {
      'pt': 'Nós enviaremos um código SMS para seu celular...',
      'en': '',
    },
    'buy4juws': {
      'pt': 'Enviar SMS',
      'en': '',
    },
    '1uqnwpbg': {
      'pt': 'Please fill in a new password..',
      'en': '',
    },
    'kb5mc5fa': {
      'pt': 'Alterar Senha',
      'en': '',
    },
    '08n6s46p': {
      'pt': 'Home',
      'en': '',
    },
  },
  // TelaInicialOlympusPass
  {
    'fwx45qcu': {
      'pt': 'Bem Vindo (a),',
      'en': '',
    },
    'velwahri': {
      'pt': 'New Customers',
      'en': '',
    },
    's0tog4gy': {
      'pt': '24',
      'en': '',
    },
    'm8j0b2d8': {
      'pt': 'New Contracts',
      'en': '',
    },
    '5gw6kwav': {
      'pt': '3,200',
      'en': '',
    },
    'ez1cfsx2': {
      'pt': 'Gráficos de Movimentação',
      'en': '',
    },
    'o0plrqpu': {
      'pt': 'Movimentação da Academia',
      'en': '',
    },
    's12tvwci': {
      'pt': 'Veja o Horário mais propício para treinar',
      'en': '',
    },
    'j3m8dhp8': {
      'pt': 'Tasks',
      'en': '',
    },
    '6lhr3rc3': {
      'pt': 'Completed',
      'en': '',
    },
    '9dajh5vj': {
      'pt': 'Movimentação da Academia Hoje',
      'en': '',
    },
    'mje90fd7': {
      'pt': ' ',
      'en': '',
    },
    'o5t6vn1d': {
      'pt': 'Contract Activity',
      'en': '',
    },
    'eax25p7m': {
      'pt': 'Below is an a summary of activity.',
      'en': '',
    },
    'b7wt5ym1': {
      'pt': 'Device Management',
      'en': '',
    },
    '5zcxfs5j': {
      'pt': 'Below is an a summary of activity.',
      'en': '',
    },
    'l84e86iz': {
      'pt': 'Dashboard',
      'en': '',
    },
    'f2j5b3t7': {
      'pt': '__',
      'en': '',
    },
  },
  // MinhaConta
  {
    '49mu4e24': {
      'pt': 'Perfil do Aluno',
      'en': '',
    },
    'xn9lw49v': {
      'pt': 'Aqui estão seus dados e informações',
      'en': '',
    },
    'xm5ezjb1': {
      'pt': 'Plano Premium',
      'en': '',
    },
    'pxltxxmj': {
      'pt': 'Meus Treinos',
      'en': '',
    },
    'v9smu92q': {
      'pt': 'Alterar Senha',
      'en': '',
    },
    '5odpmtbp': {
      'pt': 'Ajuda e Suporte',
      'en': '',
    },
    'hy6zapgc': {
      'pt': 'Modo Claro',
      'en': '',
    },
    'v58uapl8': {
      'pt': 'Modo Escuro',
      'en': '',
    },
    'rj9ao452': {
      'pt': 'Voltar',
      'en': '',
    },
    '88svcq0u': {
      'pt': 'Olympus Pass',
      'en': '',
    },
    'mcorqpkb': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Menu
  {
    'dito1ayn': {
      'pt': 'Bem Vindo,',
      'en': '',
    },
    'djgvgy7l': {
      'pt': 'Minha Conta',
      'en': '',
    },
    'f1max98i': {
      'pt': 'Contato',
      'en': '',
    },
    'gimiveqg': {
      'pt': 'Localização da  Academia',
      'en': '',
    },
    'gwvy5ccf': {
      'pt': 'Sobre Nós',
      'en': '',
    },
    's35bn8np': {
      'pt': 'Sair da Conta',
      'en': '',
    },
    'sb69kh6e': {
      'pt': 'App Version v2.0',
      'en': '',
    },
    's1omrn4s': {
      'pt': '--',
      'en': '',
    },
  },
  // LocalizacaoAcademia
  {
    '96yzkbgj': {
      'pt': 'Localização da Academia',
      'en': '',
    },
    'oa8e5015': {
      'pt': 'Nosso Endereço',
      'en': '',
    },
    'gmeoo324': {
      'pt':
          'R. Min. Raphael de Barros Monteiro, 117 - Jardim dos Camargos, Barueri - SP, 06410-080',
      'en': '',
    },
    'mpm0qxio': {
      'pt': 'Obter Rota no Mapa',
      'en': '',
    },
    'sqfgiwul': {
      'pt': 'Home',
      'en': '',
    },
  },
  // SobreNos
  {
    '5r1yb7yb': {
      'pt': 'Olympus Pass',
      'en': '',
    },
    'sp73mhnh': {
      'pt': 'Esse código é necessário para manter sua conta segura',
      'en': '',
    },
    'gh0uhn54': {
      'pt': 'Voltar Para Menu',
      'en': '',
    },
    'nde85bnl': {
      'pt': 'Sobre Nós',
      'en': '',
    },
    '7mnvg47r': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'vhie9n4v': {
      'pt': '',
      'en': '',
    },
    '7ythhzeu': {
      'pt': '',
      'en': '',
    },
    '7sr3f1dp': {
      'pt': '',
      'en': '',
    },
    'v2b79bw9': {
      'pt': '',
      'en': '',
    },
    'f8qgfkrp': {
      'pt': '',
      'en': '',
    },
    '14uksx8c': {
      'pt': '',
      'en': '',
    },
    'xverwl7x': {
      'pt': '',
      'en': '',
    },
    'w38h9mpr': {
      'pt': '',
      'en': '',
    },
    '6q1vb2vg': {
      'pt': '',
      'en': '',
    },
    '984rg8dc': {
      'pt': '',
      'en': '',
    },
    'yonly3ci': {
      'pt': '',
      'en': '',
    },
    'm5u3xqmx': {
      'pt': '',
      'en': '',
    },
    '6un1sln0': {
      'pt': '',
      'en': '',
    },
    '9os30vnd': {
      'pt': '',
      'en': '',
    },
    'k0grzr7r': {
      'pt': '',
      'en': '',
    },
    'kc51jt8f': {
      'pt': '',
      'en': '',
    },
    'cnmnxu07': {
      'pt': '',
      'en': '',
    },
    'hrs4f9ys': {
      'pt': '',
      'en': '',
    },
    'jwhjx02j': {
      'pt': '',
      'en': '',
    },
    '1du2fha0': {
      'pt': '',
      'en': '',
    },
    'crbifbim': {
      'pt': '',
      'en': '',
    },
    'cixa7m8n': {
      'pt': '',
      'en': '',
    },
    'n4vuwnc3': {
      'pt': '',
      'en': '',
    },
    'pky5d311': {
      'pt': '',
      'en': '',
    },
    'sarilzj4': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
