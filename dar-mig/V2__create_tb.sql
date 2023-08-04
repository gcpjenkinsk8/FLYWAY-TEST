CREATE TABLE `figEthRewards` (
  `dateReward` datetime(6) NOT NULL SERIES TIMESTAMP,
  `value` double DEFAULT 0,
  `staking` double DEFAULT 0,
  `tips` double DEFAULT 0,
  SHARD KEY `idx_SHARDKEY` (`dateReward`),
  UNIQUE KEY `UniqueID` (`dateReward`) USING HASH,
  KEY `dateRewar` (`dateReward`) USING CLUSTERED COLUMNSTORE
) AUTOSTATS_CARDINALITY_MODE=INCREMENTAL AUTOSTATS_HISTOGRAM_MODE=CREATE AUTOSTATS_SAMPLING=ON SQL_MODE='STRICT_ALL_TABLES'