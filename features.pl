% list of distinctive feature names in order
features([syllabic,consonantal,approximant,sonorant,voice,spread_glottis,constricted_glottis,continuant,nasal,strident,lateral,delayed_release,round,anterior,distributed,high,low,back,tense]).

% true iff FM is a valid feature matrix (has right number of features)
feature_matrix(FM) :- features(FL), same_length(FM,FL).

% Value is the value of Feature in Matrix
feature(Feature,Matrix,Value) :- features(FL), nth0(Idx,FL,Feature), nth0(Idx,Matrix,Value).

