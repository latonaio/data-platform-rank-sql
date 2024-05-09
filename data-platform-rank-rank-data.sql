CREATE TABLE `data_platform_rank_rank_data`
(
    `RankType`               varchar(4) NOT NULL,
    `Rank`                   int(2) NOT NULL,
    `RankSymbol`             varchar(40) NOT NULL,
    `CreationDate`           date NOT NULL,
    `LastChangeDate`         date NOT NULL,
    `IsMarkedForDeletion`    tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`RankType`, `Rank`),
  
    CONSTRAINT `DPFMRankRankDataRankType_fk` FOREIGN KEY (`RankType`) REFERENCES `data_platform_rank_type_rank_type_data` (`RankType`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
