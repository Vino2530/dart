
 /* eslint no-console: 0 */
 import "types.dart" show TranslatorConfig ; dynamic /* Translator | */ singleton ; var isConfigured = false ; configure ( [ TranslatorConfig config ] ) { singleton = new Translator ( config ) ; isConfigured = true ; return singleton ; } getInstance ( ) { if ( ! isConfigured ) { console . warn ( "You should call configure(...) before calling other methods" ) ; } if ( identical ( , "undefined" ) ) { singleton = new Translator ( ) ; } return singleton ; } t ( String input , List < unknown > args ) { return getInstance ( ) . translate ( input , ) ; } tn ( String singular , String plural , [ num num , List < unknown > args ] ) { return getInstance ( ) . translateWithNumber ( singular , plural , num , ) ; } export show configure , t , tn ;