@JS()
library lib.src.stripe;

import "package:js/js.dart";
import 'package:stripe_js/src/promise.dart';
export 'src/promise.dart';

/// Type definitions for stripe-v3 3.0
/// Project: https://stripe.com/
/// Definitions by: Andy Hawkins <https://github.com/a904guy/,http://a904guy.com>
/// Eric J. Smith <https://github.com/ejsmith>
/// Amrit Kahlon <https://github.com/amritk>
/// Adam Cmiel <https://github.com/adamcmiel>
/// Justin Leider <https://github.com/jleider>
/// Kamil Gałuszka <https://github.com/galuszkak>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
@JS()
external StripeStatic get Stripe;
@JS()
external set Stripe(StripeStatic v);

// Module stripe
@anonymous
@JS()
abstract class StripeStatic {
  external stripe_Stripe call(String publicKey);
  external num get version;
  external set version(num v);
}

@anonymous
@JS()
abstract class stripe_Stripe {
  external Elements elements([ElementsCreateOptions options]);
  external PromiseType<TokenResponse> createToken(Element element,
      [TokenOptions options]);
  external PromiseType<TokenResponse> createSource(SourceOptions options);
}

@anonymous
@JS()
abstract class StripeOptions {
  external String get stripeAccount;
  external set stripeAccount(String v);
  external factory StripeOptions({String stripeAccount});
}

@anonymous
@JS()
abstract class TokenOptions {
  external String get name;
  external set name(String v);
  external String get address_line1;
  external set address_line1(String v);
  external String get address_line2;
  external set address_line2(String v);
  external String get address_city;
  external set address_city(String v);
  external String get address_state;
  external set address_state(String v);
  external String get address_zip;
  external set address_zip(String v);
  external String get address_country;
  external set address_country(String v);
  external String get currency;
  external set currency(String v);
  external factory TokenOptions(
      {String name,
      String address_line1,
      String address_line2,
      String address_city,
      String address_state,
      String address_zip,
      String address_country,
      String currency});
}

@anonymous
@JS()
abstract class SourceOptions {
  external String get type;
  external set type(String v);
  external String /*'redirect'|'receiver'|'code_verification'|'none'*/ get flow;
  external set flow(
      String /*'redirect'|'receiver'|'code_verification'|'none'*/ v);
  external dynamic /*{
            iban: string;
        }*/
      get sepa_debit;
  external set sepa_debit(
      dynamic /*{
            iban: string;
        }*/
      v);
  external String get currency;
  external set currency(String v);
  external num get amount;
  external set amount(num v);
  external dynamic
      /*{
            address?: {
                city?: string;
                country?: string;
                line1?: string;
                line2?: string;
                postal_code?: string;
                state?: string;
            };
            name?: string;
            email?: string;
            phone?: string;
        }*/
      get owner;
  external set owner(
      dynamic /*{
            address?: {
                city?: string;
                country?: string;
                line1?: string;
                line2?: string;
                postal_code?: string;
                state?: string;
            };
            name?: string;
            email?: string;
            phone?: string;
        }*/
      v);
  external dynamic /*{}*/ get metadata;
  external set metadata(dynamic /*{}*/ v);
  external String get statement_descriptor;
  external set statement_descriptor(String v);
  external dynamic /*{
            return_url: string;
        }*/
      get redirect;
  external set redirect(
      dynamic /*{
            return_url: string;
        }*/
      v);
  external String get token;
  external set token(String v);
  external String /*'reusable'|'single_use'*/ get usage;
  external set usage(String /*'reusable'|'single_use'*/ v);
  external factory SourceOptions(
      {String type,
      String /*'redirect'|'receiver'|'code_verification'|'none'*/ flow,
      dynamic /*{
            iban: string;
        }*/
      sepa_debit,
      String currency,
      num amount,
      dynamic /*{
            address?: {
                city?: string;
                country?: string;
                line1?: string;
                line2?: string;
                postal_code?: string;
                state?: string;
            };
            name?: string;
            email?: string;
            phone?: string;
        }*/
      owner,
      dynamic /*{}*/ metadata,
      String statement_descriptor,
      dynamic /*{
            return_url: string;
        }*/
      redirect,
      String token,
      String /*'reusable'|'single_use'*/ usage});
}

