use Animal_Shelter;

SELECT 
    a.Name,
    a.Species,
    MAX(a.Primary_Color) AS Primary_Color,
    MAX(a.Breed) AS Breed,
    COUNT(v.Vaccine) AS Num_Vaccinations
FROM
    Animals AS a
        LEFT OUTER JOIN
    Vaccinations AS v ON a.Name = v.Name
        AND a.Species = v.Species
WHERE
    a.Name <> 'rabbit'
        AND (v.Vaccine <> 'rabies'
        OR v.Vaccine IS NULL)
GROUP BY a.Name , a.species
HAVING MAX(v.Vaccination_Time) < '2019-10-01'
    OR MAX(v.Vaccination_Time) IS NULL
ORDER BY a.Name , a.Species;
			
            
