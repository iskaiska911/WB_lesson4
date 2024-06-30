CREATE TABLE history.shk_measurement_actual
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


create materialized view mv_shk_measurement_actual_to_history to history.shk_measurement_actual as
select *
from stage.shk_measurement_actual;


CREATE TABLE current.shk_measurement_actual
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


create materialized view mv_shk_measurement_actual_to_current to current.shk_measurement_actual as
select *
from stage.shk_measurement_actual;