@anonymous
@JS()
abstract class Token {
  external String get id;
  external set id(String v);
  external String get object;
  external set object(String v);
  external BankAccount get bank_account;
  external set bank_account(BankAccount v);
  external Card get card;
  external set card(Card v);
  external String get client_ip;
  external set client_ip(String v);
  external num get created;
  external set created(num v);
  external bool get livemode;
  external set livemode(bool v);
  external String get type;
  external set type(String v);
  external bool get used;
  external set used(bool v);
  external factory Token(
      {String id,
      String object,
      BankAccount bank_account,
      Card card,
      String client_ip,
      num created,
      bool livemode,
      String type,
      bool used});
}

@anonymous
@JS()
abstract class TokenResponse {
  external Token get token;
  external set token(Token v);
  external Error get error;
  external set error(Error v);
  external factory TokenResponse({Token token, Error error});
}

@anonymous
@JS()
abstract class Source {
  external String get client_secret;
  external set client_secret(String v);
  external num get created;
  external set created(num v);
  external String get currency;
  external set currency(String v);
  external String get id;
  external set id(String v);
  external dynamic
      /*{
            address: string | null;
            email: string | null;
            name: string | null;
            phone: string | null;
            verified_address: string | null;
            verified_email: string | null;
            verified_name: string | null;
            verified_phone: string | null;
        }*/
      get owner;
  external set owner(
      dynamic /*{
            address: string | null;
            email: string | null;
            name: string | null;
            phone: string | null;
            verified_address: string | null;
            verified_email: string | null;
            verified_name: string | null;
            verified_phone: string | null;
        }*/
      v);
  external dynamic
      /*{
            bank_code: string | null;
            country: string | null;
            fingerprint: string;
            last4: string;
            mandate_reference: string;
        }*/
      get sepa_debit;
  external set sepa_debit(
      dynamic /*{
            bank_code: string | null;
            country: string | null;
            fingerprint: string;
            last4: string;
            mandate_reference: string;
        }*/
      v);
  external factory Source(
      {String client_secret,
      num created,
      String currency,
      String id,
      dynamic /*{
            address: string | null;
            email: string | null;
            name: string | null;
            phone: string | null;
            verified_address: string | null;
            verified_email: string | null;
            verified_name: string | null;
            verified_phone: string | null;
        }*/
      owner,
      dynamic /*{
            bank_code: string | null;
            country: string | null;
            fingerprint: string;
            last4: string;
            mandate_reference: string;
        }*/
      sepa_debit});
}

@anonymous
@JS()
abstract class SourceResponse {
  external Source get source;
  external set source(Source v);
  external Error get error;
  external set error(Error v);
  external factory SourceResponse({Source source, Error error});
}

@anonymous
@JS()
abstract class Error {
  external String get type;
  external set type(String v);
  external String get charge;
  external set charge(String v);
  external String get message;
  external set message(String v);
  external String get code;
  external set code(String v);
  external String get decline_code;
  external set decline_code(String v);
  external String get param;
  external set param(String v);
  external factory Error(
      {String type,
      String charge,
      String message,
      String code,
      String decline_code,
      String param});
}

/*type statusType =
    'new' | 'validated' | 'verified' | 'verification_failed' | 'errored';*/
@anonymous
@JS()
abstract class BankAccount {
  external String get id;
  external set id(String v);
  external String get object;
  external set object(String v);
  external String get account_holder_name;
  external set account_holder_name(String v);
  external String get account_holder_type;
  external set account_holder_type(String v);
  external String get bank_name;
  external set bank_name(String v);
  external String get country;
  external set country(String v);
  external String get currency;
  external set currency(String v);
  external String get fingerprint;
  external set fingerprint(String v);
  external String get last4;
  external set last4(String v);
  external String get routing_number;
  external set routing_number(String v);
  external String /*'new'|'validated'|'verified'|'verification_failed'|'errored'*/ get status;
  external set status(
      String /*'new'|'validated'|'verified'|'verification_failed'|'errored'*/ v);
  external factory BankAccount(
      {String id,
      String object,
      String account_holder_name,
      String account_holder_type,
      String bank_name,
      String country,
      String currency,
      String fingerprint,
      String last4,
      String routing_number,
      String /*'new'|'validated'|'verified'|'verification_failed'|'errored'*/ status});
}

/*type brandType = 'Visa' |
    'American Express' |
    'MasterCard' |
    'Discover' |
    'JCB' |
    'Diners Club' |
    'Unknown';*/
