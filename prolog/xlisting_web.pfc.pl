
:- use_module(library(pfc_lib)).
%:- set_defaultAssertMt(xlisting_web).
:- set_fileAssertMt(xlisting_web).
%:- use_module(library(pfc)).
:- file_begin(pfc).

/*
:- baseKB:export(baseKB:never_assert_u/2).
:- xlisting_web:import(baseKB:never_assert_u/2).
:- baseKB:export(baseKB:never_retract_u/2).
:- xlisting_web:import(baseKB:never_retract_u/2).
*/

%% param_default_value( ?ARG1, ?ARG2) is det.
%
% Param Default Value.
%
:- kb_shared(combo_default_value/3).
:- mpred_trace_exec.
:-ain((==> combo_default_value(human_language,1,'EnglishLanguage'))).
:-ain((combo_default_value(N,_,V) ==> param_default_value(N,V))).
:-ain((combo_default_value(Pred,Arity,_Value)==> {kb_shared(Pred/Arity)})).

==> singleValueInArg(param_default_value,2).


%% human_language( ?ARG1) is det.
%
% Human Language.
%

human_language("AlbanianLanguage").
human_language("ArabicLanguage").
human_language("BasqueLanguage").
human_language("CatalanLanguage").
human_language("ChineseLanguage").
human_language("DanishLanguage").
human_language("EnglishLanguage"). 
human_language("FarsiLanguage").
human_language("FinnishLanguage").
human_language("FrenchLanguage").
human_language("GalicianLanguage").
human_language("GermanLanguage").
human_language("HebrewLanguage").
human_language("IndonesianLanguage").
human_language("ItalianLanguage").
human_language("JapaneseLanguage").
human_language("MalayLanguage").
human_language("NorwegianBokmalLanguage").
human_language("NorwegianNorskLanguage").
human_language("PolishLanguage").
human_language("PortugueseLanguage").
human_language("SpanishLanguage").
human_language("ThaiLanguage").
human_language("de").


param_default_value(request_uri,'/logicmoo/').
param_default_value(olang,'CLIF').
param_default_value(find,'tHumanHead').

:- forall(
  member(N=V,[
     webproc=edit1term,
     'prover'='proverPTTP',
     'apply'='find',
     'term'='',
     action_below=query,
     'action_above'='query',
     'context'='BaseKB',
     'flang'='CLIF','find'='tHumanHead','xref'='Overlap','POS'='N',
     'humanLang'='EnglishLanguage','olang'='CLIF','sExprs'='1',
     'webDebug'='1','displayStart'='0','displayMax'='100000']),ain(param_default_value(N,V))).


combo_default_value(logic_lang_name,2,'CLIF').
%% logic_lang_name( ?ARG1, ?ARG2) is det.
%
% Logic Language Name.
%
logic_lang_name('CLIF',"Common Logic (CLIF)").
logic_lang_name('CycL',"CycL").
logic_lang_name('Prolog',"Prolog").
logic_lang_name('CGIF',"CG-Logic (CGIF)").
logic_lang_name('SUO-KIF',"SUO-KIF").
logic_lang_name('TPTP',"TPTP (fof/cnf)").
logic_lang_name('OWL',"OWL").



combo_default_value(prover_name,2,'proverPTTP').
%% prover_name( ?ARG1, ?ARG2) is det.
%
% Prover Name.
%
prover_name(proverCyc,"CycL (LogicMOO)").
prover_name(proverPFC,"PFC").
prover_name(proverPTTP,"PTTP (LogicMOO)").
prover_name(proverDOLCE,"DOLCE (LogicMOO)").




combo_default_value(partOfSpeech,2,'N').
%% partOfSpeech( ?ARG1, ?ARG2) is det.
%
% Part Of Speech.
%
partOfSpeech("N","Noun").
partOfSpeech("V","Verb").
partOfSpeech("J","Adjective").
partOfSpeech("Z","Adverb").



%% search_filter_name_comment( ?ARG1, ?ARG2, ?ARG3) is det.
%
% Search Filter Name Comment.
%
search_filter_name_comment(hideMeta,'Hide Meta/BookKeeping','1').
search_filter_name_comment(hideSystem,'Skip System','0').
search_filter_name_comment(hideTriggers,'Hide Triggers','1').
search_filter_name_comment(skipLarge,'No Large','0').
search_filter_name_comment(showHyperlink,'Hyperlink','1').
search_filter_name_comment(showFilenames,'Filenames','1').
search_filter_name_comment(showHUGE,'showHUGE','1').
search_filter_name_comment(wholePreds,'Whole Preds','1').
search_filter_name_comment(skipVarnames,'Skip Varnames','0').
search_filter_name_comment(hideClauseInfo,'Skip ClauseInfo','0').
search_filter_name_comment(hideXRef,'Skip XREF','1').
search_filter_name_comment(showAll,'Show All','0').
  
:- baseKB:import(xlisting_web:action_menu_item/2).

:- baseKB:import(xlisting_web:search_filter_name_comment/3).

:- add_import_module(baseKB, xlisting_web,end).

:-ain((search_filter_name_comment(N,_,D)==>param_default_value(N,D))).


combo_default_value(is_context,2,'BaseKB').

combo_default_value(action_menu_item,2,'query').

%arg2Isa(action_menu_item,xtPrologString).

%% action_menu_item( ?ARG1, ?ARG2) is det.
%
% Action Menu Item.
%
action_menu_item('Find',"Find $item").
action_menu_item('Forward',"Forward Direction").
action_menu_item('Backward',"Backward Direction").
action_menu_item('query',"Query $item").
action_menu_item('repropagate',"Repropagate $item (ReAssert)").
action_menu_item('remove',"Remove $item(Unassert)").   
action_menu_item('Code',"Assume Theorem (Disable $item)").
action_menu_item('prologSingleValued',"Make $item Single Valued").
action_menu_item('prologBuiltin',"Impl $item in Prolog").
action_menu_item('prologPTTP',"Impl $item in PTTP").
action_menu_item('prologDRA',"Impl $item in DRA").
action_menu_item('prologPfc',"Impl $item in PFC").
action_menu_item('Monotonic',"Treat $item Monotonic").
action_menu_item('NonMonotonic',"Treat $item NonMonotonic").   

