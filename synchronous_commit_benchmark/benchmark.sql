-- Create the table which will receive test data
DROP TABLE IF EXISTS benchmark;
CREATE TABLE benchmark (
    d1 double precision,
    d2 double precision,
    d3 double precision,
    d4 double precision,
    d5 double precision,
    s1 text,
    s2 text,
    s3 text,
    s4 text,
    s5 text
);

-- Write benchmark (5 x 2E7 rows = 100 M rows)
-- We use constant values so that the CPU is as least used as possible
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) INSERT INTO benchmark SELECT 0.5487519831907406, 0.4872935938111851, 0.49332102249181675, 0.7625924579550725, 0.05153777115574787, '0.9926690628615165', '0.018826968012793932', '0.4878975579926579', '0.5737164736350058', '0.9911040422334372' FROM generate_series(1, 2E7) AS v;
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) INSERT INTO benchmark SELECT 0.5487519831907406, 0.4872935938111851, 0.49332102249181675, 0.7625924579550725, 0.05153777115574787, '0.9926690628615165', '0.018826968012793932', '0.4878975579926579', '0.5737164736350058', '0.9911040422334372' FROM generate_series(1, 2E7) AS v;
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) INSERT INTO benchmark SELECT 0.5487519831907406, 0.4872935938111851, 0.49332102249181675, 0.7625924579550725, 0.05153777115574787, '0.9926690628615165', '0.018826968012793932', '0.4878975579926579', '0.5737164736350058', '0.9911040422334372' FROM generate_series(1, 2E7) AS v;
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) INSERT INTO benchmark SELECT 0.5487519831907406, 0.4872935938111851, 0.49332102249181675, 0.7625924579550725, 0.05153777115574787, '0.9926690628615165', '0.018826968012793932', '0.4878975579926579', '0.5737164736350058', '0.9911040422334372' FROM generate_series(1, 2E7) AS v;
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) INSERT INTO benchmark SELECT 0.5487519831907406, 0.4872935938111851, 0.49332102249181675, 0.7625924579550725, 0.05153777115574787, '0.9926690628615165', '0.018826968012793932', '0.4878975579926579', '0.5737164736350058', '0.9911040422334372' FROM generate_series(1, 2E7) AS v;

-- Print table size
SELECT pg_size_pretty( pg_relation_size('benchmark'));

-- Read benchmark
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) SELECT * FROM benchmark;
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) SELECT * FROM benchmark;
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) SELECT * FROM benchmark;
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) SELECT * FROM benchmark;
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS) SELECT * FROM benchmark;
