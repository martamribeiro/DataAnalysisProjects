-- Dataset: Netflix Movies and TV Shows from SHIVAM BANSAL
-- Source: https://www.kaggle.com/datasets/shivamb/netflix-shows
-- Used: MySQL and PopSQL

-- ========================================
-- ==========ORGANIZE DATASET==============
-- ========================================

-- ORDER BY SHOW_ID

SELECT *
FROM netflix_catalog
ORDER BY 
  CAST(SUBSTRING(show_id, 2) AS UNSIGNED), -- Extract the numeric part of show_id (starts from 2nd character) and cast it to unsigned integer
  show_id; -- Sort by show_id

-- ========================================
-- ===========OUTPUT RESULTS===============
-- ========================================

--TO-DO