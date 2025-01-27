% Load the main medical diagnosis file
:- consult('medical_diagnosis1.pl').

% Utility for testing
test_case(TestName, InputSymptoms, ExpectedOutput) :-
    format("~nTest: ~w~n", [TestName]),
    write("Input Symptoms: "), write(InputSymptoms), nl,
    diagnose_test(InputSymptoms, Result),
    write("Expected Output: "), write(ExpectedOutput), nl,
    write("Actual Output: "), write(Result), nl,
    (Result = ExpectedOutput -> write("Result: Passed"), nl ; write("Result: Failed"), nl).

% Helper to simulate the `diagnose` predicate for testing
diagnose_test(InputSymptoms, Output) :-
    split_string(InputSymptoms, ",", " ", Symptoms),
    maplist(string_to_atom, Symptoms, SymptomsList),
    (   length(SymptomsList, Len), Len < 3
    ->  Output = "Please provide at least 3 symptoms for a meaningful diagnosis."
    ;   findall(Severity-Cond, 
                (condition(Cond, RequiredSymptoms, Severity), 
                 has_at_least_three_overlapping_symptoms(SymptomsList, RequiredSymptoms)), 
                ConditionPairs),
        sort(ConditionPairs, SortedConditions),
        (   SortedConditions = []
        ->  Output = "No matching condition found. Please consult a doctor for further evaluation."
        ;   Output = SortedConditions
        )
    ).

% Test cases
run_tests :-
    % Test 1: Valid input with a single matching condition
    test_case("Single Matching Condition", "headache, dizziness, nausea", [17-migraine]),
    
    % Test 2: Valid input with multiple matching conditions (sorted by severity)
    test_case("Multiple Matching Conditions", "fever, cough, chest_pain, fatigue", [4-pneumonia, 16-flu]),
    
    % Test 3: Valid input but no matching conditions
    test_case("No Matching Condition", "redness, rash, weight_loss", "No matching condition found. Please consult a doctor for further evaluation."),
    
    % Test 4: Input with insufficient symptoms
    test_case("Insufficient Symptoms", "fever, cough", "Please provide at least 3 symptoms for a meaningful diagnosis."),
    
    % Test 5: Complex overlapping symptoms
    test_case("Overlapping Symptoms", "fever, fatigue, shortness_of_breath, cough", [4-pneumonia,8-asthma,16-flu]),
    
    % Test 6: Rare condition with low severity
    test_case("Rare Condition", "seizures, confusion, fatigue, loss_of_awareness", [3-epilepsy]),
    
    % Test 7: Input with symptoms that match the highest severity condition
    test_case("Critical Condition", "chest_pain, shortness_of_breath, dizziness", [1-heart_attack]).
    
   
% Run all tests when the script is loaded
:- initialization(run_tests).


