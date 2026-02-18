-- Remove Duplicates
-- Standardize the data
-- null values or blank values
-- remove any coloumns


-- 1.Remove Duplicates

CREATE TABLE layoff_staging
LIKE layoffs;

SELECT *
FROM layoff_staging;


INSERT INTO layoff_staging
SELECT*
FROM layoffs;

WITH layoff_cte AS (
SELECT *,
ROW_NUMBER() 
OVER(PARTITION BY company,location,industry,total_laid_off,`date`,stage,country,funds_raised_millions) AS rn
FROM layoff_staging
)
SELECT *
FROM layoff_cte
WHERE rn >1;

SELECT *
FROM layoff_staging
WHERE company = "Yahoo";

WITH layoff_cte AS (
SELECT *,
ROW_NUMBER() 
OVER(PARTITION BY company,location,industry,total_laid_off,`date`,stage,country,funds_raised_millions) AS rn
FROM layoff_staging
)
DELETE 
FROM layoff_cte
WHERE rn>2;



CREATE TABLE `layoff_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `rn` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SELECT *
FROM layoff_staging2;

INSERT INTO layoff_staging2
SELECT *,
ROW_NUMBER() 
OVER(PARTITION BY company,location,industry,total_laid_off,`date`,stage,country,funds_raised_millions) AS rn
FROM layoff_staging;

SELECT *
FROM layoff_staging2
WHERE rn>1;

DELETE
FROM layoff_staging2
WHERE rn>1;


SELECT *
FROM layoff_staging2
WHERE rn >2;



-- --2.Standardize the data


SELECT *
FROM layoff_staging2;

SELECT company , TRIM(company)
FROM layoff_staging2
ORDER BY company;

UPDATE layoff_staging2
SET company = TRIM(company);

SELECT company
FROM layoff_staging2;


-- industry update

SELECT *
FROM layoff_staging2;

SELECT DISTINCT industry
FROM layoff_staging2
ORDER BY industry;

SELECT DISTINCT industry
FROM layoff_staging2
WHERE industry LIKE "Crypto%";

UPDATE layoff_staging2
SET industry = "Crypto"
WHERE industry LIKE "Crypto%";


-- EDITING LOCATION

SELECT DISTINCT country, TRIM(TRAILING  '.' FROM country)
FROM layoff_staging2
ORDER BY country;


SELECT DISTINCT country
FROM layoff_staging2;


UPDATE layoff_staging2
SET country = TRIM(TRAILING  '.' FROM country)
WHERE country LIKE "United States%";

SELECT DISTINCT country
FROM layoff_staging2;











