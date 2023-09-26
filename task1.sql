SELECT interest, COUNT(*) AS num_users
FROM (
    SELECT UNNEST(interests) AS interest
    FROM user_profiles
) AS interests_unnested
GROUP BY interest
ORDER BY num_users DESC;
