SELECT
    job_location,
    count(*) AS postings
FROM {{ ref('job_postings') }}
GROUP BY job_location
ORDER BY postings DESC
LIMIT 10