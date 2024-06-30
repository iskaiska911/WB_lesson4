CREATE TABLE stage.shk_measurement_actual
(
    `shk_id` Int64,
    `chrt_id` UInt64,
    `nm_id` UInt32,
    `size_a_mm` UInt32,
    `size_b_mm` UInt32,
    `size_c_mm` UInt32,
    `dt` DateTime,
    `employee_id` UInt32,
    `photo_urls` Array(String),
    `volume_ml` UInt64,
    `weight_mg` UInt64,
    `entry` LowCardinality(String) 
)
ENGINE = MergeTree()
ORDER BY shk_id;



CREATE TABLE direct_log.shk_measurement_actual_buf
(
    `shk_id` Int64,
    `chrt_id` UInt64,
    `nm_id` UInt32,
    `size_a_mm` UInt32,
    `size_b_mm` UInt32,
    `size_c_mm` UInt32,
    `dt` DateTime,
    `employee_id` UInt32,
    `photo_urls` Array(String),
    `volume_ml` UInt64,
    `weight_mg` UInt64,
    `entry` LowCardinality(String)  
)
ENGINE = Buffer('stage', 'shk_measurement_actual', 16, 10, 100, 10000, 1000000, 10000000, 100000000);