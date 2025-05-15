% Facts: Patients and their symptoms
symptom(ali, fever).
symptom(ali, cough).
symptom(ali, headache).

symptom(ahmed, sore_throat).
symptom(ahmed, fever).
symptom(ahmed, fatigue).

symptom(saood, sneezing).
symptom(saood, runny_nose).
symptom(saood, itchy_eyes).

symptom(saad, nausea).
symptom(saad, vomiting).
symptom(saad, stomach_pain).

% Rules: Diagnosing illnesses based on symptoms
illness(Person, flu) :- 
    symptom(Person, fever), 
    symptom(Person, cough), 
    symptom(Person, headache).

illness(Person, common_cold) :- 
    symptom(Person, sneezing), 
    symptom(Person, runny_nose), 
    symptom(Person, itchy_eyes).

illness(Person, strep_throat) :- 
    symptom(Person, sore_throat), 
    symptom(Person, fever), 
    symptom(Person, fatigue).

illness(Person, food_poisoning) :- 
    symptom(Person, nausea), 
    symptom(Person, vomiting), 
    symptom(Person, stomach_pain).

% Example Queries:
% ?- illness(ali, X).        % Expected Output: X = flu.
% ?- illness(ahmed, X).      % Expected Output: X = strep_throat.
% ?- illness(saood, X).      % Expected Output: X = common_cold.
% ?- illness(saad, X).       % Expected Output: X = food_poisoning.