/*type checkType = 'pass' | 'fail' | 'unavailable' | 'unchecked';*/
/*type fundingType = 'credit' | 'debit' | 'prepaid' | 'unknown';*/
/*type tokenizationType = 'apple_pay' | 'android_pay';*/
@anonymous
@JS()
abstract class Card {
  external String get id;
  external set id(String v);
  external String get object;
  external set object(String v);
  external String get address_city;
  external set address_city(String v);
  external String get address_country;
  external set address_country(String v);
  external String get address_line1;
  external set address_line1(String v);
  external String /*'pass'|'fail'|'unavailable'|'unchecked'*/ get address_line1_check;
  external set address_line1_check(
      String /*'pass'|'fail'|'unavailable'|'unchecked'*/ v);
  external String get address_line2;
  external set address_line2(String v);
  external String get address_state;
  external set address_state(String v);
  external String get address_zip;
  external set address_zip(String v);
  external String /*'pass'|'fail'|'unavailable'|'unchecked'*/ get address_zip_check;
  external set address_zip_check(
      String /*'pass'|'fail'|'unavailable'|'unchecked'*/ v);
  external String /*'Visa'|'American Express'|'MasterCard'|'Discover'|'JCB'|'Diners Club'|'Unknown'*/ get brand;
  external set brand(
      String /*'Visa'|'American Express'|'MasterCard'|'Discover'|'JCB'|'Diners Club'|'Unknown'*/ v);
  external String get country;
  external set country(String v);
  external String get currency;
  external set currency(String v);
  external String /*'pass'|'fail'|'unavailable'|'unchecked'*/ get cvc_check;
  external set cvc_check(String /*'pass'|'fail'|'unavailable'|'unchecked'*/ v);
  external String get dynamic_last4;
  external set dynamic_last4(String v);
  external num get exp_month;
  external set exp_month(num v);
  external num get exp_year;
  external set exp_year(num v);
  external String get fingerprint;
  external set fingerprint(String v);
  external String /*'credit'|'debit'|'prepaid'|'unknown'*/ get funding;
  external set funding(String /*'credit'|'debit'|'prepaid'|'unknown'*/ v);
  external String get last4;
  external set last4(String v);
  external dynamic get metadata;
  external set metadata(dynamic v);
  external String get name;
  external set name(String v);
  external String /*'apple_pay'|'android_pay'*/ get tokenization_method;
  external set tokenization_method(String /*'apple_pay'|'android_pay'*/ v);
  external factory Card(
      {String id,
      String object,
      String address_city,
      String address_country,
      String address_line1,
      String /*'pass'|'fail'|'unavailable'|'unchecked'*/ address_line1_check,
      String address_line2,
      String address_state,
      String address_zip,
      String /*'pass'|'fail'|'unavailable'|'unchecked'*/ address_zip_check,
      String /*'Visa'|'American Express'|'MasterCard'|'Discover'|'JCB'|'Diners Club'|'Unknown'*/ brand,
      String country,
      String currency,
      String /*'pass'|'fail'|'unavailable'|'unchecked'*/ cvc_check,
      String dynamic_last4,
      num exp_month,
      num exp_year,
      String fingerprint,
      String /*'credit'|'debit'|'prepaid'|'unknown'*/ funding,
      String last4,
      dynamic metadata,
      String name,
      String /*'apple_pay'|'android_pay'*/ tokenization_method});
}

/// Container for all elements related types

// Module elements
@anonymous
@JS()
abstract class ElementsCreateOptions {
  external List<Font> get fonts;
  external set fonts(List<Font> v);
  external String get locale;
  external set locale(String v);
  external factory ElementsCreateOptions({List<Font> fonts, String locale});
}

typedef void handler(
    [ElementChangeResponse response]); /*type eventTypes = 'blur' | 'change' | 'focus' | 'ready';*/

@anonymous
@JS()
abstract class Element {
  /// HTMLElement keeps giving this error for some reason:
  /// Cannot find name 'HTMLElement'
  external void mount(dynamic domElement);
  external void on(
      String /*'blur'|'change'|'focus'|'ready'*/ event, handler handler);
  external void focus();
  external void blur();
  external void clear();
  external void unmount();
  external void destroy();
  external void update(ElementsOptions options);
}

@anonymous
@JS()
abstract class ElementChangeResponse {
  external String get brand;
  external set brand(String v);
  external bool get complete;
  external set complete(bool v);
  external bool get empty;
  external set empty(bool v);
  external dynamic /*{ postalCode: string | number }*/ get value;
  external set value(dynamic /*{ postalCode: string | number }*/ v);
  external Error get error;
  external set error(Error v);
  external factory ElementChangeResponse(
      {String brand,
      bool complete,
      bool empty,
      dynamic /*{ postalCode: string | number }*/ value,
      Error error});
}

