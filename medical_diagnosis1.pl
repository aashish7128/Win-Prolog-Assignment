% Medical Diagnosis System

% Facts: Symptoms
symptom(chest_pain).
symptom(shortness_of_breath).
symptom(dizziness).
symptom(cough).
symptom(fever).
symptom(body_aches).
symptom(fatigue).
symptom(chills).
symptom(missed_period).
symptom(mood_swings).
symptom(breast_changes).
symptom(chest_tightness).
symptom(wheezing).
symptom(coughing).
symptom(frequent_urination).
symptom(increased_thirst).
symptom(blurred_vision).
symptom(weight_loss).
symptom(headache).
symptom(nausea).
symptom(sensitivity_to_light).
symptom(sensitivity_to_sound).
symptom(vomiting).
symptom(diarrhea).
symptom(abdominal_cramps).
symptom(loss_of_appetite).
symptom(joint_pain).
symptom(stiffness).
symptom(swelling).
symptom(decreased_range_of_motion).
symptom(persistent_cough).
symptom(weight_loss).
symptom(night_sweats).
symptom(mucus_production).
symptom(chest_discomfort).
symptom(mild_fever).
symptom(nasal_congestion).
symptom(facial_pain).
symptom(runny_nose).
symptom(sore_throat).
symptom(sneezing).
symptom(itchy_eyes).
symptom(ear_pain).
symptom(irritability).
symptom(hearing_loss).
symptom(itching).
symptom(redness).
symptom(rash).
symptom(skin_peeling).
symptom(chronic_cough).
symptom(burning_sensation).
symptom(cloudy_urine).
symptom(pelvic_pain).
symptom(upper_abdominal_pain).
symptom(indigestion).
symptom(back_pain).
symptom(bloating).
symptom(heartburn).
symptom(yellow_skin).
symptom(dark_urine).
symptom(seizures).
symptom(confusion).
symptom(loss_of_awareness).
symptom(muscle_stiffness).
symptom(persistent_sadness).
symptom(loss_of_interest).
symptom(changes_in_sleep).
symptom(weight_changes).
symptom(excessive_worry).
symptom(restlessness).
symptom(difficulty_concentrating).
symptom(irritability).
symptom(regurgitation).
symptom(difficulty_swallowing).
symptom(jaundice).
symptom(abdominal_swelling).
symptom(easy_bruising).
symptom(severe_abdominal_pain).
symptom(blood_in_urine).

% Conditions with severity (lower = higher priority)
condition(heart_attack, [chest_pain, shortness_of_breath, dizziness], 1).
condition(appendicitis, [abdominal_pain, nausea, vomiting, loss_of_appetite, fever], 2).
condition(epilepsy, [seizures, confusion, fatigue, loss_of_awareness, muscle_stiffness], 3).
condition(pneumonia, [cough, fever, chest_pain, body_aches, fatigue, chills], 4).
condition(kidney_stones, [severe_abdominal_pain, back_pain, nausea, blood_in_urine, frequent_urination], 5).
condition(tuberculosis, [persistent_cough, weight_loss, night_sweats, fever, fatigue], 6).
condition(copd, [shortness_of_breath, chronic_cough, wheezing, fatigue, chest_tightness], 7).
condition(asthma, [shortness_of_breath, chest_tightness, wheezing, cough, fatigue], 8).
condition(diabetes, [frequent_urination, increased_thirst, blurred_vision, fatigue, weight_loss], 9).
condition(hypertension, [headache, dizziness, blurred_vision, shortness_of_breath, fatigue], 10).
condition(liver_cirrhosis, [fatigue, jaundice, abdominal_swelling, loss_of_appetite, easy_bruising], 11).
condition(hepatitis, [fatigue, yellow_skin, abdominal_pain, dark_urine, nausea], 12).
condition(bronchitis, [cough, mucus_production, chest_discomfort, fatigue, mild_fever], 13).
condition(peptic_ulcer, [abdominal_pain, bloating, nausea, heartburn, weight_loss], 14).
condition(food_poisoning, [nausea, vomiting, diarrhea, abdominal_cramps, fever], 15).
condition(flu, [fever, cough, body_aches, fatigue], 16).
condition(migraine, [headache, nausea, sensitivity_to_light, sensitivity_to_sound, dizziness], 17).
condition(arthritis, [joint_pain, stiffness, swelling, decreased_range_of_motion, fatigue], 18).
condition(urinary_tract_infection, [frequent_urination, burning_sensation, cloudy_urine, pelvic_pain, fever], 19).
condition(gallstones, [upper_abdominal_pain, nausea, vomiting, indigestion, back_pain], 20).
condition(depression, [persistent_sadness, loss_of_interest, fatigue, changes_in_sleep, weight_changes], 21).
condition(anemia, [fatigue, pale_skin, shortness_of_breath, dizziness, cold_hands_feet], 22).
condition(anxiety_disorder, [excessive_worry, restlessness, fatigue, difficulty_concentrating, irritability], 23).
condition(gerd, [heartburn, regurgitation, chest_pain, difficulty_swallowing, sore_throat], 24).
condition(sinusitis, [nasal_congestion, facial_pain, headache, runny_nose, sore_throat], 25).
condition(pregnancy, [missed_period, mood_swings, breast_changes], 26).
condition(allergic_rhinitis, [sneezing, runny_nose, itchy_eyes, nasal_congestion, fatigue], 27).
condition(otitis_media, [ear_pain, fever, irritability, headache, hearing_loss], 28).
condition(skin_allergy, [itching, redness, rash, swelling, skin_peeling], 29).

