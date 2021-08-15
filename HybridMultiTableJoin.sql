use Animal_Shelter;

SELECT 
    a.name,
    a.Species,
    a.Breed,
    a.Primary_Color,
    v.Vaccination_Time,
    v.Name,
    p.First_Name,
    p.Last_Name,
    s.Role
FROM
    Animals AS a
        LEFT OUTER JOIN
    Vaccinations AS v
        INNER JOIN
    Staff_Assignments AS s ON v.Email = s.Email
        INNER JOIN
    Persons AS p ON s.Email = p.Email ON v.Name = a.Name
        AND v.Species = a.Species;