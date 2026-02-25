
SELECT 
    session_id,
    status,
    start_time,
    total_elapsed_time
FROM sys.dm_exec_requests
WHERE status = 'running';