@anonymous
@JS()
abstract class ElementOptions {
  external List<Font> get fonts;
  external set fonts(List<Font> v);
  external String get locale;
  external set locale(String v);
  external factory ElementOptions({List<Font> fonts, String locale});
}

/*type elementsType =
    'card' | 'cardNumber' | 'cardExpiry' | 'cardCvc' | 'postalCode';*/
@anonymous
@JS()
abstract class Elements {
  external Element create(
      String /*'card'|'cardNumber'|'cardExpiry'|'cardCvc'|'postalCode'*/ type,
      ElementsOptions options);
}

@anonymous
@JS()
abstract class ElementsOptions {
  external dynamic
      /*{
                base?: string;
                complete?: string;
                empty?: string;
                focus?: string;
                invalid?: string;
                webkitAutofill?: string;
            }*/
      get classes;
  external set classes(
      dynamic /*{
                base?: string;
                complete?: string;
                empty?: string;
                focus?: string;
                invalid?: string;
                webkitAutofill?: string;
            }*/
      v);
  external bool get hidePostalCode;
  external set hidePostalCode(bool v);
  external bool get hideIcon;
  external set hideIcon(bool v);
  external String /*'solid'|'default'*/ get iconStyle;
  external set iconStyle(String /*'solid'|'default'*/ v);
  external dynamic
      /*{
                base?: Style;
                complete?: Style;
                empty?: Style;
                invalid?: Style;
            }*/
      get style;
  external set style(
      dynamic /*{
                base?: Style;
                complete?: Style;
                empty?: Style;
                invalid?: Style;
            }*/
      v);
  external dynamic /*String|JSMap of <String,String>*/ get value;
  external set value(dynamic /*String|JSMap of <String,String>*/ v);
  external factory ElementsOptions(
      {dynamic /*{
                base?: string;
                complete?: string;
                empty?: string;
                focus?: string;
                invalid?: string;
                webkitAutofill?: string;
            }*/
      classes,
      bool hidePostalCode,
      bool hideIcon,
      String /*'solid'|'default'*/ iconStyle,
      dynamic /*{
                base?: Style;
                complete?: Style;
                empty?: Style;
                invalid?: Style;
            }*/
      style,
      dynamic /*String|JSMap of <String,String>*/ value});
}

@anonymous
@JS()
abstract class Style implements StyleOptions {
  external StyleOptions get string /*":hover"*/;
  external set string /*":hover"*/ (StyleOptions v);
  external factory Style(
      {StyleOptions string /*":hover"*/,
      String color,
      String fontFamily,
      String fontSize,
      String fontSmoothing,
      String fontStyle,
      String fontVariant,
      String iconColor,
      String lineHeight,
      String letterSpacing,
      String textDecoration,
      String textShadow,
      String textTransform});
}

@anonymous
@JS()
abstract class Font {
  external String get family;
  external set family(String v);
  external String get src;
  external set src(String v);
  external String get style;
  external set style(String v);
  external String get unicodeRange;
  external set unicodeRange(String v);
  external String get weight;
  external set weight(String v);
  external String get cssSrc;
  external set cssSrc(String v);
  external factory Font(
      {String family,
      String src,
      String style,
      String unicodeRange,
      String weight,
      String cssSrc});
}

@anonymous
@JS()
abstract class StyleOptions {
  external String get color;
  external set color(String v);
  external String get fontFamily;
  external set fontFamily(String v);
  external String get fontSize;
  external set fontSize(String v);
  external String get fontSmoothing;
  external set fontSmoothing(String v);
  external String get fontStyle;
  external set fontStyle(String v);
  external String get fontVariant;
  external set fontVariant(String v);
  external String get iconColor;
  external set iconColor(String v);
  external String get lineHeight;
  external set lineHeight(String v);
  external String get letterSpacing;
  external set letterSpacing(String v);
  external String get textDecoration;
  external set textDecoration(String v);
  external String get textShadow;
  external set textShadow(String v);
  external String get textTransform;
  external set textTransform(String v);
  external factory StyleOptions(
      {String color,
      String fontFamily,
      String fontSize,
      String fontSmoothing,
      String fontStyle,
      String fontVariant,
      String iconColor,
      String lineHeight,
      String letterSpacing,
      String textDecoration,
      String textShadow,
      String textTransform});
}

// End module elements

// End module stripe
