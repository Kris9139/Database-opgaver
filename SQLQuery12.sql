SELECT PetName, PetBreed, PetType
FROM PET
WHERE PetType NOT IN ('Cat', 'Dog', 'Fish')