% Remedies
remedy(heart_attack, "Seek emergency medical help immediately.").
remedy(pneumonia, "Consult a doctor for a proper diagnosis and treatment.").
remedy(flu, "Rest, drink plenty of fluids, and consider seeing a doctor.").
remedy(pregnancy, "Take prenatal vitamins, consult a healthcare provider.").
remedy(asthma, "Use prescribed inhalers, avoid triggers, and seek medical advice if symptoms worsen.").
remedy(diabetes, "Manage blood sugar through diet, exercise, medication, and regular check-ups.").
remedy(hypertension, "Adopt a low-sodium diet, exercise regularly, and take prescribed medications.").
remedy(anemia, "Increase iron intake through diet or supplements, and consult a doctor for proper treatment.").
remedy(migraine, "Rest in a dark, quiet room, use prescribed medications, and avoid known triggers.").
remedy(food_poisoning, "Stay hydrated, rest, and seek medical help if symptoms persist or worsen.").
remedy(appendicitis, "Seek emergency medical attention immediately.").
remedy(arthritis, "Use anti-inflammatory medications, stay active, and consult a doctor for long-term care.").
remedy(tuberculosis, "Consult a healthcare provider for proper diagnosis and complete the prescribed medication regimen.").
remedy(bronchitis, "Stay hydrated, rest, and consult a doctor if symptoms persist.").
remedy(sinusitis, "Use nasal decongestants, stay hydrated, and consult a doctor if symptoms persist.").
remedy(allergic_rhinitis, "Use antihistamines, avoid allergens, and use a nasal spray if needed.").
remedy(otitis_media, "Use prescribed antibiotics, manage pain, and keep ears dry.").
remedy(skin_allergy, "Avoid allergens, apply topical creams, and take antihistamines if needed.").
remedy(copd, "Use prescribed inhalers, avoid smoking, and maintain regular check-ups.").
remedy(urinary_tract_infection, "Drink plenty of water, use prescribed antibiotics, and avoid irritants like caffeine.").
remedy(gallstones, "Follow a low-fat diet, take prescribed medications, and consider surgery if needed.").
remedy(peptic_ulcer, "Use prescribed antacids, avoid spicy foods, and reduce stress.").
remedy(hepatitis, "Avoid alcohol, take prescribed medications, and maintain a healthy diet.").
remedy(epilepsy, "Take prescribed anticonvulsants and avoid triggers like stress or lack of sleep.").
remedy(depression, "Seek therapy, consider prescribed medications, and maintain a healthy lifestyle.").
remedy(anxiety_disorder, "Practice relaxation techniques, seek therapy, and take prescribed medications if needed.").
remedy(gerd, "Avoid trigger foods, eat smaller meals, and take antacids or prescribed medications.").
remedy(liver_cirrhosis, "Avoid alcohol, follow a liver-friendly diet, and consult a specialist.").
remedy(kidney_stones, "Stay hydrated, take pain relievers, and consult a doctor for potential removal procedures.").

% Inference Engine
diagnose :-
    write("Enter symptoms as a comma-separated list (e.g., fever, cough): "), nl,
    read_line_to_string(user_input, Input),
    split_string(Input, ",", " ", Symptoms),
    maplist(string_to_atom, Symptoms, SymptomsList),
    (   length(SymptomsList, Len), Len < 3
    ->  write("Please provide at least 3 symptoms for a meaningful diagnosis."), nl,
        fail
    ;   findall(Severity-Cond, 
                (condition(Cond, RequiredSymptoms, Severity), 
                 has_at_least_three_overlapping_symptoms(SymptomsList, RequiredSymptoms)), 
                ConditionPairs),
        sort(ConditionPairs, SortedConditions),  % Sort by severity
        (   SortedConditions = []
        ->  write("No matching condition found. Please consult a doctor for further evaluation."), nl
        ;   write("Based on the symptoms provided, the following conditions were identified (ordered by severity):"), nl,
            print_sorted_conditions(SortedConditions)
        )
    ).

% Helper: Check if the provided symptoms overlap with a condition's symptoms
has_at_least_three_overlapping_symptoms(SymptomsList, RequiredSymptoms) :-
    findall(Symptom, (member(Symptom, SymptomsList), member(Symptom, RequiredSymptoms)), OverlappingSymptoms),
    length(OverlappingSymptoms, OverlapLen),
    OverlapLen >= 3.  % At least three symptoms must match

% Helper: Print Conditions and Remedies
print_sorted_conditions([]).
print_sorted_conditions([Severity-Cond|Rest]) :-
    write("- Condition: "), write(Cond), nl,
    write("  Severity: "), write(Severity), nl,
    remedy(Cond, Remedy),
    write("  Suggested remedy: "), write(Remedy), nl, nl,
    print_sorted_conditions(Rest).

