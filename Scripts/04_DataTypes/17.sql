-- [22007] ERROR: invalid input syntax for type time: "21:15:16:33"
SELECT '21:15:16:33'::time;

-- [22008] ERROR: date/time field value out of range: "21:15:66"
SELECT '21:15:66'::time;

-- [22008] ERROR: date/time field value out of range: "24:15:59"
SELECT '24:15:59'::time;