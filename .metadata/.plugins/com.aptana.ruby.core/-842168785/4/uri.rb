module URI
  include URI::RFC2396_REGEXP

  ABS_PATH = /\A\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*\z/
  ABS_URI = /\A\s*
        ([a-zA-Z][\-+.a-zA-Z\d]*):                           (?# 1: scheme)
        (?:
           ((?:[\-_.!~*'()a-zA-Z\d;?:@&=+$,]|%[a-fA-F\d]{2})(?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*)                    (?# 2: opaque)
        |
           (?:(?:
             \/\/(?:
                 (?:(?:((?:[\-_.!~*'()a-zA-Z\d;:&=+$,]|%[a-fA-F\d]{2})*)@)?        (?# 3: userinfo)
                   (?:((?:(?:[a-zA-Z0-9\-.]|%\h\h)+|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|\[(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})|(?:(?:[a-fA-F\d]{1,4}:)*[a-fA-F\d]{1,4})?::(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}))?)\]))(?::(\d*))?))? (?# 4: host, 5: port)
               |
                 ((?:[\-_.!~*'()a-zA-Z\d$,;:@&=+]|%[a-fA-F\d]{2})+)                 (?# 6: registry)
               )
             |
             (?!\/\/))                           (?# XXX: '\/\/' is the mark for hostport)
             (\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*)?                    (?# 7: path)
           )(?:\?((?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*))?                 (?# 8: query)
        )
        (?:\#((?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*))?                  (?# 9: fragment)
      \s*\z/x
  ABS_URI_REF = /
        ([a-zA-Z][\-+.a-zA-Z\d]*):                           (?# 1: scheme)
        (?:
           ((?:[\-_.!~*'()a-zA-Z\d;?:@&=+$,]|%[a-fA-F\d]{2})(?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*)                    (?# 2: opaque)
        |
           (?:(?:
             \/\/(?:
                 (?:(?:((?:[\-_.!~*'()a-zA-Z\d;:&=+$,]|%[a-fA-F\d]{2})*)@)?        (?# 3: userinfo)
                   (?:((?:(?:[a-zA-Z0-9\-.]|%\h\h)+|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|\[(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})|(?:(?:[a-fA-F\d]{1,4}:)*[a-fA-F\d]{1,4})?::(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}))?)\]))(?::(\d*))?))? (?# 4: host, 5: port)
               |
                 ((?:[\-_.!~*'()a-zA-Z\d$,;:@&=+]|%[a-fA-F\d]{2})+)                 (?# 6: registry)
               )
             |
             (?!\/\/))                           (?# XXX: '\/\/' is the mark for hostport)
             (\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*)?                    (?# 7: path)
           )(?:\?((?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*))?                 (?# 8: query)
        )
        (?:\#((?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*))?                  (?# 9: fragment)
      /x
  BadURIError = URI::BadURIError
  DEFAULT_PARSER = #<URI::RFC2396_Parser:0x00007f98aa10f0f0>
  ESCAPED = /%[a-fA-F\d]{2}/
  Error = URI::Error
  Escape = URI::Escape
  FRAGMENT = /\A(?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*\z/
  FTP = URI::FTP
  Generic = URI::Generic
  HOST = /\A(?:(?:[a-zA-Z0-9\-.]|%\h\h)+|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|\[(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})|(?:(?:[a-fA-F\d]{1,4}:)*[a-fA-F\d]{1,4})?::(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}))?)\])\z/
  HTML5ASCIIINCOMPAT = "expression"
  HTTP = URI::HTTP
  HTTPS = URI::HTTPS
  InvalidComponentError = URI::InvalidComponentError
  InvalidURIError = URI::InvalidURIError
  LDAP = URI::LDAP
  LDAPS = URI::LDAPS
  MailTo = URI::MailTo
  OPAQUE = /\A(?:[\-_.!~*'()a-zA-Z\d;?:@&=+$,]|%[a-fA-F\d]{2})(?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*\z/
  PORT = /\A\d*\z/
  Parser = URI::RFC2396_Parser
  QUERY = /\A(?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*\z/
  REGEXP = URI::RFC2396_REGEXP
  REGISTRY = /\A(?:[\-_.!~*'()a-zA-Z\d$,;:@&=+]|%[a-fA-F\d]{2})+\z/
  REL_PATH = /\A(?:[\-_.!~*'()a-zA-Z\d;@&=+$,]|%[a-fA-F\d]{2})+(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*)?\z/
  REL_URI = /\A\s*
        (?:
          (?:
            \/\/
            (?:
              (?:((?:[\-_.!~*'()a-zA-Z\d;:&=+$,]|%[a-fA-F\d]{2})*)@)?       (?# 1: userinfo)
                ((?:(?:[a-zA-Z0-9\-.]|%\h\h)+|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|\[(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})|(?:(?:[a-fA-F\d]{1,4}:)*[a-fA-F\d]{1,4})?::(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}))?)\]))?(?::(\d*))?  (?# 2: host, 3: port)
            |
              ((?:[\-_.!~*'()a-zA-Z\d$,;:@&=+]|%[a-fA-F\d]{2})+)             (?# 4: registry)
            )
          )
        |
          ((?:[\-_.!~*'()a-zA-Z\d;@&=+$,]|%[a-fA-F\d]{2})+)              (?# 5: rel_segment)
        )?
        (\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*)?                  (?# 6: abs_path)
        (?:\?((?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*))?              (?# 7: query)
        (?:\#((?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*))?           (?# 8: fragment)
      \s*\z/x
  REL_URI_REF = /
        (?:
          (?:
            \/\/
            (?:
              (?:((?:[\-_.!~*'()a-zA-Z\d;:&=+$,]|%[a-fA-F\d]{2})*)@)?       (?# 1: userinfo)
                ((?:(?:[a-zA-Z0-9\-.]|%\h\h)+|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|\[(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})|(?:(?:[a-fA-F\d]{1,4}:)*[a-fA-F\d]{1,4})?::(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}))?)\]))?(?::(\d*))?  (?# 2: host, 3: port)
            |
              ((?:[\-_.!~*'()a-zA-Z\d$,;:@&=+]|%[a-fA-F\d]{2})+)             (?# 4: registry)
            )
          )
        |
          ((?:[\-_.!~*'()a-zA-Z\d;@&=+$,]|%[a-fA-F\d]{2})+)              (?# 5: rel_segment)
        )?
        (\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*)?                  (?# 6: abs_path)
        (?:\?((?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*))?              (?# 7: query)
        (?:\#((?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*))?           (?# 8: fragment)
      /x
  RFC2396_Parser = URI::RFC2396_Parser
  RFC2396_REGEXP = URI::RFC2396_REGEXP
  RFC3986_PARSER = #<URI::RFC3986_Parser:0x00007f98aa10f140>
  RFC3986_Parser = URI::RFC3986_Parser
  SCHEME = /\A[a-zA-Z][\-+.a-zA-Z\d]*\z/
  TBLDECWWWCOMP_ = {"%00"=>"\x00", "%01"=>"\x01", "%02"=>"\x02", "%03"=>"\x03", "%04"=>"\x04", "%05"=>"\x05", "%06"=>"\x06", "%07"=>"\a", "%08"=>"\b", "%09"=>"\t", "%0A"=>"\n", "%0a"=>"\n", "%0B"=>"\v", "%0b"=>"\v", "%0C"=>"\f", "%0c"=>"\f", "%0D"=>"\r", "%0d"=>"\r", "%0E"=>"\x0E", "%0e"=>"\x0E", "%0F"=>"\x0F", "%0f"=>"\x0F", "%10"=>"\x10", "%11"=>"\x11", "%12"=>"\x12", "%13"=>"\x13", "%14"=>"\x14", "%15"=>"\x15", "%16"=>"\x16", "%17"=>"\x17", "%18"=>"\x18", "%19"=>"\x19", "%1A"=>"\x1A", "%1a"=>"\x1A", "%1B"=>"\e", "%1b"=>"\e", "%1C"=>"\x1C", "%1c"=>"\x1C", "%1D"=>"\x1D", "%1d"=>"\x1D", "%1E"=>"\x1E", "%1e"=>"\x1E", "%1F"=>"\x1F", "%1f"=>"\x1F", "%20"=>" ", "%21"=>"!", "%22"=>"\"", "%23"=>"#", "%24"=>"$", "%25"=>"%", "%26"=>"&", "%27"=>"'", "%28"=>"(", "%29"=>")", "%2A"=>"*", "%2a"=>"*", "%2B"=>"+", "%2b"=>"+", "%2C"=>",", "%2c"=>",", "%2D"=>"-", "%2d"=>"-", "%2E"=>".", "%2e"=>".", "%2F"=>"/", "%2f"=>"/", "%30"=>"0", "%31"=>"1", "%32"=>"2", "%33"=>"3", "%34"=>"4", "%35"=>"5", "%36"=>"6", "%37"=>"7", "%38"=>"8", "%39"=>"9", "%3A"=>":", "%3a"=>":", "%3B"=>";", "%3b"=>";", "%3C"=>"<", "%3c"=>"<", "%3D"=>"=", "%3d"=>"=", "%3E"=>">", "%3e"=>">", "%3F"=>"?", "%3f"=>"?", "%40"=>"@", "%41"=>"A", "%42"=>"B", "%43"=>"C", "%44"=>"D", "%45"=>"E", "%46"=>"F", "%47"=>"G", "%48"=>"H", "%49"=>"I", "%4A"=>"J", "%4a"=>"J", "%4B"=>"K", "%4b"=>"K", "%4C"=>"L", "%4c"=>"L", "%4D"=>"M", "%4d"=>"M", "%4E"=>"N", "%4e"=>"N", "%4F"=>"O", "%4f"=>"O", "%50"=>"P", "%51"=>"Q", "%52"=>"R", "%53"=>"S", "%54"=>"T", "%55"=>"U", "%56"=>"V", "%57"=>"W", "%58"=>"X", "%59"=>"Y", "%5A"=>"Z", "%5a"=>"Z", "%5B"=>"[", "%5b"=>"[", "%5C"=>"\\", "%5c"=>"\\", "%5D"=>"]", "%5d"=>"]", "%5E"=>"^", "%5e"=>"^", "%5F"=>"_", "%5f"=>"_", "%60"=>"`", "%61"=>"a", "%62"=>"b", "%63"=>"c", "%64"=>"d", "%65"=>"e", "%66"=>"f", "%67"=>"g", "%68"=>"h", "%69"=>"i", "%6A"=>"j", "%6a"=>"j", "%6B"=>"k", "%6b"=>"k", "%6C"=>"l", "%6c"=>"l", "%6D"=>"m", "%6d"=>"m", "%6E"=>"n", "%6e"=>"n", "%6F"=>"o", "%6f"=>"o", "%70"=>"p", "%71"=>"q", "%72"=>"r", "%73"=>"s", "%74"=>"t", "%75"=>"u", "%76"=>"v", "%77"=>"w", "%78"=>"x", "%79"=>"y", "%7A"=>"z", "%7a"=>"z", "%7B"=>"{", "%7b"=>"{", "%7C"=>"|", "%7c"=>"|", "%7D"=>"}", "%7d"=>"}", "%7E"=>"~", "%7e"=>"~", "%7F"=>"\x7F", "%7f"=>"\x7F", "%80"=>"\x80", "%81"=>"\x81", "%82"=>"\x82", "%83"=>"\x83", "%84"=>"\x84", "%85"=>"\x85", "%86"=>"\x86", "%87"=>"\x87", "%88"=>"\x88", "%89"=>"\x89", "%8A"=>"\x8A", "%8a"=>"\x8A", "%8B"=>"\x8B", "%8b"=>"\x8B", "%8C"=>"\x8C", "%8c"=>"\x8C", "%8D"=>"\x8D", "%8d"=>"\x8D", "%8E"=>"\x8E", "%8e"=>"\x8E", "%8F"=>"\x8F", "%8f"=>"\x8F", "%90"=>"\x90", "%91"=>"\x91", "%92"=>"\x92", "%93"=>"\x93", "%94"=>"\x94", "%95"=>"\x95", "%96"=>"\x96", "%97"=>"\x97", "%98"=>"\x98", "%99"=>"\x99", "%9A"=>"\x9A", "%9a"=>"\x9A", "%9B"=>"\x9B", "%9b"=>"\x9B", "%9C"=>"\x9C", "%9c"=>"\x9C", "%9D"=>"\x9D", "%9d"=>"\x9D", "%9E"=>"\x9E", "%9e"=>"\x9E", "%9F"=>"\x9F", "%9f"=>"\x9F", "%A0"=>"\xA0", "%a0"=>"\xA0", "%A1"=>"\xA1", "%a1"=>"\xA1", "%A2"=>"\xA2", "%a2"=>"\xA2", "%A3"=>"\xA3", "%a3"=>"\xA3", "%A4"=>"\xA4", "%a4"=>"\xA4", "%A5"=>"\xA5", "%a5"=>"\xA5", "%A6"=>"\xA6", "%a6"=>"\xA6", "%A7"=>"\xA7", "%a7"=>"\xA7", "%A8"=>"\xA8", "%a8"=>"\xA8", "%A9"=>"\xA9", "%a9"=>"\xA9", "%AA"=>"\xAA", "%aA"=>"\xAA", "%Aa"=>"\xAA", "%aa"=>"\xAA", "%AB"=>"\xAB", "%aB"=>"\xAB", "%Ab"=>"\xAB", "%ab"=>"\xAB", "%AC"=>"\xAC", "%aC"=>"\xAC", "%Ac"=>"\xAC", "%ac"=>"\xAC", "%AD"=>"\xAD", "%aD"=>"\xAD", "%Ad"=>"\xAD", "%ad"=>"\xAD", "%AE"=>"\xAE", "%aE"=>"\xAE", "%Ae"=>"\xAE", "%ae"=>"\xAE", "%AF"=>"\xAF", "%aF"=>"\xAF", "%Af"=>"\xAF", "%af"=>"\xAF", "%B0"=>"\xB0", "%b0"=>"\xB0", "%B1"=>"\xB1", "%b1"=>"\xB1", "%B2"=>"\xB2", "%b2"=>"\xB2", "%B3"=>"\xB3", "%b3"=>"\xB3", "%B4"=>"\xB4", "%b4"=>"\xB4", "%B5"=>"\xB5", "%b5"=>"\xB5", "%B6"=>"\xB6", "%b6"=>"\xB6", "%B7"=>"\xB7", "%b7"=>"\xB7", "%B8"=>"\xB8", "%b8"=>"\xB8", "%B9"=>"\xB9", "%b9"=>"\xB9", "%BA"=>"\xBA", "%bA"=>"\xBA", "%Ba"=>"\xBA", "%ba"=>"\xBA", "%BB"=>"\xBB", "%bB"=>"\xBB", "%Bb"=>"\xBB", "%bb"=>"\xBB", "%BC"=>"\xBC", "%bC"=>"\xBC", "%Bc"=>"\xBC", "%bc"=>"\xBC", "%BD"=>"\xBD", "%bD"=>"\xBD", "%Bd"=>"\xBD", "%bd"=>"\xBD", "%BE"=>"\xBE", "%bE"=>"\xBE", "%Be"=>"\xBE", "%be"=>"\xBE", "%BF"=>"\xBF", "%bF"=>"\xBF", "%Bf"=>"\xBF", "%bf"=>"\xBF", "%C0"=>"\xC0", "%c0"=>"\xC0", "%C1"=>"\xC1", "%c1"=>"\xC1", "%C2"=>"\xC2", "%c2"=>"\xC2", "%C3"=>"\xC3", "%c3"=>"\xC3", "%C4"=>"\xC4", "%c4"=>"\xC4", "%C5"=>"\xC5", "%c5"=>"\xC5", "%C6"=>"\xC6", "%c6"=>"\xC6", "%C7"=>"\xC7", "%c7"=>"\xC7", "%C8"=>"\xC8", "%c8"=>"\xC8", "%C9"=>"\xC9", "%c9"=>"\xC9", "%CA"=>"\xCA", "%cA"=>"\xCA", "%Ca"=>"\xCA", "%ca"=>"\xCA", "%CB"=>"\xCB", "%cB"=>"\xCB", "%Cb"=>"\xCB", "%cb"=>"\xCB", "%CC"=>"\xCC", "%cC"=>"\xCC", "%Cc"=>"\xCC", "%cc"=>"\xCC", "%CD"=>"\xCD", "%cD"=>"\xCD", "%Cd"=>"\xCD", "%cd"=>"\xCD", "%CE"=>"\xCE", "%cE"=>"\xCE", "%Ce"=>"\xCE", "%ce"=>"\xCE", "%CF"=>"\xCF", "%cF"=>"\xCF", "%Cf"=>"\xCF", "%cf"=>"\xCF", "%D0"=>"\xD0", "%d0"=>"\xD0", "%D1"=>"\xD1", "%d1"=>"\xD1", "%D2"=>"\xD2", "%d2"=>"\xD2", "%D3"=>"\xD3", "%d3"=>"\xD3", "%D4"=>"\xD4", "%d4"=>"\xD4", "%D5"=>"\xD5", "%d5"=>"\xD5", "%D6"=>"\xD6", "%d6"=>"\xD6", "%D7"=>"\xD7", "%d7"=>"\xD7", "%D8"=>"\xD8", "%d8"=>"\xD8", "%D9"=>"\xD9", "%d9"=>"\xD9", "%DA"=>"\xDA", "%dA"=>"\xDA", "%Da"=>"\xDA", "%da"=>"\xDA", "%DB"=>"\xDB", "%dB"=>"\xDB", "%Db"=>"\xDB", "%db"=>"\xDB", "%DC"=>"\xDC", "%dC"=>"\xDC", "%Dc"=>"\xDC", "%dc"=>"\xDC", "%DD"=>"\xDD", "%dD"=>"\xDD", "%Dd"=>"\xDD", "%dd"=>"\xDD", "%DE"=>"\xDE", "%dE"=>"\xDE", "%De"=>"\xDE", "%de"=>"\xDE", "%DF"=>"\xDF", "%dF"=>"\xDF", "%Df"=>"\xDF", "%df"=>"\xDF", "%E0"=>"\xE0", "%e0"=>"\xE0", "%E1"=>"\xE1", "%e1"=>"\xE1", "%E2"=>"\xE2", "%e2"=>"\xE2", "%E3"=>"\xE3", "%e3"=>"\xE3", "%E4"=>"\xE4", "%e4"=>"\xE4", "%E5"=>"\xE5", "%e5"=>"\xE5", "%E6"=>"\xE6", "%e6"=>"\xE6", "%E7"=>"\xE7", "%e7"=>"\xE7", "%E8"=>"\xE8", "%e8"=>"\xE8", "%E9"=>"\xE9", "%e9"=>"\xE9", "%EA"=>"\xEA", "%eA"=>"\xEA", "%Ea"=>"\xEA", "%ea"=>"\xEA", "%EB"=>"\xEB", "%eB"=>"\xEB", "%Eb"=>"\xEB", "%eb"=>"\xEB", "%EC"=>"\xEC", "%eC"=>"\xEC", "%Ec"=>"\xEC", "%ec"=>"\xEC", "%ED"=>"\xED", "%eD"=>"\xED", "%Ed"=>"\xED", "%ed"=>"\xED", "%EE"=>"\xEE", "%eE"=>"\xEE", "%Ee"=>"\xEE", "%ee"=>"\xEE", "%EF"=>"\xEF", "%eF"=>"\xEF", "%Ef"=>"\xEF", "%ef"=>"\xEF", "%F0"=>"\xF0", "%f0"=>"\xF0", "%F1"=>"\xF1", "%f1"=>"\xF1", "%F2"=>"\xF2", "%f2"=>"\xF2", "%F3"=>"\xF3", "%f3"=>"\xF3", "%F4"=>"\xF4", "%f4"=>"\xF4", "%F5"=>"\xF5", "%f5"=>"\xF5", "%F6"=>"\xF6", "%f6"=>"\xF6", "%F7"=>"\xF7", "%f7"=>"\xF7", "%F8"=>"\xF8", "%f8"=>"\xF8", "%F9"=>"\xF9", "%f9"=>"\xF9", "%FA"=>"\xFA", "%fA"=>"\xFA", "%Fa"=>"\xFA", "%fa"=>"\xFA", "%FB"=>"\xFB", "%fB"=>"\xFB", "%Fb"=>"\xFB", "%fb"=>"\xFB", "%FC"=>"\xFC", "%fC"=>"\xFC", "%Fc"=>"\xFC", "%fc"=>"\xFC", "%FD"=>"\xFD", "%fD"=>"\xFD", "%Fd"=>"\xFD", "%fd"=>"\xFD", "%FE"=>"\xFE", "%fE"=>"\xFE", "%Fe"=>"\xFE", "%fe"=>"\xFE", "%FF"=>"\xFF", "%fF"=>"\xFF", "%Ff"=>"\xFF", "%ff"=>"\xFF", "+"=>" "}
  TBLENCWWWCOMP_ = {"\x00"=>"%00", "\x01"=>"%01", "\x02"=>"%02", "\x03"=>"%03", "\x04"=>"%04", "\x05"=>"%05", "\x06"=>"%06", "\a"=>"%07", "\b"=>"%08", "\t"=>"%09", "\n"=>"%0A", "\v"=>"%0B", "\f"=>"%0C", "\r"=>"%0D", "\x0E"=>"%0E", "\x0F"=>"%0F", "\x10"=>"%10", "\x11"=>"%11", "\x12"=>"%12", "\x13"=>"%13", "\x14"=>"%14", "\x15"=>"%15", "\x16"=>"%16", "\x17"=>"%17", "\x18"=>"%18", "\x19"=>"%19", "\x1A"=>"%1A", "\e"=>"%1B", "\x1C"=>"%1C", "\x1D"=>"%1D", "\x1E"=>"%1E", "\x1F"=>"%1F", " "=>"+", "!"=>"%21", "\""=>"%22", "#"=>"%23", "$"=>"%24", "%"=>"%25", "&"=>"%26", "'"=>"%27", "("=>"%28", ")"=>"%29", "*"=>"%2A", "+"=>"%2B", ","=>"%2C", "-"=>"%2D", "."=>"%2E", "/"=>"%2F", "0"=>"%30", "1"=>"%31", "2"=>"%32", "3"=>"%33", "4"=>"%34", "5"=>"%35", "6"=>"%36", "7"=>"%37", "8"=>"%38", "9"=>"%39", ":"=>"%3A", ";"=>"%3B", "<"=>"%3C", "="=>"%3D", ">"=>"%3E", "?"=>"%3F", "@"=>"%40", "A"=>"%41", "B"=>"%42", "C"=>"%43", "D"=>"%44", "E"=>"%45", "F"=>"%46", "G"=>"%47", "H"=>"%48", "I"=>"%49", "J"=>"%4A", "K"=>"%4B", "L"=>"%4C", "M"=>"%4D", "N"=>"%4E", "O"=>"%4F", "P"=>"%50", "Q"=>"%51", "R"=>"%52", "S"=>"%53", "T"=>"%54", "U"=>"%55", "V"=>"%56", "W"=>"%57", "X"=>"%58", "Y"=>"%59", "Z"=>"%5A", "["=>"%5B", "\\"=>"%5C", "]"=>"%5D", "^"=>"%5E", "_"=>"%5F", "`"=>"%60", "a"=>"%61", "b"=>"%62", "c"=>"%63", "d"=>"%64", "e"=>"%65", "f"=>"%66", "g"=>"%67", "h"=>"%68", "i"=>"%69", "j"=>"%6A", "k"=>"%6B", "l"=>"%6C", "m"=>"%6D", "n"=>"%6E", "o"=>"%6F", "p"=>"%70", "q"=>"%71", "r"=>"%72", "s"=>"%73", "t"=>"%74", "u"=>"%75", "v"=>"%76", "w"=>"%77", "x"=>"%78", "y"=>"%79", "z"=>"%7A", "{"=>"%7B", "|"=>"%7C", "}"=>"%7D", "~"=>"%7E", "\x7F"=>"%7F", "\x80"=>"%80", "\x81"=>"%81", "\x82"=>"%82", "\x83"=>"%83", "\x84"=>"%84", "\x85"=>"%85", "\x86"=>"%86", "\x87"=>"%87", "\x88"=>"%88", "\x89"=>"%89", "\x8A"=>"%8A", "\x8B"=>"%8B", "\x8C"=>"%8C", "\x8D"=>"%8D", "\x8E"=>"%8E", "\x8F"=>"%8F", "\x90"=>"%90", "\x91"=>"%91", "\x92"=>"%92", "\x93"=>"%93", "\x94"=>"%94", "\x95"=>"%95", "\x96"=>"%96", "\x97"=>"%97", "\x98"=>"%98", "\x99"=>"%99", "\x9A"=>"%9A", "\x9B"=>"%9B", "\x9C"=>"%9C", "\x9D"=>"%9D", "\x9E"=>"%9E", "\x9F"=>"%9F", "\xA0"=>"%A0", "\xA1"=>"%A1", "\xA2"=>"%A2", "\xA3"=>"%A3", "\xA4"=>"%A4", "\xA5"=>"%A5", "\xA6"=>"%A6", "\xA7"=>"%A7", "\xA8"=>"%A8", "\xA9"=>"%A9", "\xAA"=>"%AA", "\xAB"=>"%AB", "\xAC"=>"%AC", "\xAD"=>"%AD", "\xAE"=>"%AE", "\xAF"=>"%AF", "\xB0"=>"%B0", "\xB1"=>"%B1", "\xB2"=>"%B2", "\xB3"=>"%B3", "\xB4"=>"%B4", "\xB5"=>"%B5", "\xB6"=>"%B6", "\xB7"=>"%B7", "\xB8"=>"%B8", "\xB9"=>"%B9", "\xBA"=>"%BA", "\xBB"=>"%BB", "\xBC"=>"%BC", "\xBD"=>"%BD", "\xBE"=>"%BE", "\xBF"=>"%BF", "\xC0"=>"%C0", "\xC1"=>"%C1", "\xC2"=>"%C2", "\xC3"=>"%C3", "\xC4"=>"%C4", "\xC5"=>"%C5", "\xC6"=>"%C6", "\xC7"=>"%C7", "\xC8"=>"%C8", "\xC9"=>"%C9", "\xCA"=>"%CA", "\xCB"=>"%CB", "\xCC"=>"%CC", "\xCD"=>"%CD", "\xCE"=>"%CE", "\xCF"=>"%CF", "\xD0"=>"%D0", "\xD1"=>"%D1", "\xD2"=>"%D2", "\xD3"=>"%D3", "\xD4"=>"%D4", "\xD5"=>"%D5", "\xD6"=>"%D6", "\xD7"=>"%D7", "\xD8"=>"%D8", "\xD9"=>"%D9", "\xDA"=>"%DA", "\xDB"=>"%DB", "\xDC"=>"%DC", "\xDD"=>"%DD", "\xDE"=>"%DE", "\xDF"=>"%DF", "\xE0"=>"%E0", "\xE1"=>"%E1", "\xE2"=>"%E2", "\xE3"=>"%E3", "\xE4"=>"%E4", "\xE5"=>"%E5", "\xE6"=>"%E6", "\xE7"=>"%E7", "\xE8"=>"%E8", "\xE9"=>"%E9", "\xEA"=>"%EA", "\xEB"=>"%EB", "\xEC"=>"%EC", "\xED"=>"%ED", "\xEE"=>"%EE", "\xEF"=>"%EF", "\xF0"=>"%F0", "\xF1"=>"%F1", "\xF2"=>"%F2", "\xF3"=>"%F3", "\xF4"=>"%F4", "\xF5"=>"%F5", "\xF6"=>"%F6", "\xF7"=>"%F7", "\xF8"=>"%F8", "\xF9"=>"%F9", "\xFA"=>"%FA", "\xFB"=>"%FB", "\xFC"=>"%FC", "\xFD"=>"%FD", "\xFE"=>"%FE", "\xFF"=>"%FF"}
  UNSAFE = /[^\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]/
  URI_REF = /(?:[a-zA-Z][\-+.a-zA-Z\d]*:(?:(?:\/\/(?:(?:(?:[\-_.!~*'()a-zA-Z\d;:&=+$,]|%[a-fA-F\d]{2})*@)?(?:(?:[a-zA-Z0-9\-.]|%\h\h)+|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|\[(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})|(?:(?:[a-fA-F\d]{1,4}:)*[a-fA-F\d]{1,4})?::(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}))?)\])(?::\d*)?|(?:[\-_.!~*'()a-zA-Z\d$,;:@&=+]|%[a-fA-F\d]{2})+)(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*)?|\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*)(?:\?(?:(?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*))?|(?:[\-_.!~*'()a-zA-Z\d;?:@&=+$,]|%[a-fA-F\d]{2})(?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*)|(?:\/\/(?:(?:(?:[\-_.!~*'()a-zA-Z\d;:&=+$,]|%[a-fA-F\d]{2})*@)?(?:(?:[a-zA-Z0-9\-.]|%\h\h)+|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|\[(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})|(?:(?:[a-fA-F\d]{1,4}:)*[a-fA-F\d]{1,4})?::(?:(?:[a-fA-F\d]{1,4}:)*(?:[a-fA-F\d]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}))?)\])(?::\d*)?|(?:[\-_.!~*'()a-zA-Z\d$,;:@&=+]|%[a-fA-F\d]{2})+)(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*)?|\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*|(?:[\-_.!~*'()a-zA-Z\d;@&=+$,]|%[a-fA-F\d]{2})+(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*(?:\/(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*(?:;(?:[\-_.!~*'()a-zA-Z\d:@&=+$,]|%[a-fA-F\d]{2})*)*)*)?)(?:\?(?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*)?)?(?:#(?:[\-_.!~*'()a-zA-Z\d;\/?:@&=+$,\[\]]|%[a-fA-F\d]{2})*)?/
  USERINFO = /\A(?:[\-_.!~*'()a-zA-Z\d;:&=+$,]|%[a-fA-F\d]{2})*\z/
  Util = URI::Util
  VERSION = "0.10.0"
  VERSION_CODE = "001000"
  WEB_ENCODINGS_ = {"unicode-1-1-utf-8"=>"utf-8", "utf-8"=>"utf-8", "utf8"=>"utf-8", "866"=>"ibm866", "cp866"=>"ibm866", "csibm866"=>"ibm866", "ibm866"=>"ibm866", "csisolatin2"=>"iso-8859-2", "iso-8859-2"=>"iso-8859-2", "iso-ir-101"=>"iso-8859-2", "iso8859-2"=>"iso-8859-2", "iso88592"=>"iso-8859-2", "iso_8859-2"=>"iso-8859-2", "iso_8859-2:1987"=>"iso-8859-2", "l2"=>"iso-8859-2", "latin2"=>"iso-8859-2", "csisolatin3"=>"iso-8859-3", "iso-8859-3"=>"iso-8859-3", "iso-ir-109"=>"iso-8859-3", "iso8859-3"=>"iso-8859-3", "iso88593"=>"iso-8859-3", "iso_8859-3"=>"iso-8859-3", "iso_8859-3:1988"=>"iso-8859-3", "l3"=>"iso-8859-3", "latin3"=>"iso-8859-3", "csisolatin4"=>"iso-8859-4", "iso-8859-4"=>"iso-8859-4", "iso-ir-110"=>"iso-8859-4", "iso8859-4"=>"iso-8859-4", "iso88594"=>"iso-8859-4", "iso_8859-4"=>"iso-8859-4", "iso_8859-4:1988"=>"iso-8859-4", "l4"=>"iso-8859-4", "latin4"=>"iso-8859-4", "csisolatincyrillic"=>"iso-8859-5", "cyrillic"=>"iso-8859-5", "iso-8859-5"=>"iso-8859-5", "iso-ir-144"=>"iso-8859-5", "iso8859-5"=>"iso-8859-5", "iso88595"=>"iso-8859-5", "iso_8859-5"=>"iso-8859-5", "iso_8859-5:1988"=>"iso-8859-5", "arabic"=>"iso-8859-6", "asmo-708"=>"iso-8859-6", "csiso88596e"=>"iso-8859-6", "csiso88596i"=>"iso-8859-6", "csisolatinarabic"=>"iso-8859-6", "ecma-114"=>"iso-8859-6", "iso-8859-6"=>"iso-8859-6", "iso-8859-6-e"=>"iso-8859-6", "iso-8859-6-i"=>"iso-8859-6", "iso-ir-127"=>"iso-8859-6", "iso8859-6"=>"iso-8859-6", "iso88596"=>"iso-8859-6", "iso_8859-6"=>"iso-8859-6", "iso_8859-6:1987"=>"iso-8859-6", "csisolatingreek"=>"iso-8859-7", "ecma-118"=>"iso-8859-7", "elot_928"=>"iso-8859-7", "greek"=>"iso-8859-7", "greek8"=>"iso-8859-7", "iso-8859-7"=>"iso-8859-7", "iso-ir-126"=>"iso-8859-7", "iso8859-7"=>"iso-8859-7", "iso88597"=>"iso-8859-7", "iso_8859-7"=>"iso-8859-7", "iso_8859-7:1987"=>"iso-8859-7", "sun_eu_greek"=>"iso-8859-7", "csiso88598e"=>"iso-8859-8", "csisolatinhebrew"=>"iso-8859-8", "hebrew"=>"iso-8859-8", "iso-8859-8"=>"iso-8859-8", "iso-8859-8-e"=>"iso-8859-8", "iso-ir-138"=>"iso-8859-8", "iso8859-8"=>"iso-8859-8", "iso88598"=>"iso-8859-8", "iso_8859-8"=>"iso-8859-8", "iso_8859-8:1988"=>"iso-8859-8", "visual"=>"iso-8859-8", "csisolatin6"=>"iso-8859-10", "iso-8859-10"=>"iso-8859-10", "iso-ir-157"=>"iso-8859-10", "iso8859-10"=>"iso-8859-10", "iso885910"=>"iso-8859-10", "l6"=>"iso-8859-10", "latin6"=>"iso-8859-10", "iso-8859-13"=>"iso-8859-13", "iso8859-13"=>"iso-8859-13", "iso885913"=>"iso-8859-13", "iso-8859-14"=>"iso-8859-14", "iso8859-14"=>"iso-8859-14", "iso885914"=>"iso-8859-14", "csisolatin9"=>"iso-8859-15", "iso-8859-15"=>"iso-8859-15", "iso8859-15"=>"iso-8859-15", "iso885915"=>"iso-8859-15", "iso_8859-15"=>"iso-8859-15", "l9"=>"iso-8859-15", "iso-8859-16"=>"iso-8859-16", "cskoi8r"=>"koi8-r", "koi"=>"koi8-r", "koi8"=>"koi8-r", "koi8-r"=>"koi8-r", "koi8_r"=>"koi8-r", "koi8-u"=>"koi8-u", "dos-874"=>"windows-874", "iso-8859-11"=>"windows-874", "iso8859-11"=>"windows-874", "iso885911"=>"windows-874", "tis-620"=>"windows-874", "windows-874"=>"windows-874", "cp1250"=>"windows-1250", "windows-1250"=>"windows-1250", "x-cp1250"=>"windows-1250", "cp1251"=>"windows-1251", "windows-1251"=>"windows-1251", "x-cp1251"=>"windows-1251", "ansi_x3.4-1968"=>"windows-1252", "ascii"=>"windows-1252", "cp1252"=>"windows-1252", "cp819"=>"windows-1252", "csisolatin1"=>"windows-1252", "ibm819"=>"windows-1252", "iso-8859-1"=>"windows-1252", "iso-ir-100"=>"windows-1252", "iso8859-1"=>"windows-1252", "iso88591"=>"windows-1252", "iso_8859-1"=>"windows-1252", "iso_8859-1:1987"=>"windows-1252", "l1"=>"windows-1252", "latin1"=>"windows-1252", "us-ascii"=>"windows-1252", "windows-1252"=>"windows-1252", "x-cp1252"=>"windows-1252", "cp1253"=>"windows-1253", "windows-1253"=>"windows-1253", "x-cp1253"=>"windows-1253", "cp1254"=>"windows-1254", "csisolatin5"=>"windows-1254", "iso-8859-9"=>"windows-1254", "iso-ir-148"=>"windows-1254", "iso8859-9"=>"windows-1254", "iso88599"=>"windows-1254", "iso_8859-9"=>"windows-1254", "iso_8859-9:1989"=>"windows-1254", "l5"=>"windows-1254", "latin5"=>"windows-1254", "windows-1254"=>"windows-1254", "x-cp1254"=>"windows-1254", "cp1255"=>"windows-1255", "windows-1255"=>"windows-1255", "x-cp1255"=>"windows-1255", "cp1256"=>"windows-1256", "windows-1256"=>"windows-1256", "x-cp1256"=>"windows-1256", "cp1257"=>"windows-1257", "windows-1257"=>"windows-1257", "x-cp1257"=>"windows-1257", "cp1258"=>"windows-1258", "windows-1258"=>"windows-1258", "x-cp1258"=>"windows-1258", "x-mac-cyrillic"=>"macCyrillic", "x-mac-ukrainian"=>"macCyrillic", "chinese"=>"gbk", "csgb2312"=>"gbk", "csiso58gb231280"=>"gbk", "gb2312"=>"gbk", "gb_2312"=>"gbk", "gb_2312-80"=>"gbk", "gbk"=>"gbk", "iso-ir-58"=>"gbk", "x-gbk"=>"gbk", "gb18030"=>"gb18030", "big5"=>"big5", "big5-hkscs"=>"big5", "cn-big5"=>"big5", "csbig5"=>"big5", "x-x-big5"=>"big5", "cseucpkdfmtjapanese"=>"cp51932", "euc-jp"=>"cp51932", "x-euc-jp"=>"cp51932", "csiso2022jp"=>"cp50221", "iso-2022-jp"=>"cp50221", "csshiftjis"=>"Windows-31J", "ms_kanji"=>"Windows-31J", "shift-jis"=>"Windows-31J", "shift_jis"=>"Windows-31J", "sjis"=>"Windows-31J", "windows-31j"=>"Windows-31J", "x-sjis"=>"Windows-31J", "cseuckr"=>"euc-kr", "csksc56011987"=>"euc-kr", "euc-kr"=>"euc-kr", "iso-ir-149"=>"euc-kr", "korean"=>"euc-kr", "ks_c_5601-1987"=>"euc-kr", "ks_c_5601-1989"=>"euc-kr", "ksc5601"=>"euc-kr", "ksc_5601"=>"euc-kr", "windows-949"=>"euc-kr", "utf-16be"=>"utf-16be", "utf-16"=>"utf-16le", "utf-16le"=>"utf-16le"}

  def self.decode_www_form(arg0, arg1, arg2, *rest)
  end

  def self.decode_www_form_component(arg0, arg1, arg2, *rest)
  end

  def self.encode_www_form(arg0, arg1, arg2, *rest)
  end

  def self.encode_www_form_component(arg0, arg1, arg2, *rest)
  end

  def self.extract(arg0, arg1, arg2, *rest)
  end

  def self.get_encoding(arg0)
  end

  def self.join(arg0, arg1, *rest)
  end

  def self.parse(arg0)
  end

  def self.regexp(arg0, arg1, *rest)
  end

  def self.scheme_list
  end

  def self.split(arg0)
  end



  protected


  private

end
