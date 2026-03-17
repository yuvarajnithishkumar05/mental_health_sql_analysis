-- Remove unrealistic ages
DELETE FROM mental_health
WHERE age < 18 OR age > 65;

-- Total survey responses
SELECT COUNT(*) AS total_responses
FROM mental_health;

-- Treatment distribution
SELECT treatment, COUNT(*) AS total_people
FROM mental_health
GROUP BY treatment;

-- Tech employees taking treatment
SELECT COUNT(*) AS tech_people_taking_treatment
FROM mental_health
WHERE tech_company = 'Yes'
AND treatment = 'Yes';

-- Remote vs onsite treatment
SELECT remote_work, treatment, COUNT(*) AS total_people
FROM mental_health
GROUP BY remote_work, treatment;
