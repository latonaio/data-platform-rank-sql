CREATE TABLE `data_platform_rank_text_data`
(
    `RankType`             varchar(4) NOT NULL,
    `Rank`                 int(2) NOT NULL,
    `Language`             varchar(3) NOT NULL,
    `RankName`             varchar(100) NOT NULL,
    `CreationDate`         date NOT NULL,
    `LastChangeDate`       date NOT NULL,
    `IsMarkedForDeletion`  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`RankType`, `Rank`, `Language`),

    CONSTRAINT `DPFMRankTextData_fk` FOREIGN KEY (`RankType`, `Rank`) REFERENCES `data_platform_rank_rank_data` (`RankType`, `Rank`),
    CONSTRAINT `DPFMRankTextDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
