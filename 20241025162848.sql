/*
MySQL Backup
Database: lineage2
Backup Time: 2024-10-25 16:29:48
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `lineage2`.`account_data`;
DROP TABLE IF EXISTS `lineage2`.`account_gsdata`;
DROP TABLE IF EXISTS `lineage2`.`account_premium`;
DROP TABLE IF EXISTS `lineage2`.`accounts`;
DROP TABLE IF EXISTS `lineage2`.`accounts_ipauth`;
DROP TABLE IF EXISTS `lineage2`.`airships`;
DROP TABLE IF EXISTS `lineage2`.`announcements`;
DROP TABLE IF EXISTS `lineage2`.`auction_bid`;
DROP TABLE IF EXISTS `lineage2`.`bbs_favorites`;
DROP TABLE IF EXISTS `lineage2`.`bot_reported_char_data`;
DROP TABLE IF EXISTS `lineage2`.`buffer_schemes`;
DROP TABLE IF EXISTS `lineage2`.`buylists`;
DROP TABLE IF EXISTS `lineage2`.`castle`;
DROP TABLE IF EXISTS `lineage2`.`castle_doorupgrade`;
DROP TABLE IF EXISTS `lineage2`.`castle_functions`;
DROP TABLE IF EXISTS `lineage2`.`castle_manor_procure`;
DROP TABLE IF EXISTS `lineage2`.`castle_manor_production`;
DROP TABLE IF EXISTS `lineage2`.`castle_siege_guards`;
DROP TABLE IF EXISTS `lineage2`.`castle_trapupgrade`;
DROP TABLE IF EXISTS `lineage2`.`character_contacts`;
DROP TABLE IF EXISTS `lineage2`.`character_daily_rewards`;
DROP TABLE IF EXISTS `lineage2`.`character_friends`;
DROP TABLE IF EXISTS `lineage2`.`character_hennas`;
DROP TABLE IF EXISTS `lineage2`.`character_instance_time`;
DROP TABLE IF EXISTS `lineage2`.`character_item_reuse_save`;
DROP TABLE IF EXISTS `lineage2`.`character_macroses`;
DROP TABLE IF EXISTS `lineage2`.`character_mentees`;
DROP TABLE IF EXISTS `lineage2`.`character_offline_trade`;
DROP TABLE IF EXISTS `lineage2`.`character_offline_trade_items`;
DROP TABLE IF EXISTS `lineage2`.`character_pet_skills_save`;
DROP TABLE IF EXISTS `lineage2`.`character_premium_items`;
DROP TABLE IF EXISTS `lineage2`.`character_quests`;
DROP TABLE IF EXISTS `lineage2`.`character_recipebook`;
DROP TABLE IF EXISTS `lineage2`.`character_recipeshoplist`;
DROP TABLE IF EXISTS `lineage2`.`character_reco_bonus`;
DROP TABLE IF EXISTS `lineage2`.`character_shortcuts`;
DROP TABLE IF EXISTS `lineage2`.`character_skills`;
DROP TABLE IF EXISTS `lineage2`.`character_skills_save`;
DROP TABLE IF EXISTS `lineage2`.`character_subclasses`;
DROP TABLE IF EXISTS `lineage2`.`character_summon_skills_save`;
DROP TABLE IF EXISTS `lineage2`.`character_summons`;
DROP TABLE IF EXISTS `lineage2`.`character_tpbookmark`;
DROP TABLE IF EXISTS `lineage2`.`character_variables`;
DROP TABLE IF EXISTS `lineage2`.`characters`;
DROP TABLE IF EXISTS `lineage2`.`clan_data`;
DROP TABLE IF EXISTS `lineage2`.`clan_notices`;
DROP TABLE IF EXISTS `lineage2`.`clan_privs`;
DROP TABLE IF EXISTS `lineage2`.`clan_skills`;
DROP TABLE IF EXISTS `lineage2`.`clan_subpledges`;
DROP TABLE IF EXISTS `lineage2`.`clan_variables`;
DROP TABLE IF EXISTS `lineage2`.`clan_wars`;
DROP TABLE IF EXISTS `lineage2`.`clanhall`;
DROP TABLE IF EXISTS `lineage2`.`clanhall_auctions_bidders`;
DROP TABLE IF EXISTS `lineage2`.`commission_items`;
DROP TABLE IF EXISTS `lineage2`.`crests`;
DROP TABLE IF EXISTS `lineage2`.`cursed_weapons`;
DROP TABLE IF EXISTS `lineage2`.`custom_mail`;
DROP TABLE IF EXISTS `lineage2`.`custom_teleport`;
DROP TABLE IF EXISTS `lineage2`.`event_schedulers`;
DROP TABLE IF EXISTS `lineage2`.`fort`;
DROP TABLE IF EXISTS `lineage2`.`fort_doorupgrade`;
DROP TABLE IF EXISTS `lineage2`.`fort_functions`;
DROP TABLE IF EXISTS `lineage2`.`fort_siege_guards`;
DROP TABLE IF EXISTS `lineage2`.`fort_spawnlist`;
DROP TABLE IF EXISTS `lineage2`.`fortsiege_clans`;
DROP TABLE IF EXISTS `lineage2`.`forums`;
DROP TABLE IF EXISTS `lineage2`.`gameservers`;
DROP TABLE IF EXISTS `lineage2`.`global_tasks`;
DROP TABLE IF EXISTS `lineage2`.`global_variables`;
DROP TABLE IF EXISTS `lineage2`.`grandboss_data`;
DROP TABLE IF EXISTS `lineage2`.`heroes`;
DROP TABLE IF EXISTS `lineage2`.`heroes_diary`;
DROP TABLE IF EXISTS `lineage2`.`item_auction`;
DROP TABLE IF EXISTS `lineage2`.`item_auction_bid`;
DROP TABLE IF EXISTS `lineage2`.`item_elementals`;
DROP TABLE IF EXISTS `lineage2`.`item_variables`;
DROP TABLE IF EXISTS `lineage2`.`item_variations`;
DROP TABLE IF EXISTS `lineage2`.`items`;
DROP TABLE IF EXISTS `lineage2`.`itemsonground`;
DROP TABLE IF EXISTS `lineage2`.`lottery`;
DROP TABLE IF EXISTS `lineage2`.`mdt_bets`;
DROP TABLE IF EXISTS `lineage2`.`mdt_history`;
DROP TABLE IF EXISTS `lineage2`.`merchant_lease`;
DROP TABLE IF EXISTS `lineage2`.`messages`;
DROP TABLE IF EXISTS `lineage2`.`npc_respawns`;
DROP TABLE IF EXISTS `lineage2`.`olympiad_data`;
DROP TABLE IF EXISTS `lineage2`.`olympiad_fights`;
DROP TABLE IF EXISTS `lineage2`.`olympiad_nobles`;
DROP TABLE IF EXISTS `lineage2`.`olympiad_nobles_eom`;
DROP TABLE IF EXISTS `lineage2`.`party_matching_history`;
DROP TABLE IF EXISTS `lineage2`.`petition_feedback`;
DROP TABLE IF EXISTS `lineage2`.`pets`;
DROP TABLE IF EXISTS `lineage2`.`pledge_applicant`;
DROP TABLE IF EXISTS `lineage2`.`pledge_recruit`;
DROP TABLE IF EXISTS `lineage2`.`pledge_waiting_list`;
DROP TABLE IF EXISTS `lineage2`.`posts`;
DROP TABLE IF EXISTS `lineage2`.`punishments`;
DROP TABLE IF EXISTS `lineage2`.`residence_functions`;
DROP TABLE IF EXISTS `lineage2`.`siege_clans`;
DROP TABLE IF EXISTS `lineage2`.`topic`;
CREATE TABLE `account_data` (
  `account_name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `var` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`account_name`,`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `account_gsdata` (
  `account_name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `var` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`account_name`,`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `account_premium` (
  `account_name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `enddate` decimal(20,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `accounts` (
  `login` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastactive` bigint unsigned NOT NULL DEFAULT '0',
  `accessLevel` tinyint NOT NULL DEFAULT '0',
  `lastIP` char(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lastServer` tinyint DEFAULT '1',
  `pcIp` char(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hop1` char(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hop2` char(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hop3` char(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hop4` char(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `accounts_ipauth` (
  `login` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip` char(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` enum('deny','allow') COLLATE utf8mb3_unicode_ci DEFAULT 'allow'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `airships` (
  `owner_id` int NOT NULL,
  `fuel` decimal(5,0) NOT NULL DEFAULT '600',
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `announcements` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `initial` bigint NOT NULL DEFAULT '0',
  `delay` bigint NOT NULL DEFAULT '0',
  `repeat` int NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `auction_bid` (
  `id` int NOT NULL DEFAULT '0',
  `auctionId` int NOT NULL DEFAULT '0',
  `bidderId` int NOT NULL DEFAULT '0',
  `bidderName` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `clan_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `maxBid` bigint unsigned NOT NULL DEFAULT '0',
  `time_bid` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auctionId`,`bidderId`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `bbs_favorites` (
  `favId` int unsigned NOT NULL AUTO_INCREMENT,
  `playerId` int unsigned NOT NULL,
  `favTitle` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `favBypass` varchar(127) COLLATE utf8mb3_unicode_ci NOT NULL,
  `favAddDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`favId`),
  UNIQUE KEY `favId_playerId` (`favId`,`playerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `bot_reported_char_data` (
  `botId` int unsigned NOT NULL DEFAULT '0',
  `reporterId` int unsigned NOT NULL DEFAULT '0',
  `reportDate` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`botId`,`reporterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `buffer_schemes` (
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `scheme_name` varchar(16) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'default',
  `skills` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`object_id`,`scheme_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `buylists` (
  `buylist_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `count` bigint unsigned NOT NULL DEFAULT '0',
  `next_restock_time` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`buylist_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `castle` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(25) COLLATE utf8mb3_unicode_ci NOT NULL,
  `side` enum('NEUTRAL','LIGHT','DARK') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NEUTRAL',
  `treasury` bigint NOT NULL DEFAULT '0',
  `siegeDate` bigint unsigned NOT NULL DEFAULT '0',
  `regTimeOver` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'true',
  `regTimeEnd` bigint unsigned NOT NULL DEFAULT '0',
  `showNpcCrest` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'false',
  `ticketBuyCount` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `castle_doorupgrade` (
  `doorId` int unsigned NOT NULL DEFAULT '0',
  `ratio` tinyint unsigned NOT NULL DEFAULT '0',
  `castleId` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`doorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `castle_functions` (
  `castle_id` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `lvl` int NOT NULL DEFAULT '0',
  `lease` int NOT NULL DEFAULT '0',
  `rate` decimal(20,0) NOT NULL DEFAULT '0',
  `endTime` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`castle_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `castle_manor_procure` (
  `castle_id` tinyint unsigned NOT NULL DEFAULT '0',
  `crop_id` int unsigned NOT NULL DEFAULT '0',
  `amount` int unsigned NOT NULL DEFAULT '0',
  `start_amount` int unsigned NOT NULL DEFAULT '0',
  `price` int unsigned NOT NULL DEFAULT '0',
  `reward_type` tinyint unsigned NOT NULL DEFAULT '0',
  `next_period` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`castle_id`,`crop_id`,`next_period`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `castle_manor_production` (
  `castle_id` tinyint unsigned NOT NULL DEFAULT '0',
  `seed_id` int unsigned NOT NULL DEFAULT '0',
  `amount` int unsigned NOT NULL DEFAULT '0',
  `start_amount` int unsigned NOT NULL DEFAULT '0',
  `price` int unsigned NOT NULL DEFAULT '0',
  `next_period` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`castle_id`,`seed_id`,`next_period`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `castle_siege_guards` (
  `castleId` tinyint unsigned NOT NULL DEFAULT '0',
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `npcId` smallint unsigned NOT NULL DEFAULT '0',
  `x` mediumint NOT NULL DEFAULT '0',
  `y` mediumint NOT NULL DEFAULT '0',
  `z` mediumint NOT NULL DEFAULT '0',
  `heading` mediumint NOT NULL DEFAULT '0',
  `respawnDelay` mediumint NOT NULL DEFAULT '0',
  `isHired` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`castleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3690 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `castle_trapupgrade` (
  `castleId` tinyint unsigned NOT NULL DEFAULT '0',
  `towerIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `level` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`towerIndex`,`castleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_contacts` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `contactId` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`,`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_daily_rewards` (
  `charId` int unsigned NOT NULL,
  `rewardId` int unsigned NOT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `progress` int unsigned NOT NULL DEFAULT '0',
  `lastCompleted` bigint unsigned NOT NULL,
  PRIMARY KEY (`charId`,`rewardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_friends` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `friendId` int unsigned NOT NULL DEFAULT '0',
  `relation` int unsigned NOT NULL DEFAULT '0',
  `memo` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`charId`,`friendId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `character_hennas` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `symbol_id` int DEFAULT NULL,
  `slot` int NOT NULL DEFAULT '0',
  `class_index` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`,`slot`,`class_index`),
  KEY `idx_charId_classIndex` (`charId`,`class_index`),
  KEY `idx_charId_slot_classIndex` (`charId`,`slot`,`class_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_instance_time` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `instanceId` int NOT NULL DEFAULT '0',
  `time` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_item_reuse_save` (
  `charId` int NOT NULL DEFAULT '0',
  `itemId` int NOT NULL DEFAULT '0',
  `itemObjId` int NOT NULL DEFAULT '1',
  `reuseDelay` int NOT NULL DEFAULT '0',
  `systime` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`,`itemId`,`itemObjId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_macroses` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `id` int NOT NULL DEFAULT '0',
  `icon` int DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `descr` varchar(80) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `acronym` varchar(4) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `commands` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`charId`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `character_mentees` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `mentorId` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_offline_trade` (
  `charId` int unsigned NOT NULL,
  `time` bigint unsigned NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `character_offline_trade_items` (
  `charId` int unsigned NOT NULL,
  `item` int unsigned NOT NULL DEFAULT '0',
  `count` bigint unsigned NOT NULL DEFAULT '0',
  `price` bigint unsigned NOT NULL DEFAULT '0',
  KEY `charId` (`charId`),
  KEY `item` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_pet_skills_save` (
  `petObjItemId` int NOT NULL DEFAULT '0',
  `skill_id` int NOT NULL DEFAULT '0',
  `skill_level` int NOT NULL DEFAULT '1',
  `skill_sub_level` int NOT NULL DEFAULT '0',
  `remaining_time` int NOT NULL DEFAULT '0',
  `buff_index` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`petObjItemId`,`skill_id`,`skill_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `character_premium_items` (
  `charId` int NOT NULL,
  `itemNum` int NOT NULL,
  `itemId` int NOT NULL,
  `itemCount` bigint unsigned NOT NULL,
  `itemSender` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  KEY `charId` (`charId`),
  KEY `itemNum` (`itemNum`),
  KEY `itemId` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `character_quests` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `var` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`charId`,`name`,`var`),
  UNIQUE KEY `idx_charId_name_var` (`charId`,`name`,`var`),
  KEY `idx_charId_name` (`charId`,`name`),
  KEY `idx_charId_var` (`charId`,`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `character_recipebook` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `id` decimal(11,0) NOT NULL DEFAULT '0',
  `classIndex` tinyint NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`charId`,`classIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_recipeshoplist` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `recipeId` int unsigned NOT NULL DEFAULT '0',
  `price` bigint unsigned NOT NULL DEFAULT '0',
  `index` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`,`recipeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_reco_bonus` (
  `charId` int unsigned NOT NULL,
  `rec_have` tinyint unsigned NOT NULL DEFAULT '0',
  `rec_left` tinyint unsigned NOT NULL DEFAULT '0',
  `time_left` bigint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `charId` (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_shortcuts` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `slot` decimal(3,0) NOT NULL DEFAULT '0',
  `page` decimal(3,0) NOT NULL DEFAULT '0',
  `type` decimal(3,0) DEFAULT NULL,
  `shortcut_id` decimal(16,0) DEFAULT NULL,
  `level` mediumint DEFAULT NULL,
  `sub_level` int NOT NULL DEFAULT '0',
  `class_index` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`,`slot`,`page`,`class_index`),
  KEY `shortcut_id` (`shortcut_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_skills` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `skill_id` int NOT NULL DEFAULT '0',
  `skill_level` int NOT NULL DEFAULT '1',
  `skill_sub_level` int NOT NULL DEFAULT '0',
  `class_index` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`,`skill_id`,`class_index`),
  KEY `idx_charId_classIndex` (`charId`,`class_index`),
  KEY `idx_skillId_charId_classIndex` (`skill_id`,`charId`,`class_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_skills_save` (
  `charId` int NOT NULL DEFAULT '0',
  `skill_id` int NOT NULL DEFAULT '0',
  `skill_level` int NOT NULL DEFAULT '1',
  `skill_sub_level` int NOT NULL DEFAULT '0',
  `remaining_time` int NOT NULL DEFAULT '0',
  `reuse_delay` int NOT NULL DEFAULT '0',
  `systime` bigint unsigned NOT NULL DEFAULT '0',
  `restore_type` int NOT NULL DEFAULT '0',
  `class_index` int NOT NULL DEFAULT '0',
  `buff_index` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`,`skill_id`,`skill_level`,`class_index`),
  KEY `idx_charId_classIndex` (`charId`,`class_index`),
  KEY `idx_charId_classIndex_buffIndex` (`charId`,`class_index`,`buff_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_subclasses` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `class_id` int NOT NULL DEFAULT '0',
  `exp` bigint NOT NULL DEFAULT '0',
  `sp` bigint NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '40',
  `vitality_points` mediumint unsigned NOT NULL DEFAULT '0',
  `class_index` int NOT NULL DEFAULT '0',
  `dual_class` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`,`class_id`),
  KEY `idx_charId_classIndex` (`charId`,`class_index`),
  KEY `idx_charId_classId` (`charId`,`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_summon_skills_save` (
  `ownerId` int NOT NULL DEFAULT '0',
  `ownerClassIndex` int NOT NULL DEFAULT '0',
  `summonSkillId` int NOT NULL DEFAULT '0',
  `skill_id` int NOT NULL DEFAULT '0',
  `skill_level` int NOT NULL DEFAULT '1',
  `skill_sub_level` int NOT NULL DEFAULT '0',
  `remaining_time` int NOT NULL DEFAULT '0',
  `buff_index` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerId`,`ownerClassIndex`,`summonSkillId`,`skill_id`,`skill_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_summons` (
  `ownerId` int unsigned NOT NULL,
  `summonId` int unsigned NOT NULL,
  `summonSkillId` int unsigned NOT NULL,
  `curHp` int unsigned DEFAULT '0',
  `curMp` int unsigned DEFAULT '0',
  `time` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerId`,`summonId`,`summonSkillId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `character_tpbookmark` (
  `charId` int NOT NULL,
  `Id` int NOT NULL,
  `x` int NOT NULL,
  `y` int NOT NULL,
  `z` int NOT NULL,
  `icon` int NOT NULL,
  `tag` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`charId`,`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `character_variables` (
  `charId` int unsigned NOT NULL,
  `var` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb3_unicode_ci NOT NULL,
  KEY `idx_charId` (`charId`),
  KEY `idx_var` (`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `characters` (
  `account_name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `charId` int unsigned NOT NULL DEFAULT '0',
  `char_name` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL,
  `level` tinyint unsigned DEFAULT NULL,
  `maxHp` mediumint unsigned DEFAULT NULL,
  `curHp` mediumint unsigned DEFAULT NULL,
  `maxCp` mediumint unsigned DEFAULT NULL,
  `curCp` mediumint unsigned DEFAULT NULL,
  `maxMp` mediumint unsigned DEFAULT NULL,
  `curMp` mediumint unsigned DEFAULT NULL,
  `face` tinyint unsigned DEFAULT NULL,
  `hairStyle` tinyint unsigned DEFAULT NULL,
  `hairColor` tinyint unsigned DEFAULT NULL,
  `sex` tinyint unsigned DEFAULT NULL,
  `heading` mediumint DEFAULT NULL,
  `x` mediumint DEFAULT NULL,
  `y` mediumint DEFAULT NULL,
  `z` mediumint DEFAULT NULL,
  `exp` bigint unsigned DEFAULT '0',
  `expBeforeDeath` bigint unsigned DEFAULT '0',
  `sp` bigint unsigned NOT NULL DEFAULT '0',
  `reputation` int DEFAULT NULL,
  `fame` mediumint unsigned NOT NULL DEFAULT '0',
  `raidbossPoints` mediumint unsigned NOT NULL DEFAULT '0',
  `pvpkills` smallint unsigned DEFAULT NULL,
  `pkkills` smallint unsigned DEFAULT NULL,
  `clanid` int unsigned DEFAULT NULL,
  `race` tinyint unsigned DEFAULT NULL,
  `classid` tinyint unsigned DEFAULT NULL,
  `base_class` tinyint unsigned NOT NULL DEFAULT '0',
  `transform_id` smallint unsigned NOT NULL DEFAULT '0',
  `deletetime` bigint unsigned NOT NULL DEFAULT '0',
  `cancraft` tinyint unsigned DEFAULT NULL,
  `title` varchar(21) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title_color` mediumint unsigned NOT NULL DEFAULT '15530402',
  `accesslevel` mediumint DEFAULT '0',
  `online` tinyint unsigned DEFAULT NULL,
  `onlinetime` int DEFAULT NULL,
  `char_slot` tinyint unsigned DEFAULT NULL,
  `lastAccess` bigint unsigned NOT NULL DEFAULT '0',
  `clan_privs` int unsigned DEFAULT '0',
  `wantspeace` tinyint unsigned DEFAULT '0',
  `power_grade` tinyint unsigned DEFAULT NULL,
  `nobless` tinyint unsigned NOT NULL DEFAULT '0',
  `subpledge` smallint NOT NULL DEFAULT '0',
  `lvl_joined_academy` tinyint unsigned NOT NULL DEFAULT '0',
  `apprentice` int unsigned NOT NULL DEFAULT '0',
  `sponsor` int unsigned NOT NULL DEFAULT '0',
  `clan_join_expiry_time` bigint unsigned NOT NULL DEFAULT '0',
  `clan_create_expiry_time` bigint unsigned NOT NULL DEFAULT '0',
  `bookmarkslot` smallint unsigned NOT NULL DEFAULT '0',
  `vitality_points` mediumint unsigned NOT NULL DEFAULT '0',
  `createDate` date NOT NULL DEFAULT '2015-01-01',
  `language` varchar(2) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `faction` tinyint unsigned NOT NULL DEFAULT '0',
  `pccafe_points` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`),
  KEY `account_name` (`account_name`),
  KEY `char_name` (`char_name`),
  KEY `clanid` (`clanid`),
  KEY `online` (`online`),
  KEY `idx_charId` (`charId`),
  KEY `idx_char_name` (`char_name`),
  KEY `idx_account_name` (`account_name`),
  KEY `idx_accountName_createDate` (`account_name`,`createDate`),
  KEY `idx_createDate` (`createDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `clan_data` (
  `clan_id` int NOT NULL DEFAULT '0',
  `clan_name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `clan_level` int DEFAULT NULL,
  `reputation_score` int NOT NULL DEFAULT '0',
  `hasCastle` int DEFAULT NULL,
  `blood_alliance_count` smallint unsigned NOT NULL DEFAULT '0',
  `blood_oath_count` smallint unsigned NOT NULL DEFAULT '0',
  `ally_id` int DEFAULT NULL,
  `ally_name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `leader_id` int DEFAULT NULL,
  `crest_id` int DEFAULT NULL,
  `crest_large_id` int DEFAULT NULL,
  `ally_crest_id` int DEFAULT NULL,
  `auction_bid_at` int NOT NULL DEFAULT '0',
  `ally_penalty_expiry_time` bigint unsigned NOT NULL DEFAULT '0',
  `ally_penalty_type` tinyint(1) NOT NULL DEFAULT '0',
  `char_penalty_expiry_time` bigint unsigned NOT NULL DEFAULT '0',
  `dissolving_expiry_time` bigint unsigned NOT NULL DEFAULT '0',
  `new_leader_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`clan_id`),
  KEY `ally_id` (`ally_id`),
  KEY `leader_id` (`leader_id`),
  KEY `auction_bid_at` (`auction_bid_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `clan_notices` (
  `clan_id` int NOT NULL DEFAULT '0',
  `enabled` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'false',
  `notice` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`clan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `clan_privs` (
  `clan_id` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  `party` int NOT NULL DEFAULT '0',
  `privs` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`clan_id`,`rank`,`party`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `clan_skills` (
  `clan_id` int NOT NULL DEFAULT '0',
  `skill_id` int NOT NULL DEFAULT '0',
  `skill_level` int NOT NULL DEFAULT '0',
  `skill_name` varchar(26) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sub_pledge_id` int NOT NULL DEFAULT '-2',
  PRIMARY KEY (`clan_id`,`skill_id`,`sub_pledge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `clan_subpledges` (
  `clan_id` int NOT NULL DEFAULT '0',
  `sub_pledge_id` int NOT NULL DEFAULT '0',
  `name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `leader_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`clan_id`,`sub_pledge_id`),
  KEY `leader_id` (`leader_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `clan_variables` (
  `clanId` int unsigned NOT NULL,
  `var` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb3_unicode_ci NOT NULL,
  KEY `clanId` (`clanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `clan_wars` (
  `clan1` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `clan2` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `clan1Kill` int NOT NULL DEFAULT '0',
  `clan2Kill` int NOT NULL DEFAULT '0',
  `winnerClan` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `startTime` bigint NOT NULL DEFAULT '0',
  `endTime` bigint NOT NULL DEFAULT '0',
  `state` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`clan1`,`clan2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `clanhall` (
  `id` int NOT NULL DEFAULT '0',
  `ownerId` int NOT NULL DEFAULT '0',
  `paidUntil` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ownerId` (`ownerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `clanhall_auctions_bidders` (
  `clanHallId` int unsigned NOT NULL DEFAULT '0',
  `clanId` int unsigned NOT NULL DEFAULT '0',
  `bid` bigint unsigned NOT NULL DEFAULT '0',
  `bidTime` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`clanHallId`,`clanId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `commission_items` (
  `commission_id` bigint NOT NULL AUTO_INCREMENT,
  `item_object_id` int NOT NULL,
  `price_per_unit` bigint NOT NULL,
  `start_time` timestamp NOT NULL,
  `duration_in_days` tinyint NOT NULL,
  `discount_in_percentage` tinyint NOT NULL,
  PRIMARY KEY (`commission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `crests` (
  `crest_id` int NOT NULL,
  `data` varbinary(2176) NOT NULL,
  `type` tinyint NOT NULL,
  PRIMARY KEY (`crest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `cursed_weapons` (
  `itemId` int NOT NULL,
  `charId` int unsigned NOT NULL DEFAULT '0',
  `playerReputation` int DEFAULT '0',
  `playerPkKills` int DEFAULT '0',
  `nbKills` int DEFAULT '0',
  `endTime` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`),
  KEY `charId` (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `custom_mail` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `receiver` int unsigned NOT NULL DEFAULT '0',
  `subject` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `custom_teleport` (
  `Description` varchar(75) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `id` mediumint unsigned NOT NULL DEFAULT '0',
  `loc_x` mediumint DEFAULT NULL,
  `loc_y` mediumint DEFAULT NULL,
  `loc_z` mediumint DEFAULT NULL,
  `price` int unsigned DEFAULT NULL,
  `fornoble` tinyint(1) NOT NULL DEFAULT '0',
  `itemId` smallint unsigned NOT NULL DEFAULT '57',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `event_schedulers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `eventName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `schedulerName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `lastRun` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eventName_schedulerName` (`eventName`,`schedulerName`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `fort` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(25) COLLATE utf8mb3_unicode_ci NOT NULL,
  `siegeDate` bigint unsigned NOT NULL DEFAULT '0',
  `lastOwnedTime` bigint unsigned NOT NULL DEFAULT '0',
  `owner` int NOT NULL DEFAULT '0',
  `fortType` int NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '0',
  `castleId` int NOT NULL DEFAULT '0',
  `supplyLvL` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `fort_doorupgrade` (
  `doorId` int NOT NULL DEFAULT '0',
  `fortId` int NOT NULL,
  `hp` int NOT NULL DEFAULT '0',
  `pDef` int NOT NULL DEFAULT '0',
  `mDef` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`doorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `fort_functions` (
  `fort_id` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `lvl` int NOT NULL DEFAULT '0',
  `lease` int NOT NULL DEFAULT '0',
  `rate` decimal(20,0) NOT NULL DEFAULT '0',
  `endTime` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fort_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `fort_siege_guards` (
  `fortId` tinyint unsigned NOT NULL DEFAULT '0',
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `npcId` smallint unsigned NOT NULL DEFAULT '0',
  `x` mediumint NOT NULL DEFAULT '0',
  `y` mediumint NOT NULL DEFAULT '0',
  `z` mediumint NOT NULL DEFAULT '0',
  `heading` mediumint NOT NULL DEFAULT '0',
  `respawnDelay` mediumint NOT NULL DEFAULT '0',
  `isHired` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`fortId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `fort_spawnlist` (
  `fortId` tinyint unsigned NOT NULL DEFAULT '0',
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `npcId` smallint unsigned NOT NULL DEFAULT '0',
  `x` mediumint NOT NULL DEFAULT '0',
  `y` mediumint NOT NULL DEFAULT '0',
  `z` mediumint NOT NULL DEFAULT '0',
  `heading` mediumint NOT NULL DEFAULT '0',
  `spawnType` tinyint unsigned NOT NULL DEFAULT '0',
  `castleId` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`fortId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `fortsiege_clans` (
  `fort_id` int NOT NULL DEFAULT '0',
  `clan_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`clan_id`,`fort_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `forums` (
  `forum_id` int NOT NULL DEFAULT '0',
  `forum_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `forum_parent` int NOT NULL DEFAULT '0',
  `forum_post` int NOT NULL DEFAULT '0',
  `forum_type` int NOT NULL DEFAULT '0',
  `forum_perm` int NOT NULL DEFAULT '0',
  `forum_owner_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `forum_owner_id` (`forum_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `gameservers` (
  `server_id` int NOT NULL DEFAULT '0',
  `hexid` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `host` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `global_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `last_activation` bigint unsigned NOT NULL DEFAULT '0',
  `param1` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `param2` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `param3` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `global_variables` (
  `var` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `grandboss_data` (
  `boss_id` smallint unsigned NOT NULL,
  `loc_x` mediumint NOT NULL,
  `loc_y` mediumint NOT NULL,
  `loc_z` mediumint NOT NULL,
  `heading` mediumint NOT NULL DEFAULT '0',
  `respawn_time` bigint unsigned NOT NULL DEFAULT '0',
  `currentHP` decimal(30,15) NOT NULL,
  `currentMP` decimal(30,15) NOT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`boss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `heroes` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `class_id` decimal(3,0) NOT NULL DEFAULT '0',
  `count` decimal(3,0) NOT NULL DEFAULT '0',
  `played` decimal(1,0) NOT NULL DEFAULT '0',
  `claimed` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'false',
  `message` varchar(300) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `heroes_diary` (
  `charId` int unsigned NOT NULL,
  `time` bigint unsigned NOT NULL DEFAULT '0',
  `action` tinyint unsigned NOT NULL DEFAULT '0',
  `param` int unsigned NOT NULL DEFAULT '0',
  KEY `charId` (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `item_auction` (
  `auctionId` int NOT NULL,
  `instanceId` int NOT NULL,
  `auctionItemId` int NOT NULL,
  `startingTime` bigint unsigned NOT NULL DEFAULT '0',
  `endingTime` bigint unsigned NOT NULL DEFAULT '0',
  `auctionStateId` tinyint(1) NOT NULL,
  PRIMARY KEY (`auctionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `item_auction_bid` (
  `auctionId` int NOT NULL,
  `playerObjId` int NOT NULL,
  `playerBid` bigint NOT NULL,
  PRIMARY KEY (`auctionId`,`playerObjId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `item_elementals` (
  `itemId` int NOT NULL DEFAULT '0',
  `elemType` tinyint(1) NOT NULL DEFAULT '-1',
  `elemValue` int NOT NULL DEFAULT '-1',
  PRIMARY KEY (`itemId`,`elemType`),
  KEY `idx_itemId_elemType` (`itemId`,`elemType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `item_variables` (
  `id` int unsigned NOT NULL,
  `var` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb3_unicode_ci NOT NULL,
  KEY `charId` (`id`),
  KEY `idx_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `item_variations` (
  `itemId` int NOT NULL,
  `mineralId` int NOT NULL DEFAULT '0',
  `option1` int NOT NULL,
  `option2` int NOT NULL,
  PRIMARY KEY (`itemId`),
  KEY `idx_itemId` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `items` (
  `owner_id` int DEFAULT NULL,
  `object_id` int NOT NULL DEFAULT '0',
  `item_id` int DEFAULT NULL,
  `count` bigint unsigned NOT NULL DEFAULT '0',
  `enchant_level` int DEFAULT NULL,
  `loc` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `loc_data` int DEFAULT NULL,
  `time_of_use` int DEFAULT NULL,
  `custom_type1` int DEFAULT '0',
  `custom_type2` int DEFAULT '0',
  `mana_left` decimal(5,0) NOT NULL DEFAULT '-1',
  `time` decimal(13,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `owner_id` (`owner_id`),
  KEY `item_id` (`item_id`),
  KEY `loc` (`loc`),
  KEY `time_of_use` (`time_of_use`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_object_id` (`object_id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_owner_id_loc` (`owner_id`,`loc`),
  KEY `idx_owner_id_item_id` (`owner_id`,`item_id`),
  KEY `idx_owner_id_loc_locdata` (`owner_id`,`loc`,`loc_data`),
  KEY `idx_owner_id_loc_locdata_enchant` (`owner_id`,`loc`,`loc_data`,`enchant_level`,`item_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `itemsonground` (
  `object_id` int NOT NULL DEFAULT '0',
  `item_id` int DEFAULT NULL,
  `count` bigint unsigned NOT NULL DEFAULT '0',
  `enchant_level` int DEFAULT NULL,
  `x` int DEFAULT NULL,
  `y` int DEFAULT NULL,
  `z` int DEFAULT NULL,
  `drop_time` bigint NOT NULL DEFAULT '0',
  `equipable` int DEFAULT '0',
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `lottery` (
  `id` int NOT NULL DEFAULT '0',
  `idnr` int NOT NULL DEFAULT '0',
  `number1` int NOT NULL DEFAULT '0',
  `number2` int NOT NULL DEFAULT '0',
  `prize` int NOT NULL DEFAULT '0',
  `newprize` int NOT NULL DEFAULT '0',
  `prize1` int NOT NULL DEFAULT '0',
  `prize2` int NOT NULL DEFAULT '0',
  `prize3` int NOT NULL DEFAULT '0',
  `enddate` bigint unsigned NOT NULL DEFAULT '0',
  `finished` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`idnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `mdt_bets` (
  `lane_id` int NOT NULL DEFAULT '0',
  `bet` int DEFAULT '0',
  PRIMARY KEY (`lane_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `mdt_history` (
  `race_id` mediumint NOT NULL DEFAULT '0',
  `first` int DEFAULT '0',
  `second` int DEFAULT '0',
  `odd_rate` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`race_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `merchant_lease` (
  `merchant_id` int NOT NULL DEFAULT '0',
  `player_id` int NOT NULL DEFAULT '0',
  `bid` int DEFAULT NULL,
  `type` int NOT NULL DEFAULT '0',
  `player_name` varchar(35) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`merchant_id`,`player_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `messages` (
  `messageId` int NOT NULL DEFAULT '0',
  `senderId` int NOT NULL DEFAULT '0',
  `receiverId` int NOT NULL DEFAULT '0',
  `subject` tinytext COLLATE utf8mb3_unicode_ci,
  `content` text COLLATE utf8mb3_unicode_ci,
  `expiration` bigint unsigned NOT NULL DEFAULT '0',
  `reqAdena` bigint NOT NULL DEFAULT '0',
  `hasAttachments` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'false',
  `isUnread` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'true',
  `isDeletedBySender` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'false',
  `isDeletedByReceiver` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'false',
  `isLocked` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'false',
  `sendBySystem` tinyint(1) NOT NULL DEFAULT '0',
  `isReturned` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'false',
  `itemId` int NOT NULL DEFAULT '0',
  `enchantLvl` int NOT NULL DEFAULT '0',
  `elementals` varchar(25) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `npc_respawns` (
  `id` int NOT NULL,
  `x` int NOT NULL,
  `y` int NOT NULL,
  `z` int NOT NULL,
  `heading` int NOT NULL,
  `respawnTime` bigint unsigned NOT NULL DEFAULT '0',
  `currentHp` double unsigned NOT NULL,
  `currentMp` double unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `olympiad_data` (
  `id` tinyint unsigned NOT NULL DEFAULT '0',
  `current_cycle` mediumint unsigned NOT NULL DEFAULT '1',
  `period` mediumint unsigned NOT NULL DEFAULT '0',
  `olympiad_end` bigint unsigned NOT NULL DEFAULT '0',
  `validation_end` bigint unsigned NOT NULL DEFAULT '0',
  `next_weekly_change` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `olympiad_fights` (
  `charOneId` int unsigned NOT NULL,
  `charTwoId` int unsigned NOT NULL,
  `charOneClass` tinyint unsigned NOT NULL DEFAULT '0',
  `charTwoClass` tinyint unsigned NOT NULL DEFAULT '0',
  `winner` tinyint unsigned NOT NULL DEFAULT '0',
  `start` bigint unsigned NOT NULL DEFAULT '0',
  `time` bigint unsigned NOT NULL DEFAULT '0',
  `classed` tinyint NOT NULL DEFAULT '0',
  KEY `charOneId` (`charOneId`),
  KEY `charTwoId` (`charTwoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `olympiad_nobles` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `class_id` tinyint unsigned NOT NULL DEFAULT '0',
  `olympiad_points` int unsigned NOT NULL DEFAULT '0',
  `competitions_done` smallint unsigned NOT NULL DEFAULT '0',
  `competitions_won` smallint unsigned NOT NULL DEFAULT '0',
  `competitions_lost` smallint unsigned NOT NULL DEFAULT '0',
  `competitions_drawn` smallint unsigned NOT NULL DEFAULT '0',
  `competitions_done_week` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `olympiad_nobles_eom` (
  `charId` int unsigned NOT NULL DEFAULT '0',
  `class_id` tinyint unsigned NOT NULL DEFAULT '0',
  `olympiad_points` int unsigned NOT NULL DEFAULT '0',
  `competitions_done` smallint unsigned NOT NULL DEFAULT '0',
  `competitions_won` smallint unsigned NOT NULL DEFAULT '0',
  `competitions_lost` smallint unsigned NOT NULL DEFAULT '0',
  `competitions_drawn` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `party_matching_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(21) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `leader` varchar(35) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `petition_feedback` (
  `charName` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL,
  `gmName` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rate` tinyint unsigned NOT NULL DEFAULT '2',
  `message` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` bigint unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `pets` (
  `item_obj_id` int unsigned NOT NULL,
  `name` varchar(16) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `level` smallint unsigned NOT NULL,
  `curHp` int unsigned DEFAULT '0',
  `curMp` int unsigned DEFAULT '0',
  `exp` bigint unsigned DEFAULT '0',
  `sp` bigint unsigned DEFAULT '0',
  `fed` int unsigned DEFAULT '0',
  `ownerId` int NOT NULL DEFAULT '0',
  `restore` enum('true','false') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'false',
  PRIMARY KEY (`item_obj_id`),
  KEY `ownerId` (`ownerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `pledge_applicant` (
  `charId` int NOT NULL,
  `clanId` int NOT NULL,
  `karma` tinyint(1) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`charId`,`clanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `pledge_recruit` (
  `clan_id` int NOT NULL,
  `karma` tinyint(1) NOT NULL,
  `information` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `detailed_information` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `application_type` tinyint(1) NOT NULL,
  `recruit_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`clan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `pledge_waiting_list` (
  `char_id` int NOT NULL,
  `karma` tinyint(1) NOT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `posts` (
  `post_id` int NOT NULL DEFAULT '0',
  `post_owner_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `post_ownerid` int NOT NULL DEFAULT '0',
  `post_date` bigint unsigned NOT NULL DEFAULT '0',
  `post_topic_id` int NOT NULL DEFAULT '0',
  `post_forum_id` int NOT NULL DEFAULT '0',
  `post_txt` text COLLATE utf8mb3_unicode_ci NOT NULL,
  KEY `post_forum_id` (`post_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `punishments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `affect` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  `reason` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `punishedBy` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
CREATE TABLE `residence_functions` (
  `id` int NOT NULL,
  `level` int NOT NULL,
  `expiration` bigint NOT NULL,
  `residenceId` int NOT NULL,
  PRIMARY KEY (`id`,`level`,`residenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `siege_clans` (
  `castle_id` int NOT NULL DEFAULT '0',
  `clan_id` int NOT NULL DEFAULT '0',
  `type` int DEFAULT NULL,
  `castle_owner` int DEFAULT NULL,
  PRIMARY KEY (`clan_id`,`castle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
CREATE TABLE `topic` (
  `topic_id` int NOT NULL DEFAULT '0',
  `topic_forum_id` int NOT NULL DEFAULT '0',
  `topic_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `topic_date` bigint unsigned NOT NULL DEFAULT '0',
  `topic_ownername` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `topic_ownerid` int NOT NULL DEFAULT '0',
  `topic_type` int NOT NULL DEFAULT '0',
  `topic_reply` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
BEGIN;
LOCK TABLES `lineage2`.`account_data` WRITE;
DELETE FROM `lineage2`.`account_data`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`account_gsdata` WRITE;
DELETE FROM `lineage2`.`account_gsdata`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`account_premium` WRITE;
DELETE FROM `lineage2`.`account_premium`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`accounts` WRITE;
DELETE FROM `lineage2`.`accounts`;
INSERT INTO `lineage2`.`accounts` (`login`,`password`,`email`,`created_time`,`lastactive`,`accessLevel`,`lastIP`,`lastServer`,`pcIp`,`hop1`,`hop2`,`hop3`,`hop4`) VALUES ('admin', '0DPiKuNIrrVmD8IUCuw1hQxNqZc=', NULL, '2024-10-25 19:13:02', 1729884389572, 0, '177.18.235.88', 1, '192.168.15.175', '0.0.0.0', '0.0.0.0', '0.0.0.0', '0.0.0.0')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`accounts_ipauth` WRITE;
DELETE FROM `lineage2`.`accounts_ipauth`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`airships` WRITE;
DELETE FROM `lineage2`.`airships`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`announcements` WRITE;
DELETE FROM `lineage2`.`announcements`;
INSERT INTO `lineage2`.`announcements` (`id`,`type`,`initial`,`delay`,`repeat`,`author`,`content`) VALUES (1, 0, 0, 0, 0, 'L2jMobius', 'Thanks for using L2jMobius!'),(2, 0, 0, 0, 0, 'L2jMobius', '[=http://www.l2jmobius.org/=]')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`auction_bid` WRITE;
DELETE FROM `lineage2`.`auction_bid`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`bbs_favorites` WRITE;
DELETE FROM `lineage2`.`bbs_favorites`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`bot_reported_char_data` WRITE;
DELETE FROM `lineage2`.`bot_reported_char_data`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`buffer_schemes` WRITE;
DELETE FROM `lineage2`.`buffer_schemes`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`buylists` WRITE;
DELETE FROM `lineage2`.`buylists`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`castle` WRITE;
DELETE FROM `lineage2`.`castle`;
INSERT INTO `lineage2`.`castle` (`id`,`name`,`side`,`treasury`,`siegeDate`,`regTimeOver`,`regTimeEnd`,`showNpcCrest`,`ticketBuyCount`) VALUES (5, 'Aden', 'NEUTRAL', 0, 1730649600955, 'true', 0, 'false', 0),(2, 'Dion', 'NEUTRAL', 0, 1730664000917, 'true', 0, 'false', 0),(3, 'Giran', 'NEUTRAL', 0, 1730649600930, 'true', 0, 'false', 0),(1, 'Gludio', 'NEUTRAL', 0, 1730649600903, 'true', 0, 'false', 0),(7, 'Goddard', 'NEUTRAL', 0, 1730649600975, 'true', 0, 'false', 0),(6, 'Innadril', 'NEUTRAL', 0, 1730664000965, 'true', 0, 'false', 0),(4, 'Oren', 'NEUTRAL', 0, 1730664000940, 'true', 0, 'false', 0),(8, 'Rune', 'NEUTRAL', 0, 1730664000988, 'true', 0, 'false', 0),(9, 'Schuttgart', 'NEUTRAL', 0, 1730649600002, 'true', 0, 'false', 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`castle_doorupgrade` WRITE;
DELETE FROM `lineage2`.`castle_doorupgrade`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`castle_functions` WRITE;
DELETE FROM `lineage2`.`castle_functions`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`castle_manor_procure` WRITE;
DELETE FROM `lineage2`.`castle_manor_procure`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`castle_manor_production` WRITE;
DELETE FROM `lineage2`.`castle_manor_production`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`castle_siege_guards` WRITE;
DELETE FROM `lineage2`.`castle_siege_guards`;
INSERT INTO `lineage2`.`castle_siege_guards` (`castleId`,`id`,`npcId`,`x`,`y`,`z`,`heading`,`respawnDelay`,`isHired`) VALUES (1, 1, 35085, -18460, 113107, -2759, 15608, 10800, 0),(1, 2, 35085, -18432, 113107, -2759, 15608, 10800, 0),(1, 3, 35085, -18404, 113107, -2759, 15608, 10800, 0),(1, 4, 35085, -18376, 113107, -2759, 15608, 10800, 0),(1, 5, 35085, -18348, 113107, -2759, 15608, 10800, 0),(1, 6, 35085, -18320, 113107, -2759, 15608, 10800, 0),(1, 7, 35085, -18292, 113107, -2759, 15608, 10800, 0),(1, 8, 35085, -18264, 113107, -2759, 15608, 10800, 0),(1, 9, 35085, -18236, 113107, -2759, 15608, 10800, 0),(1, 10, 35083, -18460, 113127, -2759, 15608, 10800, 0),(1, 11, 35082, -18432, 113127, -2759, 15608, 10800, 0),(1, 12, 35083, -18404, 113127, -2759, 15608, 10800, 0),(1, 13, 35082, -18376, 113127, -2759, 15608, 10800, 0),(1, 14, 35083, -18348, 113127, -2759, 15608, 10800, 0),(1, 15, 35082, -18320, 113127, -2759, 15608, 10800, 0),(1, 16, 35083, -18292, 113127, -2759, 15608, 10800, 0),(1, 17, 35082, -18264, 113127, -2759, 15608, 10800, 0),(1, 18, 35083, -18236, 113127, -2759, 15608, 10800, 0),(1, 19, 35084, -18460, 113147, -2759, 15608, 10800, 0),(1, 20, 35084, -18432, 113147, -2759, 15608, 10800, 0),(1, 21, 35084, -18404, 113147, -2759, 15608, 10800, 0),(1, 22, 35084, -18376, 113147, -2759, 15608, 10800, 0),(1, 23, 35079, -18348, 113147, -2759, 15608, 10800, 0),(1, 24, 35084, -18320, 113147, -2759, 15608, 10800, 0),(1, 25, 35084, -18292, 113147, -2759, 15608, 10800, 0),(1, 26, 35084, -18264, 113147, -2759, 15608, 10800, 0),(1, 27, 35084, -18236, 113147, -2759, 15608, 10800, 0),(1, 28, 35084, -18603, 112729, -2749, 64848, 10800, 0),(1, 29, 35084, -18602, 112698, -2748, 64848, 10800, 0),(1, 30, 35079, -18602, 112668, -2748, 64848, 10800, 0),(1, 31, 35084, -18602, 112638, -2747, 64848, 10800, 0),(1, 32, 35084, -18603, 112607, -2748, 64848, 10800, 0),(1, 33, 35084, -18601, 112578, -2747, 64848, 10800, 0),(1, 34, 35079, -18601, 112548, -2747, 64848, 10800, 0),(1, 35, 35084, -18601, 112518, -2746, 64848, 10800, 0),(1, 36, 35084, -18602, 112487, -2747, 64848, 10800, 0),(1, 37, 35083, -18628, 112711, -2767, 64848, 10800, 0),(1, 38, 35083, -18628, 112681, -2767, 64848, 10800, 0),(1, 39, 35082, -18628, 112650, -2766, 64848, 10800, 0),(1, 40, 35083, -18629, 112620, -2767, 64848, 10800, 0),(1, 41, 35083, -18627, 112590, -2766, 64848, 10800, 0),(1, 42, 35082, -18627, 112560, -2766, 64848, 10800, 0),(1, 43, 35083, -18626, 112531, -2765, 64848, 10800, 0),(1, 44, 35083, -18627, 112499, -2766, 64848, 10800, 0),(1, 45, 35085, -18649, 112727, -2771, 64848, 10800, 0),(1, 46, 35085, -18648, 112697, -2771, 64848, 10800, 0),(1, 47, 35085, -18648, 112667, -2770, 64848, 10800, 0),(1, 48, 35085, -18647, 112636, -2770, 64848, 10800, 0),(1, 49, 35085, -18649, 112606, -2770, 64848, 10800, 0),(1, 50, 35085, -18647, 112576, -2769, 64848, 10800, 0),(1, 51, 35085, -18647, 112546, -2769, 64848, 10800, 0),(1, 52, 35085, -18646, 112517, -2768, 64848, 10800, 0),(1, 53, 35085, -18647, 112485, -2769, 64848, 10800, 0),(1, 54, 35085, -18795, 112709, -2772, 64848, 10800, 0),(1, 55, 35085, -18795, 112679, -2771, 64848, 10800, 0),(1, 56, 35085, -18795, 112648, -2771, 64848, 10800, 0),(1, 57, 35085, -18794, 112618, -2770, 64848, 10800, 0),(1, 58, 35085, -18795, 112588, -2770, 64848, 10800, 0),(1, 59, 35085, -18793, 112558, -2770, 64848, 10800, 0),(1, 60, 35085, -18792, 112528, -2769, 64848, 10800, 0),(1, 61, 35085, -18792, 112498, -2769, 64848, 10800, 0),(1, 62, 35081, -18896, 112378, -2763, 15900, 10800, 0),(1, 63, 35081, -18866, 112377, -2764, 15900, 10800, 0),(1, 64, 35071, -18658, 112496, -2747, 64848, 60, 0),(1, 65, 35071, -18659, 112560, -2747, 64848, 60, 0),(1, 66, 35071, -18659, 112649, -2747, 64848, 60, 0),(1, 67, 35071, -18656, 112709, -2747, 64848, 60, 0),(1, 68, 35085, -18410, 112356, -2498, 15900, 10800, 0),(1, 69, 35085, -18380, 112355, -2499, 15900, 10800, 0),(1, 70, 35080, -18350, 112358, -2498, 15900, 10800, 0),(1, 71, 35085, -18320, 112359, -2498, 15900, 10800, 0),(1, 72, 35085, -18291, 112360, -2497, 15900, 10800, 0),(1, 73, 35085, -18640, 112422, -2496, 15900, 10800, 0),(1, 74, 35085, -18610, 112421, -2497, 15900, 10800, 0),(1, 75, 35080, -18581, 112424, -2496, 15900, 10800, 0),(1, 76, 35085, -18551, 112425, -2496, 15900, 10800, 0),(1, 77, 35085, -18521, 112426, -2495, 15900, 10800, 0),(1, 78, 35085, -18107, 112560, -2497, 31664, 10800, 0),(1, 79, 35085, -18104, 112590, -2498, 31664, 10800, 0),(1, 80, 35080, -18106, 112619, -2497, 31664, 10800, 0),(1, 81, 35085, -18105, 112649, -2497, 31664, 10800, 0),(1, 82, 35085, -18104, 112679, -2496, 31664, 10800, 0),(1, 83, 35084, -17840, 112354, -2600, 65480, 10800, 0),(1, 84, 35079, -17839, 112320, -2600, 65480, 10800, 0),(1, 85, 35084, -17835, 112279, -2599, 65480, 10800, 0),(1, 86, 35083, -17861, 112354, -2589, 65480, 10800, 0),(1, 87, 35083, -17860, 112320, -2590, 65480, 10800, 0),(1, 88, 35083, -17856, 112279, -2589, 65480, 10800, 0),(1, 89, 35082, -17879, 112354, -2575, 65480, 10800, 0),(1, 90, 35082, -17878, 112320, -2576, 65480, 10800, 0),(1, 91, 35082, -17874, 112279, -2575, 65480, 10800, 0),(1, 92, 35081, -18207, 112313, -2498, 22676, 10800, 0),(1, 93, 35085, -18410, 112356, -2498, 15900, 10800, 0),(1, 94, 35080, -18350, 112358, -2498, 15900, 10800, 0),(1, 95, 35085, -18291, 112360, -2497, 15900, 10800, 0),(1, 96, 35085, -18640, 112422, -2496, 15900, 10800, 0),(1, 97, 35085, -18610, 112421, -2497, 15900, 10800, 0),(1, 98, 35080, -18581, 112424, -2496, 15900, 10800, 0),(1, 99, 35085, -18551, 112425, -2496, 15900, 10800, 0),(1, 100, 35085, -18107, 112560, -2497, 31664, 10800, 0),(1, 101, 35080, -18106, 112619, -2497, 31664, 10800, 0),(1, 102, 35085, -18104, 112679, -2496, 31664, 10800, 0),(1, 103, 35082, -18257, 110335, -2493, 6320, 10800, 0),(1, 104, 35084, -18240, 110310, -2494, 6320, 10800, 0),(1, 105, 35082, -18216, 110284, -2493, 6320, 10800, 0),(1, 106, 35084, -18197, 110261, -2493, 6320, 10800, 0),(1, 107, 35082, -18182, 110243, -2492, 6320, 10800, 0),(1, 108, 35084, -18160, 110217, -2494, 6320, 10800, 0),(1, 109, 35082, -18143, 110192, -2494, 6320, 10800, 0),(1, 110, 35084, -18123, 110171, -2494, 6320, 10800, 0),(1, 111, 35082, -18099, 110160, -2495, 17076, 10800, 0),(1, 112, 35084, -18074, 110179, -2494, 25568, 10800, 0),(1, 113, 35082, -18056, 110203, -2494, 25568, 10800, 0),(1, 114, 35084, -18043, 110223, -2493, 25568, 10800, 0),(1, 115, 35082, -18024, 110250, -2495, 25568, 10800, 0),(1, 116, 35084, -18005, 110274, -2496, 25568, 10800, 0),(1, 117, 35082, -17986, 110304, -2495, 25568, 10800, 0),(1, 118, 35084, -17969, 110329, -2495, 25568, 10800, 0),(1, 119, 35082, -17956, 110348, -2494, 25568, 10800, 0),(1, 120, 35083, -18272, 110315, -2495, 6320, 10800, 0),(1, 121, 35085, -18254, 110291, -2496, 6320, 10800, 0),(1, 122, 35083, -18230, 110265, -2495, 6320, 10800, 0),(1, 123, 35085, -18211, 110241, -2495, 6320, 10800, 0),(1, 124, 35083, -18196, 110223, -2494, 6320, 10800, 0),(1, 125, 35085, -18175, 110197, -2496, 6320, 10800, 0),(1, 126, 35083, -18157, 110173, -2496, 6320, 10800, 0),(1, 127, 35085, -18138, 110152, -2496, 6320, 10800, 0),(1, 128, 35083, -18113, 110141, -2497, 17076, 10800, 0),(1, 129, 35085, -18085, 110142, -2494, 17076, 10800, 0),(1, 130, 35083, -18060, 110161, -2493, 25568, 10800, 0),(1, 131, 35085, -18042, 110185, -2493, 25568, 10800, 0),(1, 132, 35083, -18029, 110205, -2492, 25568, 10800, 0),(1, 133, 35085, -18010, 110232, -2494, 25568, 10800, 0),(1, 134, 35083, -17991, 110256, -2495, 25568, 10800, 0),(1, 135, 35085, -17972, 110286, -2494, 25568, 10800, 0),(1, 136, 35083, -17955, 110311, -2494, 25568, 10800, 0),(1, 137, 35085, -17942, 110330, -2493, 25568, 10800, 0),(1, 138, 35085, -18300, 110210, -2493, 6320, 10800, 0),(1, 139, 35085, -18281, 110187, -2493, 6320, 10800, 0),(1, 140, 35085, -18266, 110169, -2492, 6320, 10800, 0),(1, 141, 35085, -18244, 110143, -2494, 6320, 10800, 0),(1, 142, 35085, -18227, 110118, -2495, 6320, 10800, 0),(1, 143, 35085, -17999, 110152, -2489, 25568, 10800, 0),(1, 144, 35085, -17986, 110172, -2488, 25568, 10800, 0),(1, 145, 35085, -17966, 110199, -2490, 25568, 10800, 0),(1, 146, 35085, -17948, 110223, -2491, 25568, 10800, 0),(1, 147, 35085, -17929, 110253, -2490, 25568, 10800, 0),(1, 148, 35081, -17968, 110076, -2491, 15620, 10800, 0),(1, 149, 35080, -17934, 110076, -2492, 15620, 10800, 0),(1, 150, 35080, -18213, 110073, -2492, 15620, 10800, 0),(1, 151, 35081, -18190, 110074, -2492, 15620, 10800, 0),(1, 152, 35085, -18265, 110348, -2490, 25568, 10800, 0),(1, 153, 35071, -18274, 110294, -2493, 6320, 60, 0),(1, 154, 35071, -18193, 110203, -2493, 6320, 60, 0),(1, 155, 35071, -18008, 110212, -2493, 6320, 60, 0),(1, 156, 35071, -17936, 110315, -2493, 6320, 60, 0),(1, 157, 35064, -18173, 108190, -2555, 16344, 300, 0),(1, 158, 35065, -18061, 108187, -2554, 16344, 180, 0),(1, 159, 35072, -17959, 108204, -2560, 16344, 120, 0),(1, 160, 35072, -17922, 108203, -2560, 16344, 120, 0),(1, 161, 35072, -17889, 108203, -2560, 16344, 120, 0),(1, 162, 35072, -17851, 108202, -2560, 16344, 120, 0),(1, 163, 35072, -17814, 108202, -2559, 16344, 120, 0),(1, 164, 35072, -17776, 108201, -2559, 16344, 120, 0),(1, 165, 35072, -17744, 108201, -2559, 16344, 120, 0),(1, 166, 35072, -17706, 108200, -2559, 16344, 120, 0),(1, 167, 35069, -17959, 108238, -2561, 16344, 120, 0),(1, 168, 35069, -17921, 108237, -2561, 16344, 120, 0),(1, 169, 35069, -17888, 108237, -2561, 16344, 120, 0),(1, 170, 35069, -17851, 108236, -2561, 16344, 120, 0),(1, 171, 35069, -17813, 108236, -2560, 16344, 120, 0),(1, 172, 35069, -17776, 108235, -2560, 16344, 120, 0),(1, 173, 35069, -17743, 108235, -2560, 16344, 120, 0),(1, 174, 35069, -17706, 108234, -2560, 16344, 120, 0),(1, 175, 35071, -17957, 108276, -2562, 16344, 60, 0),(1, 176, 35071, -17919, 108275, -2562, 16344, 60, 0),(1, 177, 35066, -17887, 108275, -2562, 16344, 120, 0),(1, 178, 35071, -17849, 108274, -2562, 16344, 60, 0),(1, 179, 35071, -17812, 108274, -2561, 16344, 60, 0),(1, 180, 35066, -17774, 108273, -2561, 16344, 120, 0),(1, 181, 35071, -17742, 108273, -2561, 16344, 60, 0),(1, 182, 35071, -17704, 108272, -2561, 16344, 60, 0),(1, 183, 35072, -18519, 108210, -2556, 16344, 120, 0),(1, 184, 35072, -18481, 108210, -2556, 16344, 120, 0),(1, 185, 35072, -18449, 108210, -2556, 16344, 120, 0),(1, 186, 35072, -18411, 108209, -2556, 16344, 120, 0),(1, 187, 35072, -18374, 108208, -2555, 16344, 120, 0),(1, 188, 35072, -18336, 108208, -2555, 16344, 120, 0),(1, 189, 35072, -18303, 108207, -2555, 16344, 120, 0),(1, 190, 35072, -18266, 108207, -2555, 16344, 120, 0),(1, 191, 35069, -18518, 108245, -2557, 16344, 120, 0),(1, 192, 35069, -18480, 108244, -2557, 16344, 120, 0),(1, 193, 35069, -18448, 108244, -2557, 16344, 120, 0),(1, 194, 35069, -18410, 108243, -2557, 16344, 120, 0),(1, 195, 35069, -18373, 108242, -2556, 16344, 120, 0),(1, 196, 35069, -18335, 108242, -2556, 16344, 120, 0),(1, 197, 35069, -18303, 108242, -2556, 16344, 120, 0),(1, 198, 35069, -18265, 108241, -2556, 16344, 120, 0),(1, 199, 35071, -18517, 108282, -2558, 16344, 60, 0),(1, 200, 35071, -18479, 108281, -2558, 16344, 60, 0),(1, 201, 35066, -18446, 108281, -2558, 16344, 120, 0),(1, 202, 35071, -18409, 108280, -2558, 16344, 60, 0),(1, 203, 35071, -18371, 108280, -2557, 16344, 60, 0),(1, 204, 35066, -18334, 108279, -2557, 16344, 120, 0),(1, 205, 35071, -18301, 108279, -2557, 16344, 60, 0),(1, 206, 35071, -18264, 108278, -2557, 16344, 60, 0),(1, 207, 35068, -18439, 108045, -2555, 16344, 120, 0),(1, 208, 35068, -18355, 108045, -2554, 16344, 120, 0),(1, 209, 35068, -18276, 108044, -2554, 16344, 120, 0),(1, 210, 35068, -18201, 108044, -2554, 16344, 120, 0),(1, 211, 35068, -18024, 108044, -2551, 16344, 120, 0),(1, 212, 35068, -17941, 108044, -2551, 16344, 120, 0),(1, 213, 35068, -17861, 108043, -2551, 16344, 120, 0),(1, 214, 35068, -17787, 108043, -2551, 16344, 120, 0),(1, 215, 35084, -17599, 109170, -2333, 16088, 10800, 0),(1, 216, 35079, -17625, 109170, -2333, 16088, 10800, 0),(1, 217, 35084, -17653, 109170, -2332, 16088, 10800, 0),(1, 218, 35083, -17599, 109148, -2337, 16088, 10800, 0),(1, 219, 35083, -17626, 109148, -2337, 16088, 10800, 0),(1, 220, 35083, -17653, 109148, -2336, 16088, 10800, 0),(1, 221, 35082, -17600, 109123, -2335, 16088, 10800, 0),(1, 222, 35082, -17627, 109123, -2335, 16088, 10800, 0),(1, 223, 35082, -17654, 109124, -2334, 16088, 10800, 0),(1, 224, 35081, -17540, 109046, -2335, 16088, 10800, 0),(1, 225, 35081, -17566, 109046, -2335, 16088, 10800, 0),(1, 226, 35081, -17594, 109046, -2334, 16088, 10800, 0),(1, 227, 35085, -17795, 108473, -2338, 32692, 10800, 0),(1, 228, 35085, -17794, 108436, -2338, 32692, 10800, 0),(1, 229, 35080, -17794, 108399, -2337, 32692, 10800, 0),(1, 230, 35085, -17793, 108363, -2337, 32692, 10800, 0),(1, 231, 35085, -17793, 108327, -2337, 32692, 10800, 0),(1, 232, 35080, -17792, 108289, -2337, 32692, 10800, 0),(1, 233, 35085, -17792, 108258, -2336, 32692, 10800, 0),(1, 234, 35085, -17791, 108221, -2336, 32692, 10800, 0),(1, 235, 35080, -17790, 108186, -2336, 32692, 10800, 0),(1, 236, 35085, -17790, 108149, -2336, 32692, 10800, 0),(1, 237, 35085, -17790, 108112, -2336, 32692, 10800, 0),(1, 238, 35084, -18574, 109236, -2333, 16088, 10800, 0),(1, 239, 35079, -18600, 109236, -2333, 16088, 10800, 0),(1, 240, 35084, -18643, 109233, -2332, 16088, 10800, 0),(1, 241, 35083, -18574, 109214, -2337, 16088, 10800, 0),(1, 242, 35083, -18601, 109214, -2337, 16088, 10800, 0),(1, 243, 35083, -18628, 109214, -2336, 16088, 10800, 0),(1, 244, 35082, -18575, 109189, -2335, 16088, 10800, 0),(1, 245, 35082, -18602, 109189, -2335, 16088, 10800, 0),(1, 246, 35082, -18629, 109190, -2334, 16088, 10800, 0),(1, 247, 35081, -18536, 108948, -2335, 16088, 10800, 0),(1, 248, 35081, -18562, 108948, -2335, 16088, 10800, 0),(1, 249, 35081, -18590, 108948, -2334, 16088, 10800, 0),(1, 250, 35085, -18428, 108118, -2338, 65152, 10800, 0),(1, 251, 35085, -18427, 108154, -2338, 65152, 10800, 0),(1, 252, 35080, -18426, 108191, -2337, 65152, 10800, 0),(1, 253, 35085, -18426, 108227, -2337, 65152, 10800, 0),(1, 254, 35085, -18426, 108263, -2337, 65152, 10800, 0),(1, 255, 35080, -18425, 108301, -2337, 65152, 10800, 0),(1, 256, 35085, -18425, 108332, -2336, 65152, 10800, 0),(1, 257, 35085, -18424, 108369, -2336, 65152, 10800, 0),(1, 258, 35080, -18424, 108404, -2336, 65152, 10800, 0),(1, 259, 35085, -18423, 108441, -2336, 65152, 10800, 0),(1, 260, 35085, -18422, 108478, -2336, 65152, 10800, 0),(1, 261, 35085, -18096, 113184, -2384, 32768, 10800, 0),(1, 262, 35085, -18096, 113248, -2384, 32768, 10800, 0),(1, 263, 35085, -18096, 113296, -2384, 32768, 10800, 0),(1, 264, 35085, -18048, 113296, -2384, 20480, 10800, 0),(1, 265, 35085, -18000, 113296, -2384, 16384, 10800, 0),(1, 266, 35085, -17936, 113296, -2384, 16384, 10800, 0),(1, 267, 35085, -17872, 113296, -2384, 16384, 10800, 0),(1, 268, 35085, -18602, 113174, -2376, 0, 10800, 0),(1, 269, 35085, -18608, 113232, -2384, 0, 10800, 0),(1, 270, 35085, -18611, 113295, -2376, 8192, 10800, 0),(1, 271, 35085, -18672, 113296, -2384, 12288, 10800, 0),(1, 272, 35085, -18720, 113296, -2384, 16384, 10800, 0),(1, 273, 35085, -18780, 113296, -2384, 16384, 10800, 0),(1, 274, 35085, -18830, 113296, -2384, 16384, 10800, 0),(1, 275, 35080, -18096, 113216, -2384, 32768, 10800, 0),(1, 276, 35080, -18096, 113264, -2384, 32768, 10800, 0),(1, 277, 35080, -18608, 113200, -2384, 0, 10800, 0),(1, 278, 35080, -18611, 113261, -2376, 0, 10800, 0),(1, 279, 35081, -18025, 113264, -2384, 16384, 10800, 0),(1, 280, 35081, -18704, 113256, -2384, 16384, 10800, 0),(1, 281, 35085, -18648, 113313, -2376, 32768, 10800, 0),(1, 282, 35085, -18692, 113313, -2376, 32768, 10800, 0),(1, 283, 35085, -18759, 113311, -2376, 24576, 10800, 0),(1, 284, 35085, -18804, 113316, -2376, 16384, 10800, 0),(1, 285, 35085, -18071, 113326, -2376, 0, 10800, 0),(1, 286, 35085, -18011, 113328, -2376, 0, 10800, 0),(1, 287, 35085, -17969, 113325, -2376, 8192, 10800, 0),(1, 288, 35085, -17923, 113326, -2376, 16384, 10800, 0),(1, 289, 35080, -18096, 113216, -2384, 32768, 10800, 0),(1, 290, 35080, -18096, 113264, -2384, 32768, 10800, 0),(1, 291, 35080, -18608, 113200, -2384, 0, 10800, 0),(1, 292, 35080, -18611, 113261, -2376, 0, 10800, 0),(1, 293, 35081, -18025, 113264, -2384, 16384, 10800, 0),(1, 294, 35081, -18704, 113256, -2384, 16384, 10800, 0),(1, 295, 35072, -18176, 111420, -2500, 16384, 120, 0),(1, 296, 35072, -18048, 111420, -2500, 16384, 120, 0),(1, 297, 35072, -17985, 111420, -2500, 16384, 120, 0),(1, 298, 35072, -18240, 111420, -2500, 16384, 120, 0),(1, 299, 35072, -18371, 111420, -2500, 16384, 120, 0),(1, 300, 35072, -18499, 111420, -2500, 16384, 120, 0),(1, 301, 35072, -17857, 111420, -2500, 16384, 120, 0),(1, 302, 35072, -17728, 111420, -2500, 16384, 120, 0),(1, 303, 35067, -18304, 111420, -2500, 16384, 10800, 0),(1, 304, 35067, -17921, 111420, -2500, 16384, 10800, 0),(1, 305, 35067, -17664, 111420, -2500, 16384, 10800, 0),(1, 306, 35067, -18563, 111420, -2500, 16384, 10800, 0),(1, 307, 35068, -18112, 111420, -2500, 16384, 120, 0),(1, 308, 35068, -17793, 111420, -2500, 16384, 120, 0),(1, 309, 35068, -18435, 111420, -2500, 16384, 120, 0),(1, 310, 35071, -18560, 111570, -2500, 16384, 60, 0),(1, 311, 35071, -18496, 111570, -2500, 16384, 60, 0),(1, 312, 35071, -17664, 111570, -2500, 16384, 60, 0),(1, 313, 35071, -17728, 111570, -2500, 16384, 60, 0),(1, 314, 35066, -18112, 111570, -2500, 16384, 120, 0),(1, 315, 35071, -18432, 111570, -2500, 16384, 60, 0),(1, 316, 35071, -18368, 111570, -2500, 16384, 60, 0),(1, 317, 35071, -18304, 111570, -2500, 16384, 60, 0),(1, 318, 35071, -18240, 111570, -2500, 16384, 60, 0),(1, 319, 35066, -18176, 111570, -2500, 16384, 120, 0),(1, 320, 35066, -18049, 111570, -2500, 16384, 120, 0),(1, 321, 35071, -17985, 111570, -2500, 16384, 60, 0),(1, 322, 35071, -17921, 111570, -2500, 16384, 60, 0),(1, 323, 35071, -17857, 111570, -2500, 16384, 60, 0),(1, 324, 35071, -17793, 111570, -2500, 16384, 60, 0),(1, 325, 35085, -17880, 110667, -2191, 32768, 10800, 0),(1, 326, 35085, -17881, 110789, -2191, 32768, 10800, 0),(1, 327, 35085, -17826, 110850, -2191, 24576, 10800, 0),(1, 328, 35085, -17801, 110869, -2191, 16384, 10800, 0),(1, 329, 35085, -17762, 110870, -2191, 16384, 10800, 0),(1, 330, 35085, -17726, 110870, -2191, 16384, 10800, 0),(1, 331, 35085, -17880, 110710, -2191, 32768, 10800, 0),(1, 332, 35080, -17852, 110825, -2191, 24576, 10800, 0),(1, 333, 35080, -17880, 110749, -2190, 32768, 10800, 0),(1, 334, 35081, -17778, 110804, -2192, 24576, 10800, 0),(1, 335, 35085, -18333, 110661, -2193, 0, 10800, 0),(1, 336, 35085, -18333, 110701, -2191, 0, 10800, 0),(1, 337, 35085, -18333, 110786, -2192, 0, 10800, 0),(1, 338, 35085, -18391, 110851, -2191, 8192, 10800, 0),(1, 339, 35085, -18418, 110871, -2190, 16384, 10800, 0),(1, 340, 35085, -18458, 110870, -2191, 16384, 10800, 0),(1, 341, 35085, -18497, 110871, -2191, 16384, 10800, 0),(1, 342, 35080, -18333, 110745, -2189, 0, 10800, 0),(1, 343, 35080, -18355, 110815, -2192, 8192, 10800, 0),(1, 344, 35081, -18435, 110797, -2189, 8192, 10800, 0),(1, 345, 35085, -18220, 110540, -2500, 16384, 10800, 0),(1, 346, 35085, -18189, 110540, -2500, 16384, 10800, 0),(1, 347, 35085, -18158, 110540, -2500, 16384, 10800, 0),(1, 348, 35085, -18126, 110540, -2500, 16384, 10800, 0),(1, 349, 35085, -18095, 110540, -2500, 16384, 10800, 0),(1, 350, 35085, -18063, 110540, -2500, 16384, 10800, 0),(1, 351, 35085, -18032, 110540, -2500, 16384, 10800, 0),(1, 352, 35080, -18000, 110540, -2500, 16384, 10800, 0),(1, 353, 35080, -18220, 110560, -2500, 16384, 10800, 0),(1, 354, 35081, -18189, 110560, -2500, 16384, 10800, 0),(1, 355, 35085, -18158, 110560, -2500, 16384, 10800, 0),(1, 356, 35085, -18126, 110560, -2500, 16384, 10800, 0),(1, 357, 35085, -18095, 110560, -2500, 16384, 10800, 0),(1, 358, 35085, -18063, 110560, -2500, 16384, 10800, 0),(1, 359, 35085, -18032, 110560, -2500, 16384, 10800, 0),(1, 360, 35085, -18000, 110560, -2500, 16384, 10800, 0),(1, 361, 35085, -16548, 111653, -2376, 0, 10800, 0),(1, 362, 35085, -16548, 111602, -2376, 0, 10800, 0),(1, 363, 35085, -16548, 111552, -2376, 0, 10800, 0),(1, 364, 35085, -16548, 111502, -2376, 0, 10800, 0),(1, 365, 35081, -16548, 111452, -2376, 0, 10800, 0),(1, 366, 35085, -16548, 111402, -2376, 0, 10800, 0),(1, 367, 35085, -16548, 111352, -2376, 0, 10800, 0),(1, 368, 35085, -16548, 111302, -2376, 0, 10800, 0),(1, 369, 35085, -16548, 111252, -2376, 0, 10800, 0),(1, 370, 35080, -16548, 111202, -2376, 0, 10800, 0),(1, 371, 35085, -16548, 111152, -2376, 0, 10800, 0),(1, 372, 35085, -16548, 111102, -2376, 0, 10800, 0),(1, 373, 35085, -19950, 111653, -2376, 0, 10800, 0),(1, 374, 35085, -19950, 111602, -2376, 0, 10800, 0),(1, 375, 35085, -19950, 111552, -2376, 0, 10800, 0),(1, 376, 35085, -19950, 111502, -2376, 0, 10800, 0),(1, 377, 35081, -19950, 111452, -2376, 0, 10800, 0),(1, 378, 35085, -19950, 111402, -2376, 0, 10800, 0),(1, 379, 35085, -19950, 111352, -2376, 0, 10800, 0),(1, 380, 35085, -19950, 111302, -2376, 0, 10800, 0),(1, 381, 35085, -19950, 111252, -2376, 0, 10800, 0),(1, 382, 35080, -19950, 111202, -2376, 0, 10800, 0),(1, 383, 35085, -19950, 111152, -2376, 0, 10800, 0),(1, 384, 35085, -19950, 111102, -2376, 0, 10800, 0),(2, 385, 35127, 22420, 156643, -2953, 48376, 10800, 0),(2, 386, 35127, 22392, 156643, -2953, 48376, 10800, 0),(2, 387, 35127, 22364, 156643, -2953, 48376, 10800, 0),(2, 388, 35127, 22336, 156643, -2953, 48376, 10800, 0),(2, 389, 35127, 22308, 156643, -2953, 48376, 10800, 0),(2, 390, 35127, 22280, 156643, -2953, 48376, 10800, 0),(2, 391, 35127, 22252, 156643, -2953, 48376, 10800, 0),(2, 392, 35127, 22224, 156643, -2953, 48376, 10800, 0),(2, 393, 35127, 22196, 156643, -2953, 48376, 10800, 0),(2, 394, 35125, 22420, 156623, -2953, 48376, 10800, 0),(2, 395, 35124, 22392, 156623, -2953, 48376, 10800, 0),(2, 396, 35125, 22364, 156623, -2953, 48376, 10800, 0),(2, 397, 35124, 22336, 156623, -2953, 48376, 10800, 0),(2, 398, 35125, 22308, 156623, -2953, 48376, 10800, 0),(2, 399, 35124, 22280, 156623, -2953, 48376, 10800, 0),(2, 400, 35125, 22252, 156623, -2953, 48376, 10800, 0),(2, 401, 35124, 22224, 156623, -2953, 48376, 10800, 0),(2, 402, 35125, 22196, 156623, -2953, 48376, 10800, 0),(2, 403, 35126, 22420, 156603, -2953, 48376, 10800, 0),(2, 404, 35126, 22392, 156603, -2953, 48376, 10800, 0),(2, 405, 35126, 22364, 156603, -2953, 48376, 10800, 0),(2, 406, 35126, 22336, 156603, -2953, 48376, 10800, 0),(2, 407, 35121, 22308, 156603, -2953, 48376, 10800, 0),(2, 408, 35126, 22280, 156603, -2953, 48376, 10800, 0),(2, 409, 35126, 22252, 156603, -2953, 48376, 10800, 0),(2, 410, 35126, 22224, 156603, -2953, 48376, 10800, 0),(2, 411, 35126, 22196, 156603, -2953, 48376, 10800, 0),(2, 412, 35126, 22563, 157021, -2943, 32080, 10800, 0),(2, 413, 35126, 22562, 157052, -2942, 32080, 10800, 0),(2, 414, 35121, 22562, 157082, -2942, 32080, 10800, 0),(2, 415, 35126, 22562, 157112, -2941, 32080, 10800, 0),(2, 416, 35126, 22563, 157143, -2942, 32080, 10800, 0),(2, 417, 35126, 22561, 157172, -2941, 32080, 10800, 0),(2, 418, 35121, 22561, 157202, -2941, 32080, 10800, 0),(2, 419, 35126, 22561, 157232, -2940, 32080, 10800, 0),(2, 420, 35126, 22562, 157263, -2941, 32080, 10800, 0),(2, 421, 35125, 22588, 157039, -2961, 32080, 10800, 0),(2, 422, 35125, 22588, 157069, -2961, 32080, 10800, 0),(2, 423, 35124, 22588, 157100, -2960, 32080, 10800, 0),(2, 424, 35125, 22589, 157130, -2961, 32080, 10800, 0),(2, 425, 35125, 22587, 157160, -2960, 32080, 10800, 0),(2, 426, 35124, 22587, 157190, -2960, 32080, 10800, 0),(2, 427, 35125, 22586, 157219, -2959, 32080, 10800, 0),(2, 428, 35125, 22587, 157251, -2960, 32080, 10800, 0),(2, 429, 35127, 22609, 157023, -2965, 32080, 10800, 0),(2, 430, 35127, 22608, 157053, -2965, 32080, 10800, 0),(2, 431, 35127, 22608, 157083, -2964, 32080, 10800, 0),(2, 432, 35127, 22607, 157114, -2964, 32080, 10800, 0),(2, 433, 35127, 22609, 157144, -2964, 32080, 10800, 0),(2, 434, 35127, 22607, 157174, -2963, 32080, 10800, 0),(2, 435, 35127, 22607, 157204, -2963, 32080, 10800, 0),(2, 436, 35127, 22606, 157233, -2962, 32080, 10800, 0),(2, 437, 35127, 22607, 157265, -2963, 32080, 10800, 0),(2, 438, 35127, 22755, 157041, -2966, 32080, 10800, 0),(2, 439, 35127, 22755, 157071, -2965, 32080, 10800, 0),(2, 440, 35127, 22755, 157102, -2965, 32080, 10800, 0),(2, 441, 35127, 22754, 157132, -2964, 32080, 10800, 0),(2, 442, 35127, 22755, 157162, -2964, 32080, 10800, 0),(2, 443, 35127, 22753, 157192, -2964, 32080, 10800, 0),(2, 444, 35127, 22752, 157222, -2963, 32080, 10800, 0),(2, 445, 35127, 22752, 157252, -2963, 32080, 10800, 0),(2, 446, 35123, 22856, 157372, -2957, 48668, 10800, 0),(2, 447, 35123, 22826, 157373, -2958, 48668, 10800, 0),(2, 448, 35113, 22618, 157254, -2941, 32080, 60, 0),(2, 449, 35113, 22619, 157190, -2941, 32080, 60, 0),(2, 450, 35113, 22619, 157101, -2941, 32080, 60, 0),(2, 451, 35113, 22616, 157041, -2941, 32080, 60, 0),(2, 452, 35127, 22370, 157394, -2692, 48668, 10800, 0),(2, 453, 35127, 22340, 157395, -2693, 48668, 10800, 0),(2, 454, 35122, 22310, 157392, -2692, 48668, 10800, 0),(2, 455, 35127, 22280, 157391, -2692, 48668, 10800, 0),(2, 456, 35127, 22251, 157390, -2691, 48668, 10800, 0),(2, 457, 35127, 22600, 157328, -2690, 48668, 10800, 0),(2, 458, 35127, 22570, 157329, -2691, 48668, 10800, 0),(2, 459, 35122, 22541, 157326, -2690, 48668, 10800, 0),(2, 460, 35127, 22511, 157325, -2690, 48668, 10800, 0),(2, 461, 35127, 22481, 157324, -2689, 48668, 10800, 0),(2, 462, 35127, 22067, 157190, -2691, 64432, 10800, 0),(2, 463, 35127, 22064, 157160, -2692, 64432, 10800, 0),(2, 464, 35122, 22066, 157131, -2691, 64432, 10800, 0),(2, 465, 35127, 22065, 157101, -2691, 64432, 10800, 0),(2, 466, 35127, 22064, 157071, -2690, 64432, 10800, 0),(2, 467, 35126, 21800, 157396, -2794, 32712, 10800, 0),(2, 468, 35121, 21799, 157430, -2794, 32712, 10800, 0),(2, 469, 35126, 21795, 157471, -2793, 32712, 10800, 0),(2, 470, 35125, 21821, 157396, -2783, 32712, 10800, 0),(2, 471, 35125, 21820, 157430, -2784, 32712, 10800, 0),(2, 472, 35125, 21816, 157471, -2783, 32712, 10800, 0),(2, 473, 35124, 21839, 157396, -2769, 32712, 10800, 0),(2, 474, 35124, 21838, 157430, -2770, 32712, 10800, 0),(2, 475, 35124, 21834, 157471, -2769, 32712, 10800, 0),(2, 476, 35123, 22167, 157437, -2692, 55444, 10800, 0),(2, 477, 35127, 22370, 157394, -2692, 48668, 10800, 0),(2, 478, 35122, 22310, 157392, -2692, 48668, 10800, 0),(2, 479, 35127, 22251, 157390, -2691, 48668, 10800, 0),(2, 480, 35127, 22600, 157328, -2690, 48668, 10800, 0),(2, 481, 35127, 22570, 157329, -2691, 48668, 10800, 0),(2, 482, 35122, 22541, 157326, -2690, 48668, 10800, 0),(2, 483, 35127, 22511, 157325, -2690, 48668, 10800, 0),(2, 484, 35127, 22067, 157190, -2691, 64432, 10800, 0),(2, 485, 35122, 22066, 157131, -2691, 64432, 10800, 0),(2, 486, 35127, 22064, 157071, -2690, 64432, 10800, 0),(2, 487, 35124, 22217, 159415, -2687, 39088, 10800, 0),(2, 488, 35126, 22200, 159440, -2688, 39088, 10800, 0),(2, 489, 35124, 22176, 159466, -2687, 39088, 10800, 0),(2, 490, 35126, 22157, 159489, -2687, 39088, 10800, 0),(2, 491, 35124, 22142, 159507, -2686, 39088, 10800, 0),(2, 492, 35126, 22120, 159533, -2688, 39088, 10800, 0),(2, 493, 35124, 22103, 159558, -2688, 39088, 10800, 0),(2, 494, 35126, 22083, 159579, -2688, 39088, 10800, 0),(2, 495, 35124, 22059, 159590, -2689, 49844, 10800, 0),(2, 496, 35126, 22034, 159571, -2688, 58336, 10800, 0),(2, 497, 35124, 22016, 159547, -2688, 58336, 10800, 0),(2, 498, 35126, 22003, 159527, -2687, 58336, 10800, 0),(2, 499, 35124, 21984, 159500, -2689, 58336, 10800, 0),(2, 500, 35126, 21965, 159476, -2690, 58336, 10800, 0),(2, 501, 35124, 21946, 159446, -2689, 58336, 10800, 0),(2, 502, 35126, 21929, 159421, -2689, 58336, 10800, 0),(2, 503, 35124, 21916, 159402, -2688, 58336, 10800, 0),(2, 504, 35125, 22232, 159435, -2689, 39088, 10800, 0),(2, 505, 35127, 22214, 159459, -2690, 39088, 10800, 0),(2, 506, 35125, 22190, 159485, -2689, 39088, 10800, 0),(2, 507, 35127, 22171, 159509, -2689, 39088, 10800, 0),(2, 508, 35125, 22156, 159527, -2688, 39088, 10800, 0),(2, 509, 35127, 22135, 159553, -2690, 39088, 10800, 0),(2, 510, 35125, 22117, 159577, -2690, 39088, 10800, 0),(2, 511, 35127, 22098, 159598, -2690, 39088, 10800, 0),(2, 512, 35125, 22073, 159609, -2691, 49844, 10800, 0),(2, 513, 35127, 22045, 159608, -2688, 49844, 10800, 0),(2, 514, 35125, 22020, 159589, -2687, 58336, 10800, 0),(2, 515, 35127, 22002, 159565, -2687, 58336, 10800, 0),(2, 516, 35125, 21989, 159545, -2686, 58336, 10800, 0),(2, 517, 35127, 21970, 159518, -2688, 58336, 10800, 0),(2, 518, 35125, 21951, 159494, -2689, 58336, 10800, 0),(2, 519, 35127, 21932, 159464, -2688, 58336, 10800, 0),(2, 520, 35125, 21915, 159439, -2688, 58336, 10800, 0),(2, 521, 35127, 21902, 159420, -2687, 58336, 10800, 0),(2, 522, 35127, 22260, 159540, -2687, 39088, 10800, 0),(2, 523, 35127, 22241, 159563, -2687, 39088, 10800, 0),(2, 524, 35127, 22226, 159581, -2686, 39088, 10800, 0),(2, 525, 35127, 22204, 159607, -2688, 39088, 10800, 0),(2, 526, 35127, 22187, 159632, -2689, 39088, 10800, 0),(2, 527, 35127, 21959, 159598, -2683, 58336, 10800, 0),(2, 528, 35127, 21946, 159578, -2682, 58336, 10800, 0),(2, 529, 35127, 21926, 159551, -2684, 58336, 10800, 0),(2, 530, 35127, 21908, 159527, -2685, 58336, 10800, 0),(2, 531, 35127, 21889, 159497, -2684, 58336, 10800, 0),(2, 532, 35123, 21928, 159674, -2685, 48388, 10800, 0),(2, 533, 35122, 21894, 159674, -2686, 48388, 10800, 0),(2, 534, 35122, 22173, 159677, -2686, 48388, 10800, 0),(2, 535, 35123, 22150, 159676, -2686, 48388, 10800, 0),(2, 536, 35127, 22225, 159402, -2684, 58336, 10800, 0),(2, 537, 35113, 22234, 159456, -2687, 39088, 60, 0),(2, 538, 35113, 22153, 159547, -2687, 39088, 60, 0),(2, 539, 35113, 21968, 159538, -2687, 39088, 60, 0),(2, 540, 35113, 21896, 159435, -2687, 39088, 60, 0),(2, 541, 35106, 22133, 161560, -2749, 49112, 300, 0),(2, 542, 35107, 22021, 161563, -2748, 49112, 180, 0),(2, 543, 35114, 21919, 161546, -2754, 49112, 120, 0),(2, 544, 35114, 21882, 161547, -2754, 49112, 120, 0),(2, 545, 35114, 21849, 161547, -2754, 49112, 120, 0),(2, 546, 35114, 21811, 161548, -2754, 49112, 120, 0),(2, 547, 35114, 21774, 161548, -2753, 49112, 120, 0),(2, 548, 35114, 21736, 161549, -2753, 49112, 120, 0),(2, 549, 35114, 21704, 161549, -2753, 49112, 120, 0),(2, 550, 35114, 21666, 161550, -2753, 49112, 120, 0),(2, 551, 35111, 21919, 161512, -2755, 49112, 120, 0),(2, 552, 35111, 21881, 161513, -2755, 49112, 120, 0),(2, 553, 35111, 21848, 161513, -2755, 49112, 120, 0),(2, 554, 35111, 21811, 161514, -2755, 49112, 120, 0),(2, 555, 35111, 21773, 161514, -2754, 49112, 120, 0),(2, 556, 35111, 21736, 161515, -2754, 49112, 120, 0),(2, 557, 35111, 21703, 161515, -2754, 49112, 120, 0),(2, 558, 35111, 21666, 161516, -2754, 49112, 120, 0),(2, 559, 35113, 21917, 161474, -2756, 49112, 60, 0),(2, 560, 35113, 21879, 161475, -2756, 49112, 60, 0),(2, 561, 35108, 21847, 161475, -2756, 49112, 120, 0),(2, 562, 35113, 21809, 161476, -2756, 49112, 60, 0),(2, 563, 35113, 21772, 161476, -2755, 49112, 60, 0),(2, 564, 35108, 21734, 161477, -2755, 49112, 120, 0),(2, 565, 35113, 21702, 161477, -2755, 49112, 60, 0),(2, 566, 35113, 21664, 161478, -2755, 49112, 60, 0),(2, 567, 35114, 22479, 161540, -2750, 49112, 120, 0),(2, 568, 35114, 22441, 161540, -2750, 49112, 120, 0),(2, 569, 35114, 22409, 161540, -2750, 49112, 120, 0),(2, 570, 35114, 22371, 161541, -2750, 49112, 120, 0),(2, 571, 35114, 22334, 161542, -2749, 49112, 120, 0),(2, 572, 35114, 22296, 161542, -2749, 49112, 120, 0),(2, 573, 35114, 22263, 161543, -2749, 49112, 120, 0),(2, 574, 35114, 22226, 161543, -2749, 49112, 120, 0),(2, 575, 35111, 22478, 161505, -2751, 49112, 120, 0),(2, 576, 35111, 22440, 161506, -2751, 49112, 120, 0),(2, 577, 35111, 22408, 161506, -2751, 49112, 120, 0),(2, 578, 35111, 22370, 161507, -2751, 49112, 120, 0),(2, 579, 35111, 22333, 161508, -2750, 49112, 120, 0),(2, 580, 35111, 22295, 161508, -2750, 49112, 120, 0),(2, 581, 35111, 22263, 161508, -2750, 49112, 120, 0),(2, 582, 35111, 22225, 161509, -2750, 49112, 120, 0),(2, 583, 35113, 22477, 161468, -2752, 49112, 60, 0),(2, 584, 35113, 22439, 161469, -2752, 49112, 60, 0),(2, 585, 35108, 22406, 161469, -2752, 49112, 120, 0),(2, 586, 35113, 22369, 161470, -2752, 49112, 60, 0),(2, 587, 35113, 22331, 161470, -2751, 49112, 60, 0),(2, 588, 35108, 22294, 161471, -2751, 49112, 120, 0),(2, 589, 35113, 22261, 161471, -2751, 49112, 60, 0),(2, 590, 35113, 22224, 161472, -2751, 49112, 60, 0),(2, 591, 35110, 22399, 161705, -2749, 49112, 120, 0),(2, 592, 35110, 22315, 161705, -2748, 49112, 120, 0),(2, 593, 35110, 22236, 161706, -2748, 49112, 120, 0),(2, 594, 35110, 22161, 161706, -2748, 49112, 120, 0),(2, 595, 35110, 21984, 161706, -2745, 49112, 120, 0),(2, 596, 35110, 21901, 161706, -2745, 49112, 120, 0),(2, 597, 35110, 21821, 161707, -2745, 49112, 120, 0),(2, 598, 35110, 21747, 161707, -2745, 49112, 120, 0),(2, 599, 35126, 21559, 160580, -2527, 48856, 10800, 0),(2, 600, 35121, 21585, 160580, -2527, 48856, 10800, 0),(2, 601, 35126, 21613, 160580, -2526, 48856, 10800, 0),(2, 602, 35125, 21559, 160602, -2531, 48856, 10800, 0),(2, 603, 35125, 21586, 160602, -2531, 48856, 10800, 0),(2, 604, 35125, 21613, 160602, -2530, 48856, 10800, 0),(2, 605, 35124, 21560, 160627, -2529, 48856, 10800, 0),(2, 606, 35124, 21587, 160627, -2529, 48856, 10800, 0),(2, 607, 35124, 21614, 160626, -2528, 48856, 10800, 0),(2, 608, 35123, 21500, 160704, -2529, 48856, 10800, 0),(2, 609, 35123, 21526, 160704, -2529, 48856, 10800, 0),(2, 610, 35123, 21554, 160704, -2528, 48856, 10800, 0),(2, 611, 35127, 21755, 161277, -2532, 65460, 10800, 0),(2, 612, 35127, 21754, 161314, -2532, 65460, 10800, 0),(2, 613, 35122, 21754, 161351, -2531, 65460, 10800, 0),(2, 614, 35127, 21753, 161387, -2531, 65460, 10800, 0),(2, 615, 35127, 21753, 161423, -2531, 65460, 10800, 0),(2, 616, 35122, 21752, 161461, -2531, 65460, 10800, 0),(2, 617, 35127, 21752, 161492, -2530, 65460, 10800, 0),(2, 618, 35127, 21751, 161529, -2530, 65460, 10800, 0),(2, 619, 35122, 21750, 161564, -2530, 65460, 10800, 0),(2, 620, 35127, 21750, 161601, -2530, 65460, 10800, 0),(2, 621, 35127, 21750, 161638, -2530, 65460, 10800, 0),(2, 622, 35126, 22534, 160514, -2527, 48856, 10800, 0),(2, 623, 35121, 22560, 160514, -2527, 48856, 10800, 0),(2, 624, 35126, 22603, 160517, -2526, 48856, 10800, 0),(2, 625, 35125, 22534, 160536, -2531, 48856, 10800, 0),(2, 626, 35125, 22561, 160536, -2531, 48856, 10800, 0),(2, 627, 35125, 22588, 160536, -2530, 48856, 10800, 0),(2, 628, 35124, 22535, 160561, -2529, 48856, 10800, 0),(2, 629, 35124, 22562, 160561, -2529, 48856, 10800, 0),(2, 630, 35124, 22589, 160560, -2528, 48856, 10800, 0),(2, 631, 35123, 22496, 160802, -2529, 48856, 10800, 0),(2, 632, 35123, 22522, 160802, -2529, 48856, 10800, 0),(2, 633, 35123, 22550, 160802, -2528, 48856, 10800, 0),(2, 634, 35127, 22388, 161632, -2532, 32384, 10800, 0),(2, 635, 35127, 22387, 161596, -2532, 32384, 10800, 0),(2, 636, 35122, 22386, 161559, -2531, 32384, 10800, 0),(2, 637, 35127, 22386, 161523, -2531, 32384, 10800, 0),(2, 638, 35127, 22386, 161487, -2531, 32384, 10800, 0),(2, 639, 35122, 22385, 161449, -2531, 32384, 10800, 0),(2, 640, 35127, 22385, 161418, -2530, 32384, 10800, 0),(2, 641, 35127, 22384, 161381, -2530, 32384, 10800, 0),(2, 642, 35122, 22384, 161346, -2530, 32384, 10800, 0),(2, 643, 35127, 22383, 161309, -2530, 32384, 10800, 0),(2, 644, 35127, 22382, 161272, -2530, 32384, 10800, 0),(2, 645, 35127, 22084, 156570, -2576, 0, 10800, 0),(2, 646, 35127, 22084, 156502, -2576, 0, 10800, 0),(2, 647, 35127, 22066, 156434, -2576, 57344, 10800, 0),(2, 648, 35127, 22034, 156410, -2576, 49152, 10800, 0),(2, 649, 35127, 21997, 156410, -2576, 49152, 10800, 0),(2, 650, 35127, 21960, 156410, -2576, 49152, 10800, 0),(2, 651, 35127, 21922, 156410, -2576, 49152, 10800, 0),(2, 652, 35127, 22540, 156570, -2576, 32768, 10800, 0),(2, 653, 35127, 22540, 156498, -2576, 32768, 10800, 0),(2, 654, 35127, 22560, 156432, -2576, 40960, 10800, 0),(2, 655, 35127, 22592, 156405, -2576, 49152, 10800, 0),(2, 656, 35127, 22629, 156405, -2576, 49152, 10800, 0),(2, 657, 35127, 22665, 156405, -2576, 49152, 10800, 0),(2, 658, 35127, 22700, 156405, -2576, 49152, 10800, 0),(2, 659, 35122, 22084, 156536, -2576, 0, 10800, 0),(2, 660, 35122, 22084, 156470, -2576, 0, 10800, 0),(2, 661, 35122, 22540, 156533, -2576, 32768, 10800, 0),(2, 662, 35122, 22540, 156464, -2576, 32768, 10800, 0),(2, 663, 35123, 22020, 156475, -2576, 57344, 10800, 0),(2, 664, 35123, 22599, 156480, -2576, 40960, 10800, 0),(2, 665, 35127, 22064, 156579, -2567, 0, 10800, 0),(2, 666, 35127, 22064, 156467, -2567, 0, 10800, 0),(2, 667, 35127, 22017, 156408, -2567, 57344, 10800, 0),(2, 668, 35127, 21950, 156394, -2567, 49152, 10800, 0),(2, 669, 35127, 22549, 156540, -2567, 32768, 10800, 0),(2, 670, 35127, 22548, 156460, -2567, 32768, 10800, 0),(2, 671, 35127, 22594, 156403, -2567, 40960, 10800, 0),(2, 672, 35127, 22666, 156391, -2567, 49152, 10800, 0),(2, 673, 35122, 22549, 156499, -2566, 32768, 10800, 0),(2, 674, 35122, 22560, 156428, -2566, 40960, 10800, 0),(2, 675, 35122, 22054, 156431, -2566, 57344, 10800, 0),(2, 676, 35122, 22064, 156515, -2567, 0, 10800, 0),(2, 677, 35123, 22648, 156430, -2567, 40960, 10800, 0),(2, 678, 35123, 21958, 156438, -2567, 57344, 10800, 0),(2, 679, 35114, 22136, 158330, -2694, 49152, 120, 0),(2, 680, 35114, 22008, 158330, -2694, 49152, 120, 0),(2, 681, 35114, 21945, 158330, -2694, 49152, 120, 0),(2, 682, 35114, 22200, 158330, -2694, 49152, 120, 0),(2, 683, 35114, 22331, 158330, -2694, 49152, 120, 0),(2, 684, 35114, 22459, 158330, -2694, 49152, 120, 0),(2, 685, 35114, 21817, 158330, -2694, 49152, 120, 0),(2, 686, 35114, 21688, 158330, -2694, 49152, 120, 0),(2, 687, 35109, 22264, 158330, -2694, 49152, 10800, 0),(2, 688, 35109, 21881, 158330, -2694, 49152, 10800, 0),(2, 689, 35109, 21624, 158330, -2694, 49152, 10800, 0),(2, 690, 35109, 22523, 158330, -2694, 49152, 10800, 0),(2, 691, 35110, 22072, 158330, -2694, 49152, 120, 0),(2, 692, 35110, 21753, 158330, -2694, 49152, 120, 0),(2, 693, 35110, 22395, 158330, -2694, 49152, 120, 0),(2, 694, 35113, 22520, 158180, -2694, 49152, 60, 0),(2, 695, 35113, 22456, 158180, -2694, 49152, 60, 0),(2, 696, 35113, 21624, 158180, -2694, 49152, 60, 0),(2, 697, 35113, 21688, 158180, -2694, 49152, 60, 0),(2, 698, 35108, 22072, 158180, -2694, 49152, 120, 0),(2, 699, 35113, 22392, 158180, -2694, 49152, 60, 0),(2, 700, 35113, 22328, 158180, -2694, 49152, 60, 0),(2, 701, 35113, 22264, 158180, -2694, 49152, 60, 0),(2, 702, 35113, 22200, 158180, -2694, 49152, 60, 0),(2, 703, 35108, 22136, 158180, -2694, 49152, 120, 0),(2, 704, 35108, 22009, 158180, -2694, 49152, 120, 0),(2, 705, 35113, 21945, 158180, -2694, 49152, 60, 0),(2, 706, 35113, 21881, 158180, -2694, 49152, 60, 0),(2, 707, 35113, 21817, 158180, -2694, 49152, 60, 0),(2, 708, 35113, 21753, 158180, -2694, 49152, 60, 0),(2, 709, 35127, 21840, 159083, -2385, 0, 10800, 0),(2, 710, 35127, 21841, 158961, -2385, 0, 10800, 0),(2, 711, 35127, 21786, 158900, -2385, 57344, 10800, 0),(2, 712, 35127, 21761, 158881, -2385, 49152, 10800, 0),(2, 713, 35127, 21722, 158880, -2385, 49152, 10800, 0),(2, 714, 35127, 21686, 158880, -2385, 49152, 10800, 0),(2, 715, 35127, 21840, 159040, -2385, 0, 10800, 0),(2, 716, 35122, 21812, 158925, -2385, 57344, 10800, 0),(2, 717, 35122, 21840, 159001, -2384, 0, 10800, 0),(2, 718, 35123, 21738, 158946, -2386, 57344, 10800, 0),(2, 719, 35127, 22293, 159089, -2387, 32768, 10800, 0),(2, 720, 35127, 22293, 159049, -2385, 32768, 10800, 0),(2, 721, 35127, 22293, 158964, -2386, 32768, 10800, 0),(2, 722, 35127, 22351, 158899, -2385, 40960, 10800, 0),(2, 723, 35127, 22378, 158879, -2384, 49152, 10800, 0),(2, 724, 35127, 22418, 158880, -2385, 49152, 10800, 0),(2, 725, 35127, 22457, 158879, -2385, 49152, 10800, 0),(2, 726, 35122, 22293, 159005, -2383, 32768, 10800, 0),(2, 727, 35122, 22315, 158935, -2386, 40960, 10800, 0),(2, 728, 35123, 22395, 158953, -2383, 40960, 10800, 0),(2, 729, 35127, 22180, 159210, -2694, 49152, 10800, 0),(2, 730, 35127, 22149, 159210, -2694, 49152, 10800, 0),(2, 731, 35127, 22118, 159210, -2694, 49152, 10800, 0),(2, 732, 35127, 22086, 159210, -2694, 49152, 10800, 0),(2, 733, 35127, 22055, 159210, -2694, 49152, 10800, 0),(2, 734, 35127, 22023, 159210, -2694, 49152, 10800, 0),(2, 735, 35127, 21992, 159210, -2694, 49152, 10800, 0),(2, 736, 35122, 21960, 159210, -2694, 49152, 10800, 0),(2, 737, 35122, 22180, 159190, -2694, 49152, 10800, 0),(2, 738, 35123, 22149, 159190, -2694, 49152, 10800, 0),(2, 739, 35127, 22118, 159190, -2694, 49152, 10800, 0),(2, 740, 35127, 22086, 159190, -2694, 49152, 10800, 0),(2, 741, 35127, 22055, 159190, -2694, 49152, 10800, 0),(2, 742, 35127, 22023, 159190, -2694, 49152, 10800, 0),(2, 743, 35127, 21992, 159190, -2694, 49152, 10800, 0),(2, 744, 35127, 21960, 159190, -2694, 49152, 10800, 0),(2, 745, 35127, 20508, 158097, -2570, 32768, 10800, 0),(2, 746, 35127, 20508, 158148, -2570, 32768, 10800, 0),(2, 747, 35127, 20508, 158198, -2570, 32768, 10800, 0),(2, 748, 35127, 20508, 158248, -2570, 32768, 10800, 0),(2, 749, 35123, 20508, 158298, -2570, 32768, 10800, 0),(2, 750, 35127, 20508, 158348, -2570, 32768, 10800, 0),(2, 751, 35127, 20508, 158398, -2570, 32768, 10800, 0),(2, 752, 35127, 20508, 158448, -2570, 32768, 10800, 0),(2, 753, 35127, 20508, 158498, -2570, 32768, 10800, 0),(2, 754, 35122, 20508, 158548, -2570, 32768, 10800, 0),(2, 755, 35127, 20508, 158598, -2570, 32768, 10800, 0),(2, 756, 35127, 20508, 158648, -2570, 32768, 10800, 0),(2, 757, 35127, 23910, 158097, -2570, 32768, 10800, 0),(2, 758, 35127, 23910, 158148, -2570, 32768, 10800, 0),(2, 759, 35127, 23910, 158198, -2570, 32768, 10800, 0),(2, 760, 35127, 23910, 158248, -2570, 32768, 10800, 0),(2, 761, 35123, 23910, 158298, -2570, 32768, 10800, 0),(2, 762, 35127, 23910, 158348, -2570, 32768, 10800, 0),(2, 763, 35127, 23910, 158398, -2570, 32768, 10800, 0),(2, 764, 35127, 23910, 158448, -2570, 32768, 10800, 0),(2, 765, 35127, 23910, 158498, -2570, 32768, 10800, 0),(2, 766, 35122, 23910, 158548, -2570, 32768, 10800, 0),(2, 767, 35127, 23910, 158598, -2570, 32768, 10800, 0),(2, 768, 35127, 23910, 158648, -2570, 32768, 10800, 0),(2, 769, 35106, 117732, 145036, -2622, 32728, 300, 0),(2, 770, 35107, 117735, 145148, -2621, 32728, 180, 0),(2, 771, 35106, 83808, 37131, -2349, 32728, 300, 0),(2, 772, 35107, 83811, 37243, -2348, 32728, 180, 0),(3, 773, 35169, 112815, 144749, -2826, 31992, 10800, 0),(3, 774, 35169, 112815, 144777, -2826, 31992, 10800, 0),(3, 775, 35169, 112815, 144805, -2826, 31992, 10800, 0),(3, 776, 35169, 112815, 144833, -2826, 31992, 10800, 0),(3, 777, 35169, 112815, 144861, -2826, 31992, 10800, 0),(3, 778, 35169, 112815, 144889, -2826, 31992, 10800, 0),(3, 779, 35169, 112815, 144917, -2826, 31992, 10800, 0),(3, 780, 35169, 112815, 144945, -2826, 31992, 10800, 0),(3, 781, 35169, 112815, 144973, -2826, 31992, 10800, 0),(3, 782, 35167, 112795, 144749, -2826, 31992, 10800, 0),(3, 783, 35166, 112795, 144777, -2826, 31992, 10800, 0),(3, 784, 35167, 112795, 144805, -2826, 31992, 10800, 0),(3, 785, 35166, 112795, 144833, -2826, 31992, 10800, 0),(3, 786, 35167, 112795, 144861, -2826, 31992, 10800, 0),(3, 787, 35166, 112795, 144889, -2826, 31992, 10800, 0),(3, 788, 35167, 112795, 144917, -2826, 31992, 10800, 0),(3, 789, 35166, 112795, 144945, -2826, 31992, 10800, 0),(3, 790, 35167, 112795, 144973, -2826, 31992, 10800, 0),(3, 791, 35168, 112775, 144749, -2826, 31992, 10800, 0),(3, 792, 35168, 112775, 144777, -2826, 31992, 10800, 0),(3, 793, 35168, 112775, 144805, -2826, 31992, 10800, 0),(3, 794, 35168, 112775, 144833, -2826, 31992, 10800, 0),(3, 795, 35163, 112775, 144861, -2826, 31992, 10800, 0),(3, 796, 35168, 112775, 144889, -2826, 31992, 10800, 0),(3, 797, 35168, 112775, 144917, -2826, 31992, 10800, 0),(3, 798, 35168, 112775, 144945, -2826, 31992, 10800, 0),(3, 799, 35168, 112775, 144973, -2826, 31992, 10800, 0),(3, 800, 35168, 113193, 144606, -2816, 15696, 10800, 0),(3, 801, 35168, 113224, 144607, -2815, 15696, 10800, 0),(3, 802, 35163, 113254, 144607, -2815, 15696, 10800, 0),(3, 803, 35168, 113284, 144607, -2814, 15696, 10800, 0),(3, 804, 35168, 113315, 144606, -2815, 15696, 10800, 0),(3, 805, 35168, 113344, 144608, -2814, 15696, 10800, 0),(3, 806, 35163, 113374, 144608, -2814, 15696, 10800, 0),(3, 807, 35168, 113404, 144608, -2813, 15696, 10800, 0),(3, 808, 35168, 113435, 144607, -2814, 15696, 10800, 0),(3, 809, 35167, 113211, 144581, -2834, 15696, 10800, 0),(3, 810, 35167, 113241, 144581, -2834, 15696, 10800, 0),(3, 811, 35166, 113272, 144581, -2833, 15696, 10800, 0),(3, 812, 35167, 113302, 144580, -2834, 15696, 10800, 0),(3, 813, 35167, 113332, 144582, -2833, 15696, 10800, 0),(3, 814, 35166, 113362, 144582, -2833, 15696, 10800, 0),(3, 815, 35167, 113391, 144583, -2832, 15696, 10800, 0),(3, 816, 35167, 113423, 144582, -2833, 15696, 10800, 0),(3, 817, 35169, 113195, 144560, -2838, 15696, 10800, 0),(3, 818, 35169, 113225, 144561, -2838, 15696, 10800, 0),(3, 819, 35169, 113255, 144561, -2837, 15696, 10800, 0),(3, 820, 35169, 113286, 144562, -2837, 15696, 10800, 0),(3, 821, 35169, 113316, 144560, -2837, 15696, 10800, 0),(3, 822, 35169, 113346, 144562, -2836, 15696, 10800, 0),(3, 823, 35169, 113376, 144562, -2836, 15696, 10800, 0),(3, 824, 35169, 113405, 144563, -2835, 15696, 10800, 0),(3, 825, 35169, 113437, 144562, -2836, 15696, 10800, 0),(3, 826, 35169, 113213, 144414, -2839, 15696, 10800, 0),(3, 827, 35169, 113243, 144414, -2838, 15696, 10800, 0),(3, 828, 35169, 113274, 144414, -2838, 15696, 10800, 0),(3, 829, 35169, 113304, 144415, -2837, 15696, 10800, 0),(3, 830, 35169, 113334, 144414, -2837, 15696, 10800, 0),(3, 831, 35169, 113364, 144416, -2837, 15696, 10800, 0),(3, 832, 35169, 113394, 144417, -2836, 15696, 10800, 0),(3, 833, 35169, 113424, 144417, -2836, 15696, 10800, 0),(3, 834, 35165, 113544, 144313, -2830, 32284, 10800, 0),(3, 835, 35165, 113545, 144343, -2831, 32284, 10800, 0),(3, 836, 35155, 113426, 144551, -2814, 15696, 60, 0),(3, 837, 35155, 113362, 144550, -2814, 15696, 60, 0),(3, 838, 35155, 113273, 144550, -2814, 15696, 60, 0),(3, 839, 35155, 113213, 144553, -2814, 15696, 60, 0),(3, 840, 35169, 113566, 144799, -2565, 32284, 10800, 0),(3, 841, 35169, 113567, 144829, -2566, 32284, 10800, 0),(3, 842, 35164, 113564, 144859, -2565, 32284, 10800, 0),(3, 843, 35169, 113563, 144889, -2565, 32284, 10800, 0),(3, 844, 35169, 113562, 144918, -2564, 32284, 10800, 0),(3, 845, 35169, 113500, 144569, -2563, 32284, 10800, 0),(3, 846, 35169, 113501, 144599, -2564, 32284, 10800, 0),(3, 847, 35164, 113498, 144628, -2563, 32284, 10800, 0),(3, 848, 35169, 113497, 144658, -2563, 32284, 10800, 0),(3, 849, 35169, 113496, 144688, -2562, 32284, 10800, 0),(3, 850, 35169, 113362, 145102, -2564, 48048, 10800, 0),(3, 851, 35169, 113332, 145105, -2565, 48048, 10800, 0),(3, 852, 35164, 113303, 145103, -2564, 48048, 10800, 0),(3, 853, 35169, 113273, 145104, -2564, 48048, 10800, 0),(3, 854, 35169, 113243, 145105, -2563, 48048, 10800, 0),(3, 855, 35168, 113568, 145369, -2667, 16328, 10800, 0),(3, 856, 35163, 113602, 145370, -2667, 16328, 10800, 0),(3, 857, 35168, 113643, 145374, -2666, 16328, 10800, 0),(3, 858, 35167, 113568, 145348, -2656, 16328, 10800, 0),(3, 859, 35167, 113602, 145349, -2657, 16328, 10800, 0),(3, 860, 35167, 113643, 145353, -2656, 16328, 10800, 0),(3, 861, 35166, 113568, 145330, -2642, 16328, 10800, 0),(3, 862, 35166, 113602, 145331, -2643, 16328, 10800, 0),(3, 863, 35166, 113643, 145335, -2642, 16328, 10800, 0),(3, 864, 35165, 113609, 145002, -2565, 39060, 10800, 0),(3, 865, 35169, 113566, 144799, -2565, 32284, 10800, 0),(3, 866, 35164, 113564, 144859, -2565, 32284, 10800, 0),(3, 867, 35169, 113562, 144918, -2564, 32284, 10800, 0),(3, 868, 35169, 113500, 144569, -2563, 32284, 10800, 0),(3, 869, 35169, 113501, 144599, -2564, 32284, 10800, 0),(3, 870, 35164, 113498, 144628, -2563, 32284, 10800, 0),(3, 871, 35169, 113497, 144658, -2563, 32284, 10800, 0),(3, 872, 35169, 113362, 145102, -2564, 48048, 10800, 0),(3, 873, 35164, 113303, 145103, -2564, 48048, 10800, 0),(3, 874, 35169, 113243, 145105, -2563, 48048, 10800, 0),(3, 875, 35166, 115587, 144952, -2560, 22704, 10800, 0),(3, 876, 35168, 115612, 144969, -2561, 22704, 10800, 0),(3, 877, 35166, 115638, 144993, -2560, 22704, 10800, 0),(3, 878, 35168, 115661, 145012, -2560, 22704, 10800, 0),(3, 879, 35166, 115679, 145027, -2559, 22704, 10800, 0),(3, 880, 35168, 115705, 145049, -2561, 22704, 10800, 0),(3, 881, 35166, 115730, 145066, -2561, 22704, 10800, 0),(3, 882, 35168, 115751, 145086, -2561, 22704, 10800, 0),(3, 883, 35166, 115762, 145110, -2562, 33460, 10800, 0),(3, 884, 35168, 115743, 145135, -2561, 41952, 10800, 0),(3, 885, 35166, 115719, 145153, -2561, 41952, 10800, 0),(3, 886, 35168, 115699, 145166, -2560, 41952, 10800, 0),(3, 887, 35166, 115672, 145185, -2562, 41952, 10800, 0),(3, 888, 35168, 115648, 145204, -2563, 41952, 10800, 0),(3, 889, 35166, 115618, 145223, -2562, 41952, 10800, 0),(3, 890, 35168, 115593, 145240, -2562, 41952, 10800, 0),(3, 891, 35166, 115574, 145253, -2561, 41952, 10800, 0),(3, 892, 35167, 115607, 144937, -2562, 22704, 10800, 0),(3, 893, 35169, 115631, 144955, -2563, 22704, 10800, 0),(3, 894, 35167, 115657, 144979, -2562, 22704, 10800, 0),(3, 895, 35169, 115681, 144998, -2562, 22704, 10800, 0),(3, 896, 35167, 115699, 145013, -2561, 22704, 10800, 0),(3, 897, 35169, 115725, 145034, -2563, 22704, 10800, 0),(3, 898, 35167, 115749, 145052, -2563, 22704, 10800, 0),(3, 899, 35169, 115770, 145071, -2563, 22704, 10800, 0),(3, 900, 35167, 115781, 145096, -2564, 33460, 10800, 0),(3, 901, 35169, 115780, 145124, -2561, 33460, 10800, 0),(3, 902, 35167, 115761, 145149, -2560, 41952, 10800, 0),(3, 903, 35169, 115737, 145167, -2560, 41952, 10800, 0),(3, 904, 35167, 115717, 145180, -2559, 41952, 10800, 0),(3, 905, 35169, 115690, 145199, -2561, 41952, 10800, 0),(3, 906, 35167, 115666, 145218, -2562, 41952, 10800, 0),(3, 907, 35169, 115636, 145237, -2561, 41952, 10800, 0),(3, 908, 35167, 115611, 145254, -2561, 41952, 10800, 0),(3, 909, 35169, 115592, 145267, -2560, 41952, 10800, 0),(3, 910, 35169, 115712, 144909, -2560, 22704, 10800, 0),(3, 911, 35169, 115735, 144928, -2560, 22704, 10800, 0),(3, 912, 35169, 115753, 144943, -2559, 22704, 10800, 0),(3, 913, 35169, 115779, 144965, -2561, 22704, 10800, 0),(3, 914, 35169, 115804, 144982, -2562, 22704, 10800, 0),(3, 915, 35169, 115770, 145210, -2556, 41952, 10800, 0),(3, 916, 35169, 115750, 145223, -2555, 41952, 10800, 0),(3, 917, 35169, 115723, 145243, -2557, 41952, 10800, 0),(3, 918, 35169, 115699, 145261, -2558, 41952, 10800, 0),(3, 919, 35169, 115669, 145280, -2557, 41952, 10800, 0),(3, 920, 35165, 115846, 145241, -2558, 32004, 10800, 0),(3, 921, 35164, 115846, 145275, -2559, 32004, 10800, 0),(3, 922, 35164, 115849, 144996, -2559, 32004, 10800, 0),(3, 923, 35165, 115848, 145019, -2559, 32004, 10800, 0),(3, 924, 35169, 115574, 144944, -2557, 41952, 10800, 0),(3, 925, 35155, 115628, 144935, -2560, 22704, 60, 0),(3, 926, 35155, 115719, 145016, -2560, 22704, 60, 0),(3, 927, 35155, 115710, 145201, -2560, 22704, 60, 0),(3, 928, 35155, 115607, 145273, -2560, 22704, 60, 0),(3, 929, 35156, 117718, 145250, -2627, 32728, 120, 0),(3, 930, 35156, 117719, 145287, -2627, 32728, 120, 0),(3, 931, 35156, 117719, 145320, -2627, 32728, 120, 0),(3, 932, 35156, 117720, 145358, -2627, 32728, 120, 0),(3, 933, 35156, 117720, 145395, -2626, 32728, 120, 0),(3, 934, 35156, 117721, 145433, -2626, 32728, 120, 0),(3, 935, 35156, 117721, 145465, -2626, 32728, 120, 0),(3, 936, 35156, 117722, 145503, -2626, 32728, 120, 0),(3, 937, 35153, 117684, 145250, -2628, 32728, 120, 0),(3, 938, 35153, 117685, 145288, -2628, 32728, 120, 0),(3, 939, 35153, 117685, 145321, -2628, 32728, 120, 0),(3, 940, 35153, 117686, 145358, -2628, 32728, 120, 0),(3, 941, 35153, 117686, 145396, -2627, 32728, 120, 0),(3, 942, 35153, 117687, 145433, -2627, 32728, 120, 0),(3, 943, 35153, 117687, 145466, -2627, 32728, 120, 0),(3, 944, 35153, 117688, 145503, -2627, 32728, 120, 0),(3, 945, 35155, 117646, 145252, -2629, 32728, 60, 0),(3, 946, 35155, 117647, 145290, -2629, 32728, 60, 0),(3, 947, 35150, 117647, 145322, -2629, 32728, 120, 0),(3, 948, 35155, 117648, 145360, -2629, 32728, 60, 0),(3, 949, 35155, 117648, 145397, -2628, 32728, 60, 0),(3, 950, 35150, 117649, 145435, -2628, 32728, 120, 0),(3, 951, 35155, 117649, 145467, -2628, 32728, 60, 0),(3, 952, 35155, 117650, 145505, -2628, 32728, 60, 0),(3, 953, 35156, 117712, 144690, -2623, 32728, 120, 0),(3, 954, 35156, 117712, 144728, -2623, 32728, 120, 0),(3, 955, 35156, 117712, 144760, -2623, 32728, 120, 0),(3, 956, 35156, 117713, 144798, -2623, 32728, 120, 0),(3, 957, 35156, 117714, 144835, -2622, 32728, 120, 0),(3, 958, 35156, 117714, 144873, -2622, 32728, 120, 0),(3, 959, 35156, 117715, 144906, -2622, 32728, 120, 0),(3, 960, 35156, 117715, 144943, -2622, 32728, 120, 0),(3, 961, 35153, 117677, 144691, -2624, 32728, 120, 0),(3, 962, 35153, 117678, 144729, -2624, 32728, 120, 0),(3, 963, 35153, 117678, 144761, -2624, 32728, 120, 0),(3, 964, 35153, 117679, 144799, -2624, 32728, 120, 0),(3, 965, 35153, 117680, 144836, -2623, 32728, 120, 0),(3, 966, 35153, 117680, 144874, -2623, 32728, 120, 0),(3, 967, 35153, 117680, 144906, -2623, 32728, 120, 0),(3, 968, 35153, 117681, 144944, -2623, 32728, 120, 0),(3, 969, 35155, 117640, 144692, -2625, 32728, 60, 0),(3, 970, 35155, 117641, 144730, -2625, 32728, 60, 0),(3, 971, 35150, 117641, 144763, -2625, 32728, 120, 0),(3, 972, 35155, 117642, 144800, -2625, 32728, 60, 0),(3, 973, 35155, 117642, 144838, -2624, 32728, 60, 0),(3, 974, 35150, 117643, 144875, -2624, 32728, 120, 0),(3, 975, 35155, 117643, 144908, -2624, 32728, 60, 0),(3, 976, 35155, 117644, 144945, -2624, 32728, 60, 0),(3, 977, 35152, 117877, 144770, -2622, 32728, 120, 0),(3, 978, 35152, 117877, 144854, -2621, 32728, 120, 0),(3, 979, 35152, 117878, 144933, -2621, 32728, 120, 0),(3, 980, 35152, 117878, 145008, -2621, 32728, 120, 0),(3, 981, 35152, 117878, 145185, -2618, 32728, 120, 0),(3, 982, 35152, 117878, 145268, -2618, 32728, 120, 0),(3, 983, 35152, 117879, 145348, -2618, 32728, 120, 0),(3, 984, 35152, 117879, 145422, -2618, 32728, 120, 0),(3, 985, 35168, 116752, 145610, -2400, 32472, 10800, 0),(3, 986, 35163, 116752, 145584, -2400, 32472, 10800, 0),(3, 987, 35168, 116752, 145556, -2399, 32472, 10800, 0),(3, 988, 35167, 116774, 145610, -2404, 32472, 10800, 0),(3, 989, 35167, 116774, 145583, -2404, 32472, 10800, 0),(3, 990, 35167, 116774, 145556, -2403, 32472, 10800, 0),(3, 991, 35166, 116799, 145609, -2402, 32472, 10800, 0),(3, 992, 35166, 116799, 145582, -2402, 32472, 10800, 0),(3, 993, 35166, 116798, 145555, -2401, 32472, 10800, 0),(3, 994, 35165, 116876, 145669, -2402, 32472, 10800, 0),(3, 995, 35165, 116876, 145643, -2402, 32472, 10800, 0),(3, 996, 35165, 116876, 145615, -2401, 32472, 10800, 0),(3, 997, 35169, 117449, 145414, -2405, 49076, 10800, 0),(3, 998, 35169, 117486, 145415, -2405, 49076, 10800, 0),(3, 999, 35164, 117523, 145415, -2404, 49076, 10800, 0),(3, 1000, 35169, 117559, 145416, -2404, 49076, 10800, 0),(3, 1001, 35169, 117595, 145416, -2404, 49076, 10800, 0),(3, 1002, 35164, 117633, 145417, -2404, 49076, 10800, 0),(3, 1003, 35169, 117664, 145417, -2403, 49076, 10800, 0),(3, 1004, 35169, 117701, 145418, -2403, 49076, 10800, 0),(3, 1005, 35164, 117736, 145419, -2403, 49076, 10800, 0),(3, 1006, 35169, 117773, 145419, -2403, 49076, 10800, 0),(3, 1007, 35169, 117810, 145419, -2403, 49076, 10800, 0),(3, 1008, 35168, 116686, 144635, -2400, 32472, 10800, 0),(3, 1009, 35163, 116686, 144609, -2400, 32472, 10800, 0),(3, 1010, 35168, 116689, 144566, -2399, 32472, 10800, 0),(3, 1011, 35167, 116708, 144635, -2404, 32472, 10800, 0),(3, 1012, 35167, 116708, 144608, -2404, 32472, 10800, 0),(3, 1013, 35167, 116708, 144581, -2403, 32472, 10800, 0),(3, 1014, 35166, 116733, 144634, -2402, 32472, 10800, 0),(3, 1015, 35166, 116733, 144607, -2402, 32472, 10800, 0),(3, 1016, 35166, 116732, 144580, -2401, 32472, 10800, 0),(3, 1017, 35165, 116974, 144673, -2402, 32472, 10800, 0),(3, 1018, 35165, 116974, 144647, -2402, 32472, 10800, 0),(3, 1019, 35165, 116974, 144619, -2401, 32472, 10800, 0),(3, 1020, 35169, 117804, 144781, -2405, 16000, 10800, 0),(3, 1021, 35169, 117768, 144782, -2405, 16000, 10800, 0),(3, 1022, 35164, 117731, 144783, -2404, 16000, 10800, 0),(3, 1023, 35169, 117695, 144783, -2404, 16000, 10800, 0),(3, 1024, 35169, 117659, 144783, -2404, 16000, 10800, 0),(3, 1025, 35164, 117621, 144784, -2404, 16000, 10800, 0),(3, 1026, 35169, 117590, 144784, -2403, 16000, 10800, 0),(3, 1027, 35169, 117553, 144785, -2403, 16000, 10800, 0),(3, 1028, 35164, 117518, 144785, -2403, 16000, 10800, 0),(3, 1029, 35169, 117481, 144786, -2403, 16000, 10800, 0),(3, 1030, 35169, 117444, 144787, -2403, 16000, 10800, 0),(3, 1031, 35169, 112740, 145089, -2440, 49152, 10800, 0),(3, 1032, 35169, 112671, 145088, -2400, 49152, 10800, 0),(3, 1033, 35169, 112612, 145089, -2440, 40960, 10800, 0),(3, 1034, 35169, 112585, 145136, -2440, 32768, 10800, 0),(3, 1035, 35169, 112582, 145181, -2440, 32768, 10800, 0),(3, 1036, 35169, 112582, 145219, -2440, 32768, 10800, 0),(3, 1037, 35169, 112582, 145259, -2440, 16384, 10800, 0),(3, 1038, 35169, 112730, 144624, -2440, 49152, 10800, 0),(3, 1039, 35169, 112683, 144620, -2440, 16384, 10800, 0),(3, 1040, 35169, 112612, 144628, -2440, 16384, 10800, 0),(3, 1041, 35169, 112582, 144589, -2440, 24576, 10800, 0),(3, 1042, 35169, 112577, 144541, -2440, 32768, 10800, 0),(3, 1043, 35169, 112577, 144503, -2440, 32768, 10800, 0),(3, 1044, 35169, 112583, 144464, -2440, 32768, 10800, 0),(3, 1045, 35164, 112697, 145089, -2440, 16384, 10800, 0),(3, 1046, 35164, 112636, 145090, -2440, 24576, 10800, 0),(3, 1047, 35164, 112705, 144621, -2440, 40960, 10800, 0),(3, 1048, 35164, 112652, 144627, -2440, 49152, 10800, 0),(3, 1049, 35165, 112659, 145168, -2440, 24576, 10800, 0),(3, 1050, 35165, 112659, 144553, -2440, 40960, 10800, 0),(3, 1051, 35169, 112751, 145105, -2440, 49152, 10800, 0),(3, 1052, 35169, 112639, 145105, -2440, 49152, 10800, 0),(3, 1053, 35169, 112580, 145152, -2440, 40960, 10800, 0),(3, 1054, 35169, 112566, 145219, -2440, 32768, 10800, 0),(3, 1055, 35169, 112712, 144620, -2440, 16384, 10800, 0),(3, 1056, 35169, 112632, 144621, -2440, 16384, 10800, 0),(3, 1057, 35169, 112575, 144575, -2440, 24576, 10800, 0),(3, 1058, 35169, 112563, 144503, -2440, 32768, 10800, 0),(3, 1059, 35164, 112671, 144620, -2439, 16384, 10800, 0),(3, 1060, 35164, 112600, 144609, -2439, 24576, 10800, 0),(3, 1061, 35164, 112603, 145115, -2439, 40960, 10800, 0),(3, 1062, 35164, 112687, 145105, -2440, 49152, 10800, 0),(3, 1063, 35165, 112602, 144521, -2440, 24576, 10800, 0),(3, 1064, 35165, 112610, 145211, -2440, 40960, 10800, 0),(3, 1065, 35156, 114502, 145033, -2567, 32768, 120, 0),(3, 1066, 35156, 114502, 145161, -2567, 32768, 120, 0),(3, 1067, 35156, 114502, 145224, -2567, 32768, 120, 0),(3, 1068, 35156, 114502, 144969, -2567, 32768, 120, 0),(3, 1069, 35156, 114502, 144838, -2567, 32768, 120, 0),(3, 1070, 35156, 114502, 144710, -2567, 32768, 120, 0),(3, 1071, 35156, 114502, 145352, -2567, 32768, 120, 0),(3, 1072, 35156, 114502, 145481, -2567, 32768, 120, 0),(3, 1073, 35151, 114502, 144905, -2567, 32768, 10800, 0),(3, 1074, 35151, 114502, 145288, -2567, 32768, 10800, 0),(3, 1075, 35151, 114502, 145545, -2567, 32768, 10800, 0),(3, 1076, 35151, 114502, 144646, -2567, 32768, 10800, 0),(3, 1077, 35152, 114502, 145097, -2567, 32768, 120, 0),(3, 1078, 35152, 114502, 145416, -2567, 32768, 120, 0),(3, 1079, 35152, 114502, 144774, -2567, 32768, 120, 0),(3, 1080, 35155, 114352, 144649, -2567, 32768, 60, 0),(3, 1081, 35155, 114352, 144713, -2567, 32768, 60, 0),(3, 1082, 35155, 114352, 145545, -2567, 32768, 60, 0),(3, 1083, 35155, 114352, 145481, -2567, 32768, 60, 0),(3, 1084, 35150, 114352, 145097, -2567, 32768, 120, 0),(3, 1085, 35155, 114352, 144777, -2567, 32768, 60, 0),(3, 1086, 35155, 114352, 144841, -2567, 32768, 60, 0),(3, 1087, 35155, 114352, 144905, -2567, 32768, 60, 0),(3, 1088, 35155, 114352, 144969, -2567, 32768, 60, 0),(3, 1089, 35150, 114352, 145033, -2567, 32768, 120, 0),(3, 1090, 35150, 114352, 145160, -2567, 32768, 120, 0),(3, 1091, 35155, 114352, 145224, -2567, 32768, 60, 0),(3, 1092, 35155, 114352, 145288, -2567, 32768, 60, 0),(3, 1093, 35155, 114352, 145352, -2567, 32768, 60, 0),(3, 1094, 35155, 114352, 145416, -2567, 32768, 60, 0),(3, 1095, 35169, 115255, 145329, -2258, 49152, 10800, 0),(3, 1096, 35169, 115133, 145328, -2258, 49152, 10800, 0),(3, 1097, 35169, 115072, 145383, -2258, 40960, 10800, 0),(3, 1098, 35169, 115053, 145408, -2258, 32768, 10800, 0),(3, 1099, 35169, 115052, 145447, -2258, 32768, 10800, 0),(3, 1100, 35169, 115052, 145483, -2258, 32768, 10800, 0),(3, 1101, 35169, 115212, 145329, -2258, 49152, 10800, 0),(3, 1102, 35164, 115097, 145357, -2258, 40960, 10800, 0),(3, 1103, 35164, 115173, 145329, -2257, 49152, 10800, 0),(3, 1104, 35165, 115118, 145431, -2259, 40960, 10800, 0),(3, 1105, 35169, 115261, 144876, -2260, 16384, 10800, 0),(3, 1106, 35169, 115221, 144876, -2258, 16384, 10800, 0),(3, 1107, 35169, 115136, 144876, -2259, 16384, 10800, 0),(3, 1108, 35169, 115071, 144818, -2258, 24576, 10800, 0),(3, 1109, 35169, 115051, 144791, -2257, 32768, 10800, 0),(3, 1110, 35169, 115052, 144751, -2258, 32768, 10800, 0),(3, 1111, 35169, 115051, 144712, -2258, 32768, 10800, 0),(3, 1112, 35164, 115177, 144876, -2256, 16384, 10800, 0),(3, 1113, 35164, 115107, 144854, -2259, 24576, 10800, 0),(3, 1114, 35165, 115125, 144774, -2256, 24576, 10800, 0),(3, 1115, 35169, 115382, 144989, -2567, 32768, 10800, 0),(3, 1116, 35169, 115382, 145020, -2567, 32768, 10800, 0),(3, 1117, 35169, 115382, 145051, -2567, 32768, 10800, 0),(3, 1118, 35169, 115382, 145083, -2567, 32768, 10800, 0),(3, 1119, 35169, 115382, 145114, -2567, 32768, 10800, 0),(3, 1120, 35169, 115382, 145146, -2567, 32768, 10800, 0),(3, 1121, 35169, 115382, 145177, -2567, 32768, 10800, 0),(3, 1122, 35164, 115382, 145209, -2567, 32768, 10800, 0),(3, 1123, 35164, 115362, 144989, -2567, 32768, 10800, 0),(3, 1124, 35165, 115362, 145020, -2567, 32768, 10800, 0),(3, 1125, 35169, 115362, 145051, -2567, 32768, 10800, 0),(3, 1126, 35169, 115362, 145083, -2567, 32768, 10800, 0),(3, 1127, 35169, 115362, 145114, -2567, 32768, 10800, 0),(3, 1128, 35169, 115362, 145146, -2567, 32768, 10800, 0),(3, 1129, 35169, 115362, 145177, -2567, 32768, 10800, 0),(3, 1130, 35169, 115362, 145209, -2567, 32768, 10800, 0),(3, 1131, 35169, 114269, 146661, -2443, 16384, 10800, 0),(3, 1132, 35169, 114320, 146661, -2443, 16384, 10800, 0),(3, 1133, 35169, 114370, 146661, -2443, 16384, 10800, 0),(3, 1134, 35169, 114420, 146661, -2443, 16384, 10800, 0),(3, 1135, 35165, 114470, 146661, -2443, 16384, 10800, 0),(3, 1136, 35169, 114520, 146661, -2443, 16384, 10800, 0),(3, 1137, 35169, 114570, 146661, -2443, 16384, 10800, 0),(3, 1138, 35169, 114620, 146661, -2443, 16384, 10800, 0),(3, 1139, 35169, 114670, 146661, -2443, 16384, 10800, 0),(3, 1140, 35164, 114720, 146661, -2443, 16384, 10800, 0),(3, 1141, 35169, 114770, 146661, -2443, 16384, 10800, 0),(3, 1142, 35169, 114820, 146661, -2443, 16384, 10800, 0),(3, 1143, 35169, 114269, 143259, -2443, 16384, 10800, 0),(3, 1144, 35169, 114320, 143259, -2443, 16384, 10800, 0),(3, 1145, 35169, 114370, 143259, -2443, 16384, 10800, 0),(3, 1146, 35169, 114420, 143259, -2443, 16384, 10800, 0),(3, 1147, 35165, 114470, 143259, -2443, 16384, 10800, 0),(3, 1148, 35169, 114520, 143259, -2443, 16384, 10800, 0),(3, 1149, 35169, 114570, 143259, -2443, 16384, 10800, 0),(3, 1150, 35169, 114620, 143259, -2443, 16384, 10800, 0),(3, 1151, 35169, 114670, 143259, -2443, 16384, 10800, 0),(3, 1152, 35164, 114720, 143259, -2443, 16384, 10800, 0),(3, 1153, 35169, 114770, 143259, -2443, 16384, 10800, 0),(3, 1154, 35169, 114820, 143259, -2443, 16384, 10800, 0),(4, 1155, 35211, 78891, 36844, -2553, 31992, 10800, 0),(4, 1156, 35211, 78891, 36872, -2553, 31992, 10800, 0),(4, 1157, 35211, 78891, 36900, -2553, 31992, 10800, 0),(4, 1158, 35211, 78891, 36928, -2553, 31992, 10800, 0),(4, 1159, 35211, 78891, 36956, -2553, 31992, 10800, 0),(4, 1160, 35211, 78891, 36984, -2553, 31992, 10800, 0),(4, 1161, 35211, 78891, 37012, -2553, 31992, 10800, 0),(4, 1162, 35211, 78891, 37040, -2553, 31992, 10800, 0),(4, 1163, 35211, 78891, 37068, -2553, 31992, 10800, 0),(4, 1164, 35209, 78871, 36844, -2553, 31992, 10800, 0),(4, 1165, 35208, 78871, 36872, -2553, 31992, 10800, 0),(4, 1166, 35209, 78871, 36900, -2553, 31992, 10800, 0),(4, 1167, 35208, 78871, 36928, -2553, 31992, 10800, 0),(4, 1168, 35209, 78871, 36956, -2553, 31992, 10800, 0),(4, 1169, 35208, 78871, 36984, -2553, 31992, 10800, 0),(4, 1170, 35209, 78871, 37012, -2553, 31992, 10800, 0),(4, 1171, 35208, 78871, 37040, -2553, 31992, 10800, 0),(4, 1172, 35209, 78871, 37068, -2553, 31992, 10800, 0),(4, 1173, 35210, 78851, 36844, -2553, 31992, 10800, 0),(4, 1174, 35210, 78851, 36872, -2553, 31992, 10800, 0),(4, 1175, 35210, 78851, 36900, -2553, 31992, 10800, 0),(4, 1176, 35210, 78851, 36928, -2553, 31992, 10800, 0),(4, 1177, 35205, 78851, 36956, -2553, 31992, 10800, 0),(4, 1178, 35210, 78851, 36984, -2553, 31992, 10800, 0),(4, 1179, 35210, 78851, 37012, -2553, 31992, 10800, 0),(4, 1180, 35210, 78851, 37040, -2553, 31992, 10800, 0),(4, 1181, 35210, 78851, 37068, -2553, 31992, 10800, 0),(4, 1182, 35210, 79269, 36701, -2543, 15696, 10800, 0),(4, 1183, 35210, 79300, 36702, -2542, 15696, 10800, 0),(4, 1184, 35205, 79330, 36702, -2542, 15696, 10800, 0),(4, 1185, 35210, 79360, 36702, -2541, 15696, 10800, 0),(4, 1186, 35210, 79391, 36701, -2542, 15696, 10800, 0),(4, 1187, 35210, 79420, 36703, -2541, 15696, 10800, 0),(4, 1188, 35205, 79450, 36703, -2541, 15696, 10800, 0),(4, 1189, 35210, 79480, 36703, -2540, 15696, 10800, 0),(4, 1190, 35210, 79511, 36702, -2541, 15696, 10800, 0),(4, 1191, 35209, 79287, 36676, -2561, 15696, 10800, 0),(4, 1192, 35209, 79317, 36676, -2561, 15696, 10800, 0),(4, 1193, 35208, 79348, 36676, -2560, 15696, 10800, 0),(4, 1194, 35209, 79378, 36675, -2561, 15696, 10800, 0),(4, 1195, 35209, 79408, 36677, -2560, 15696, 10800, 0),(4, 1196, 35208, 79438, 36677, -2560, 15696, 10800, 0),(4, 1197, 35209, 79467, 36678, -2559, 15696, 10800, 0),(4, 1198, 35209, 79499, 36677, -2560, 15696, 10800, 0),(4, 1199, 35211, 79271, 36655, -2565, 15696, 10800, 0),(4, 1200, 35211, 79301, 36656, -2565, 15696, 10800, 0),(4, 1201, 35211, 79331, 36656, -2564, 15696, 10800, 0),(4, 1202, 35211, 79362, 36657, -2564, 15696, 10800, 0),(4, 1203, 35211, 79392, 36655, -2564, 15696, 10800, 0),(4, 1204, 35211, 79422, 36657, -2563, 15696, 10800, 0),(4, 1205, 35211, 79452, 36657, -2563, 15696, 10800, 0),(4, 1206, 35211, 79481, 36658, -2562, 15696, 10800, 0),(4, 1207, 35211, 79513, 36657, -2563, 15696, 10800, 0),(4, 1208, 35211, 79289, 36509, -2566, 15696, 10800, 0),(4, 1209, 35211, 79319, 36509, -2565, 15696, 10800, 0),(4, 1210, 35211, 79350, 36509, -2565, 15696, 10800, 0),(4, 1211, 35211, 79380, 36510, -2564, 15696, 10800, 0),(4, 1212, 35211, 79410, 36509, -2564, 15696, 10800, 0),(4, 1213, 35211, 79440, 36511, -2564, 15696, 10800, 0),(4, 1214, 35211, 79470, 36512, -2563, 15696, 10800, 0),(4, 1215, 35211, 79500, 36512, -2563, 15696, 10800, 0),(4, 1216, 35207, 79620, 36408, -2557, 32284, 10800, 0),(4, 1217, 35207, 79621, 36438, -2558, 32284, 10800, 0),(4, 1218, 35197, 79502, 36646, -2541, 15696, 60, 0),(4, 1219, 35197, 79438, 36645, -2541, 15696, 60, 0),(4, 1220, 35197, 79349, 36645, -2541, 15696, 60, 0),(4, 1221, 35197, 79289, 36648, -2541, 15696, 60, 0),(4, 1222, 35211, 79642, 36894, -2292, 32284, 10800, 0),(4, 1223, 35211, 79643, 36924, -2293, 32284, 10800, 0),(4, 1224, 35206, 79640, 36954, -2292, 32284, 10800, 0),(4, 1225, 35211, 79639, 36984, -2292, 32284, 10800, 0),(4, 1226, 35211, 79638, 37013, -2291, 32284, 10800, 0),(4, 1227, 35211, 79576, 36664, -2290, 32284, 10800, 0),(4, 1228, 35211, 79577, 36694, -2291, 32284, 10800, 0),(4, 1229, 35206, 79574, 36723, -2290, 32284, 10800, 0),(4, 1230, 35211, 79573, 36753, -2290, 32284, 10800, 0),(4, 1231, 35211, 79572, 36783, -2289, 32284, 10800, 0),(4, 1232, 35211, 79438, 37197, -2291, 48048, 10800, 0),(4, 1233, 35211, 79408, 37200, -2292, 48048, 10800, 0),(4, 1234, 35206, 79379, 37198, -2291, 48048, 10800, 0),(4, 1235, 35211, 79349, 37199, -2291, 48048, 10800, 0),(4, 1236, 35211, 79319, 37200, -2290, 48048, 10800, 0),(4, 1237, 35210, 79644, 37464, -2394, 16328, 10800, 0),(4, 1238, 35205, 79678, 37465, -2394, 16328, 10800, 0),(4, 1239, 35210, 79719, 37469, -2393, 16328, 10800, 0),(4, 1240, 35209, 79644, 37443, -2383, 16328, 10800, 0),(4, 1241, 35209, 79678, 37444, -2384, 16328, 10800, 0),(4, 1242, 35209, 79719, 37448, -2383, 16328, 10800, 0),(4, 1243, 35208, 79644, 37425, -2369, 16328, 10800, 0),(4, 1244, 35208, 79678, 37426, -2370, 16328, 10800, 0),(4, 1245, 35208, 79719, 37430, -2369, 16328, 10800, 0),(4, 1246, 35207, 79685, 37097, -2292, 39060, 10800, 0),(4, 1247, 35211, 79642, 36894, -2292, 32284, 10800, 0),(4, 1248, 35206, 79640, 36954, -2292, 32284, 10800, 0),(4, 1249, 35211, 79638, 37013, -2291, 32284, 10800, 0),(4, 1250, 35211, 79576, 36664, -2290, 32284, 10800, 0),(4, 1251, 35211, 79577, 36694, -2291, 32284, 10800, 0),(4, 1252, 35206, 79574, 36723, -2290, 32284, 10800, 0),(4, 1253, 35211, 79573, 36753, -2290, 32284, 10800, 0),(4, 1254, 35211, 79438, 37197, -2291, 48048, 10800, 0),(4, 1255, 35206, 79379, 37198, -2291, 48048, 10800, 0),(4, 1256, 35211, 79319, 37200, -2290, 48048, 10800, 0),(4, 1257, 35208, 81663, 37047, -2287, 22704, 10800, 0),(4, 1258, 35210, 81688, 37064, -2288, 22704, 10800, 0),(4, 1259, 35208, 81714, 37088, -2287, 22704, 10800, 0),(4, 1260, 35210, 81737, 37107, -2287, 22704, 10800, 0),(4, 1261, 35208, 81755, 37122, -2286, 22704, 10800, 0),(4, 1262, 35210, 81781, 37144, -2288, 22704, 10800, 0),(4, 1263, 35208, 81806, 37161, -2288, 22704, 10800, 0),(4, 1264, 35210, 81827, 37181, -2288, 22704, 10800, 0),(4, 1265, 35208, 81838, 37205, -2289, 33460, 10800, 0),(4, 1266, 35210, 81819, 37230, -2288, 41952, 10800, 0),(4, 1267, 35208, 81795, 37248, -2288, 41952, 10800, 0),(4, 1268, 35210, 81775, 37261, -2287, 41952, 10800, 0),(4, 1269, 35208, 81748, 37280, -2289, 41952, 10800, 0),(4, 1270, 35210, 81724, 37299, -2290, 41952, 10800, 0),(4, 1271, 35208, 81694, 37318, -2289, 41952, 10800, 0),(4, 1272, 35210, 81669, 37335, -2289, 41952, 10800, 0),(4, 1273, 35208, 81650, 37348, -2288, 41952, 10800, 0),(4, 1274, 35209, 81683, 37032, -2289, 22704, 10800, 0),(4, 1275, 35211, 81707, 37050, -2290, 22704, 10800, 0),(4, 1276, 35209, 81733, 37074, -2289, 22704, 10800, 0),(4, 1277, 35211, 81757, 37093, -2289, 22704, 10800, 0),(4, 1278, 35209, 81775, 37108, -2288, 22704, 10800, 0),(4, 1279, 35211, 81801, 37129, -2290, 22704, 10800, 0),(4, 1280, 35209, 81825, 37147, -2290, 22704, 10800, 0),(4, 1281, 35211, 81846, 37166, -2290, 22704, 10800, 0),(4, 1282, 35209, 81857, 37191, -2291, 33460, 10800, 0),(4, 1283, 35211, 81856, 37219, -2288, 33460, 10800, 0),(4, 1284, 35209, 81837, 37244, -2287, 41952, 10800, 0),(4, 1285, 35211, 81813, 37262, -2287, 41952, 10800, 0),(4, 1286, 35209, 81793, 37275, -2286, 41952, 10800, 0),(4, 1287, 35211, 81766, 37294, -2288, 41952, 10800, 0),(4, 1288, 35209, 81742, 37313, -2289, 41952, 10800, 0),(4, 1289, 35211, 81712, 37332, -2288, 41952, 10800, 0),(4, 1290, 35209, 81687, 37349, -2288, 41952, 10800, 0),(4, 1291, 35211, 81668, 37362, -2287, 41952, 10800, 0),(4, 1292, 35211, 81788, 37004, -2287, 22704, 10800, 0),(4, 1293, 35211, 81811, 37023, -2287, 22704, 10800, 0),(4, 1294, 35211, 81829, 37038, -2286, 22704, 10800, 0),(4, 1295, 35211, 81855, 37060, -2288, 22704, 10800, 0),(4, 1296, 35211, 81880, 37077, -2289, 22704, 10800, 0),(4, 1297, 35211, 81846, 37305, -2283, 41952, 10800, 0),(4, 1298, 35211, 81826, 37318, -2282, 41952, 10800, 0),(4, 1299, 35211, 81799, 37338, -2284, 41952, 10800, 0),(4, 1300, 35211, 81775, 37356, -2285, 41952, 10800, 0),(4, 1301, 35211, 81745, 37375, -2284, 41952, 10800, 0),(4, 1302, 35207, 81922, 37336, -2285, 32004, 10800, 0),(4, 1303, 35206, 81922, 37370, -2286, 32004, 10800, 0),(4, 1304, 35206, 81925, 37091, -2286, 32004, 10800, 0),(4, 1305, 35207, 81924, 37114, -2286, 32004, 10800, 0),(4, 1306, 35211, 81650, 37039, -2284, 41952, 10800, 0),(4, 1307, 35197, 81704, 37030, -2287, 22704, 60, 0),(4, 1308, 35197, 81795, 37111, -2287, 22704, 60, 0),(4, 1309, 35197, 81786, 37296, -2287, 22704, 60, 0),(4, 1310, 35197, 81683, 37368, -2287, 22704, 60, 0),(4, 1311, 35198, 83794, 37345, -2354, 32728, 120, 0),(4, 1312, 35198, 83795, 37382, -2354, 32728, 120, 0),(4, 1313, 35198, 83795, 37415, -2354, 32728, 120, 0),(4, 1314, 35198, 83796, 37453, -2354, 32728, 120, 0),(4, 1315, 35198, 83796, 37490, -2353, 32728, 120, 0),(4, 1316, 35198, 83797, 37528, -2353, 32728, 120, 0),(4, 1317, 35198, 83797, 37560, -2353, 32728, 120, 0),(4, 1318, 35198, 83798, 37598, -2353, 32728, 120, 0),(4, 1319, 35195, 83760, 37345, -2355, 32728, 120, 0),(4, 1320, 35195, 83761, 37383, -2355, 32728, 120, 0),(4, 1321, 35195, 83761, 37416, -2355, 32728, 120, 0),(4, 1322, 35195, 83762, 37453, -2355, 32728, 120, 0),(4, 1323, 35195, 83762, 37491, -2354, 32728, 120, 0),(4, 1324, 35195, 83763, 37528, -2354, 32728, 120, 0),(4, 1325, 35195, 83763, 37561, -2354, 32728, 120, 0),(4, 1326, 35195, 83764, 37598, -2354, 32728, 120, 0),(4, 1327, 35197, 83722, 37347, -2356, 32728, 60, 0),(4, 1328, 35197, 83723, 37385, -2356, 32728, 60, 0),(4, 1329, 35192, 83723, 37417, -2356, 32728, 120, 0),(4, 1330, 35197, 83724, 37455, -2356, 32728, 60, 0),(4, 1331, 35197, 83724, 37492, -2355, 32728, 60, 0),(4, 1332, 35192, 83725, 37530, -2355, 32728, 120, 0),(4, 1333, 35197, 83725, 37562, -2355, 32728, 60, 0),(4, 1334, 35197, 83726, 37600, -2355, 32728, 60, 0),(4, 1335, 35198, 83788, 36785, -2350, 32728, 120, 0),(4, 1336, 35198, 83788, 36823, -2350, 32728, 120, 0),(4, 1337, 35198, 83788, 36855, -2350, 32728, 120, 0),(4, 1338, 35198, 83789, 36893, -2350, 32728, 120, 0),(4, 1339, 35198, 83790, 36930, -2349, 32728, 120, 0),(4, 1340, 35198, 83790, 36968, -2349, 32728, 120, 0),(4, 1341, 35198, 83791, 37001, -2349, 32728, 120, 0),(4, 1342, 35198, 83791, 37038, -2349, 32728, 120, 0),(4, 1343, 35195, 83753, 36786, -2351, 32728, 120, 0),(4, 1344, 35195, 83754, 36824, -2351, 32728, 120, 0),(4, 1345, 35195, 83754, 36856, -2351, 32728, 120, 0),(4, 1346, 35195, 83755, 36894, -2351, 32728, 120, 0),(4, 1347, 35195, 83756, 36931, -2350, 32728, 120, 0),(4, 1348, 35195, 83756, 36969, -2350, 32728, 120, 0),(4, 1349, 35195, 83756, 37001, -2350, 32728, 120, 0),(4, 1350, 35195, 83757, 37039, -2350, 32728, 120, 0),(4, 1351, 35197, 83716, 36787, -2352, 32728, 60, 0),(4, 1352, 35197, 83717, 36825, -2352, 32728, 60, 0),(4, 1353, 35192, 83717, 36858, -2352, 32728, 120, 0),(4, 1354, 35197, 83718, 36895, -2352, 32728, 60, 0),(4, 1355, 35197, 83718, 36933, -2351, 32728, 60, 0),(4, 1356, 35192, 83719, 36970, -2351, 32728, 120, 0),(4, 1357, 35197, 83719, 37003, -2351, 32728, 60, 0),(4, 1358, 35197, 83720, 37040, -2351, 32728, 60, 0),(4, 1359, 35194, 83953, 36865, -2349, 32728, 120, 0),(4, 1360, 35194, 83953, 36949, -2348, 32728, 120, 0),(4, 1361, 35194, 83954, 37028, -2348, 32728, 120, 0),(4, 1362, 35194, 83954, 37103, -2348, 32728, 120, 0),(4, 1363, 35194, 83954, 37280, -2345, 32728, 120, 0),(4, 1364, 35194, 83954, 37363, -2345, 32728, 120, 0),(4, 1365, 35194, 83955, 37443, -2345, 32728, 120, 0),(4, 1366, 35194, 83955, 37517, -2345, 32728, 120, 0),(4, 1367, 35210, 82828, 37705, -2127, 32472, 10800, 0),(4, 1368, 35205, 82828, 37679, -2127, 32472, 10800, 0),(4, 1369, 35210, 82828, 37651, -2126, 32472, 10800, 0),(4, 1370, 35209, 82850, 37705, -2131, 32472, 10800, 0),(4, 1371, 35209, 82850, 37678, -2131, 32472, 10800, 0),(4, 1372, 35209, 82850, 37651, -2130, 32472, 10800, 0),(4, 1373, 35208, 82875, 37704, -2129, 32472, 10800, 0),(4, 1374, 35208, 82875, 37677, -2129, 32472, 10800, 0),(4, 1375, 35208, 82874, 37650, -2128, 32472, 10800, 0),(4, 1376, 35207, 82952, 37764, -2129, 32472, 10800, 0),(4, 1377, 35207, 82952, 37738, -2129, 32472, 10800, 0),(4, 1378, 35207, 82952, 37710, -2128, 32472, 10800, 0),(4, 1379, 35211, 83525, 37509, -2132, 49076, 10800, 0),(4, 1380, 35211, 83562, 37510, -2132, 49076, 10800, 0),(4, 1381, 35206, 83599, 37510, -2131, 49076, 10800, 0),(4, 1382, 35211, 83635, 37511, -2131, 49076, 10800, 0),(4, 1383, 35211, 83671, 37511, -2131, 49076, 10800, 0),(4, 1384, 35206, 83709, 37512, -2131, 49076, 10800, 0),(4, 1385, 35211, 83740, 37512, -2130, 49076, 10800, 0),(4, 1386, 35211, 83777, 37513, -2130, 49076, 10800, 0),(4, 1387, 35206, 83812, 37514, -2130, 49076, 10800, 0),(4, 1388, 35211, 83849, 37514, -2130, 49076, 10800, 0),(4, 1389, 35211, 83886, 37514, -2130, 49076, 10800, 0),(4, 1390, 35210, 82762, 36730, -2127, 32472, 10800, 0),(4, 1391, 35205, 82762, 36704, -2127, 32472, 10800, 0),(4, 1392, 35210, 82765, 36661, -2126, 32472, 10800, 0),(4, 1393, 35209, 82784, 36730, -2131, 32472, 10800, 0),(4, 1394, 35209, 82784, 36703, -2131, 32472, 10800, 0),(4, 1395, 35209, 82784, 36676, -2130, 32472, 10800, 0),(4, 1396, 35208, 82809, 36729, -2129, 32472, 10800, 0),(4, 1397, 35208, 82809, 36702, -2129, 32472, 10800, 0),(4, 1398, 35208, 82808, 36675, -2128, 32472, 10800, 0),(4, 1399, 35207, 83050, 36768, -2129, 32472, 10800, 0),(4, 1400, 35207, 83050, 36742, -2129, 32472, 10800, 0),(4, 1401, 35207, 83050, 36714, -2128, 32472, 10800, 0),(4, 1402, 35211, 83880, 36876, -2132, 16000, 10800, 0),(4, 1403, 35211, 83844, 36877, -2132, 16000, 10800, 0),(4, 1404, 35206, 83807, 36878, -2131, 16000, 10800, 0),(4, 1405, 35211, 83771, 36878, -2131, 16000, 10800, 0),(4, 1406, 35211, 83735, 36878, -2131, 16000, 10800, 0),(4, 1407, 35206, 83697, 36879, -2131, 16000, 10800, 0),(4, 1408, 35211, 83666, 36879, -2130, 16000, 10800, 0),(4, 1409, 35211, 83629, 36880, -2130, 16000, 10800, 0),(4, 1410, 35206, 83594, 36880, -2130, 16000, 10800, 0),(4, 1411, 35211, 83557, 36881, -2130, 16000, 10800, 0),(4, 1412, 35211, 83520, 36882, -2130, 16000, 10800, 0),(4, 1413, 35211, 78822, 37198, -2168, 49152, 10800, 0),(4, 1414, 35211, 78759, 37185, -2168, 49152, 10800, 0),(4, 1415, 35211, 78697, 37187, -2168, 40960, 10800, 0),(4, 1416, 35211, 78657, 37233, -2168, 32768, 10800, 0),(4, 1417, 35211, 78656, 37278, -2168, 32768, 10800, 0),(4, 1418, 35211, 78657, 37310, -2168, 32768, 10800, 0),(4, 1419, 35211, 78659, 37348, -2168, 16384, 10800, 0),(4, 1420, 35211, 78820, 36711, -2168, 49152, 10800, 0),(4, 1421, 35211, 78755, 36710, -2168, 16384, 10800, 0),(4, 1422, 35211, 78689, 36718, -2168, 16384, 10800, 0),(4, 1423, 35211, 78660, 36672, -2168, 24576, 10800, 0),(4, 1424, 35211, 78656, 36620, -2168, 32768, 10800, 0),(4, 1425, 35211, 78653, 36580, -2168, 32768, 10800, 0),(4, 1426, 35211, 78655, 36537, -2168, 32768, 10800, 0),(4, 1427, 35206, 78783, 37187, -2168, 16384, 10800, 0),(4, 1428, 35206, 78734, 37184, -2168, 24576, 10800, 0),(4, 1429, 35206, 78785, 36711, -2168, 40960, 10800, 0),(4, 1430, 35206, 78728, 36709, -2168, 49152, 10800, 0),(4, 1431, 35207, 78728, 37265, -2168, 24576, 10800, 0),(4, 1432, 35207, 78741, 36649, -2168, 40960, 10800, 0),(4, 1433, 35211, 78822, 37198, -2168, 49152, 10800, 0),(4, 1434, 35211, 78759, 37185, -2168, 49152, 10800, 0),(4, 1435, 35211, 78697, 37187, -2168, 40960, 10800, 0),(4, 1436, 35211, 78657, 37233, -2168, 32768, 10800, 0),(4, 1437, 35211, 78820, 36711, -2168, 49152, 10800, 0),(4, 1438, 35211, 78755, 36710, -2168, 16384, 10800, 0),(4, 1439, 35211, 78689, 36718, -2168, 16384, 10800, 0),(4, 1440, 35211, 78660, 36672, -2168, 24576, 10800, 0),(4, 1441, 35206, 78783, 37187, -2168, 16384, 10800, 0),(4, 1442, 35206, 78734, 37184, -2168, 24576, 10800, 0),(4, 1443, 35206, 78785, 36711, -2168, 40960, 10800, 0),(4, 1444, 35206, 78728, 36709, -2168, 49152, 10800, 0),(4, 1445, 35207, 78728, 37265, -2168, 24576, 10800, 0),(4, 1446, 35207, 78741, 36649, -2168, 40960, 10800, 0),(4, 1447, 35198, 80578, 37128, -2294, 32768, 120, 0),(4, 1448, 35198, 80578, 37256, -2294, 32768, 120, 0),(4, 1449, 35198, 80578, 37319, -2294, 32768, 120, 0),(4, 1450, 35198, 80578, 37064, -2294, 32768, 120, 0),(4, 1451, 35198, 80578, 36933, -2294, 32768, 120, 0),(4, 1452, 35198, 80578, 36805, -2294, 32768, 120, 0),(4, 1453, 35198, 80578, 37447, -2294, 32768, 120, 0),(4, 1454, 35198, 80578, 37576, -2294, 32768, 120, 0),(4, 1455, 35193, 80578, 37000, -2294, 32768, 10800, 0),(4, 1456, 35193, 80578, 37383, -2294, 32768, 10800, 0),(4, 1457, 35193, 80578, 37640, -2294, 32768, 10800, 0),(4, 1458, 35193, 80578, 36741, -2294, 32768, 10800, 0),(4, 1459, 35194, 80578, 37192, -2294, 32768, 120, 0),(4, 1460, 35194, 80578, 37511, -2294, 32768, 120, 0),(4, 1461, 35194, 80578, 36869, -2294, 32768, 120, 0),(4, 1462, 35197, 80428, 36744, -2294, 32768, 60, 0),(4, 1463, 35197, 80428, 36808, -2294, 32768, 60, 0),(4, 1464, 35197, 80428, 37640, -2294, 32768, 60, 0),(4, 1465, 35197, 80428, 37576, -2294, 32768, 60, 0),(4, 1466, 35192, 80428, 37192, -2294, 32768, 120, 0),(4, 1467, 35197, 80428, 36872, -2294, 32768, 60, 0),(4, 1468, 35197, 80428, 36936, -2294, 32768, 60, 0),(4, 1469, 35197, 80428, 37000, -2294, 32768, 60, 0),(4, 1470, 35197, 80428, 37064, -2294, 32768, 60, 0),(4, 1471, 35192, 80428, 37128, -2294, 32768, 120, 0),(4, 1472, 35192, 80428, 37255, -2294, 32768, 120, 0),(4, 1473, 35197, 80428, 37319, -2294, 32768, 60, 0),(4, 1474, 35197, 80428, 37383, -2294, 32768, 60, 0),(4, 1475, 35197, 80428, 37447, -2294, 32768, 60, 0),(4, 1476, 35197, 80428, 37511, -2294, 32768, 60, 0),(4, 1477, 35211, 81331, 37424, -1985, 49152, 10800, 0),(4, 1478, 35211, 81209, 37423, -1985, 49152, 10800, 0),(4, 1479, 35211, 81148, 37478, -1985, 40960, 10800, 0),(4, 1480, 35211, 81129, 37503, -1985, 32768, 10800, 0),(4, 1481, 35211, 81128, 37542, -1985, 32768, 10800, 0),(4, 1482, 35211, 81128, 37578, -1985, 32768, 10800, 0),(4, 1483, 35211, 81288, 37424, -1985, 49152, 10800, 0),(4, 1484, 35206, 81173, 37452, -1985, 40960, 10800, 0),(4, 1485, 35206, 81249, 37424, -1984, 49152, 10800, 0),(4, 1486, 35207, 81194, 37526, -1986, 40960, 10800, 0),(4, 1487, 35211, 81337, 36971, -1987, 16384, 10800, 0),(4, 1488, 35211, 81297, 36971, -1985, 16384, 10800, 0),(4, 1489, 35211, 81212, 36971, -1986, 16384, 10800, 0),(4, 1490, 35211, 81147, 36913, -1985, 24576, 10800, 0),(4, 1491, 35211, 81127, 36886, -1984, 32768, 10800, 0),(4, 1492, 35211, 81128, 36846, -1985, 32768, 10800, 0),(4, 1493, 35211, 81127, 36807, -1985, 32768, 10800, 0),(4, 1494, 35206, 81253, 36971, -1983, 16384, 10800, 0),(4, 1495, 35206, 81183, 36949, -1986, 24576, 10800, 0),(4, 1496, 35207, 81201, 36869, -1983, 24576, 10800, 0),(4, 1497, 35211, 81458, 37084, -2294, 32768, 10800, 0),(4, 1498, 35211, 81458, 37115, -2294, 32768, 10800, 0),(4, 1499, 35211, 81458, 37146, -2294, 32768, 10800, 0),(4, 1500, 35211, 81458, 37178, -2294, 32768, 10800, 0),(4, 1501, 35211, 81458, 37209, -2294, 32768, 10800, 0),(4, 1502, 35211, 81458, 37241, -2294, 32768, 10800, 0),(4, 1503, 35211, 81458, 37272, -2294, 32768, 10800, 0),(4, 1504, 35206, 81458, 37304, -2294, 32768, 10800, 0),(4, 1505, 35206, 81438, 37084, -2294, 32768, 10800, 0),(4, 1506, 35207, 81438, 37115, -2294, 32768, 10800, 0),(4, 1507, 35211, 81438, 37146, -2294, 32768, 10800, 0),(4, 1508, 35211, 81438, 37178, -2294, 32768, 10800, 0),(4, 1509, 35211, 81438, 37209, -2294, 32768, 10800, 0),(4, 1510, 35211, 81438, 37241, -2294, 32768, 10800, 0),(4, 1511, 35211, 81438, 37272, -2294, 32768, 10800, 0),(4, 1512, 35211, 81438, 37304, -2294, 32768, 10800, 0),(4, 1513, 35211, 80345, 38756, -2170, 16384, 10800, 0),(4, 1514, 35211, 80396, 38756, -2170, 16384, 10800, 0),(4, 1515, 35211, 80446, 38756, -2170, 16384, 10800, 0),(4, 1516, 35211, 80496, 38756, -2170, 16384, 10800, 0),(4, 1517, 35207, 80546, 38756, -2170, 16384, 10800, 0),(4, 1518, 35211, 80596, 38756, -2170, 16384, 10800, 0),(4, 1519, 35211, 80646, 38756, -2170, 16384, 10800, 0),(4, 1520, 35211, 80696, 38756, -2170, 16384, 10800, 0),(4, 1521, 35211, 80746, 38756, -2170, 16384, 10800, 0),(4, 1522, 35206, 80796, 38756, -2170, 16384, 10800, 0),(4, 1523, 35211, 80846, 38756, -2170, 16384, 10800, 0),(4, 1524, 35211, 80896, 38756, -2170, 16384, 10800, 0),(4, 1525, 35211, 80345, 35354, -2170, 16384, 10800, 0),(4, 1526, 35211, 80396, 35354, -2170, 16384, 10800, 0),(4, 1527, 35211, 80446, 35354, -2170, 16384, 10800, 0),(4, 1528, 35211, 80496, 35354, -2170, 16384, 10800, 0),(4, 1529, 35207, 80546, 35354, -2170, 16384, 10800, 0),(4, 1530, 35211, 80596, 35354, -2170, 16384, 10800, 0),(4, 1531, 35211, 80646, 35354, -2170, 16384, 10800, 0),(4, 1532, 35211, 80696, 35354, -2170, 16384, 10800, 0),(4, 1533, 35211, 80746, 35354, -2170, 16384, 10800, 0),(4, 1534, 35206, 80796, 35354, -2170, 16384, 10800, 0),(4, 1535, 35211, 80846, 35354, -2170, 16384, 10800, 0),(4, 1536, 35211, 80896, 35354, -2170, 16384, 10800, 0),(5, 1537, 35250, 147290, 8527, -470, 16389, 10800, 0),(5, 1538, 35250, 147356, 8527, -470, 16389, 10800, 0),(5, 1539, 35250, 147423, 8527, -470, 16389, 10800, 0),(5, 1540, 35250, 147490, 8527, -470, 16389, 10800, 0),(5, 1541, 35250, 147556, 8527, -470, 16389, 10800, 0),(5, 1542, 35254, 147290, 8547, -470, 16389, 10800, 0),(5, 1543, 35254, 147323, 8547, -470, 16389, 10800, 0),(5, 1544, 35254, 147356, 8547, -470, 16389, 10800, 0),(5, 1545, 35254, 147390, 8547, -470, 16389, 10800, 0),(5, 1546, 35254, 147423, 8547, -470, 16389, 10800, 0),(5, 1547, 35254, 147456, 8547, -470, 16389, 10800, 0),(5, 1548, 35254, 147490, 8547, -470, 16389, 10800, 0),(5, 1549, 35254, 147523, 8547, -470, 16389, 10800, 0),(5, 1550, 35254, 147556, 8547, -470, 16389, 10800, 0),(5, 1551, 35254, 147590, 8547, -470, 16389, 10800, 0),(5, 1552, 35254, 147290, 8567, -470, 16389, 10800, 0),(5, 1553, 35252, 147323, 8567, -470, 16389, 10800, 0),(5, 1554, 35251, 147356, 8567, -470, 16389, 10800, 0),(5, 1555, 35252, 147390, 8567, -470, 16389, 10800, 0),(5, 1556, 35251, 147423, 8567, -470, 16389, 10800, 0),(5, 1557, 35252, 147456, 8567, -470, 16389, 10800, 0),(5, 1558, 35251, 147490, 8567, -470, 16389, 10800, 0),(5, 1559, 35252, 147523, 8567, -470, 16389, 10800, 0),(5, 1560, 35251, 147556, 8567, -470, 16389, 10800, 0),(5, 1561, 35252, 147590, 8567, -470, 16389, 10800, 0),(5, 1562, 35251, 147290, 8587, -470, 16389, 10800, 0),(5, 1563, 35253, 147323, 8587, -470, 16389, 10800, 0),(5, 1564, 35253, 147356, 8587, -470, 16389, 10800, 0),(5, 1565, 35253, 147390, 8587, -470, 16389, 10800, 0),(5, 1566, 35253, 147423, 8587, -470, 16389, 10800, 0),(5, 1567, 35248, 147456, 8587, -470, 16389, 10800, 0),(5, 1568, 35253, 147490, 8587, -470, 16389, 10800, 0),(5, 1569, 35253, 147523, 8587, -470, 16389, 10800, 0),(5, 1570, 35253, 147556, 8587, -470, 16389, 10800, 0),(5, 1571, 35253, 147590, 8587, -470, 16389, 10800, 0),(5, 1572, 35254, 148185, 8527, -212, 32768, 10800, 0),(5, 1573, 35254, 148185, 8567, -212, 32768, 10800, 0),(5, 1574, 35254, 148185, 8608, -212, 32768, 10800, 0),(5, 1575, 35254, 148185, 8649, -212, 32768, 10800, 0),(5, 1576, 35254, 148185, 8689, -212, 32768, 10800, 0),(5, 1577, 35254, 148185, 8730, -212, 32768, 10800, 0),(5, 1578, 35254, 148185, 8771, -212, 32768, 10800, 0),(5, 1579, 35254, 148185, 8811, -212, 32768, 10800, 0),(5, 1580, 35254, 148185, 8852, -212, 32768, 10800, 0),(5, 1581, 35254, 148185, 8893, -212, 32768, 10800, 0),(5, 1582, 35254, 148185, 8933, -212, 32768, 10800, 0),(5, 1583, 35254, 148185, 8974, -212, 32768, 10800, 0),(5, 1584, 35254, 148185, 9015, -212, 32768, 10800, 0),(5, 1585, 35254, 148185, 9055, -212, 32768, 10800, 0),(5, 1586, 35254, 148185, 9096, -212, 32768, 10800, 0),(5, 1587, 35254, 148185, 9137, -212, 32768, 10800, 0),(5, 1588, 35254, 148185, 9177, -212, 32768, 10800, 0),(5, 1589, 35254, 148185, 9218, -212, 32768, 10800, 0),(5, 1590, 35254, 148185, 9259, -212, 32768, 10800, 0),(5, 1591, 35254, 148185, 9300, -212, 32768, 10800, 0),(5, 1592, 35249, 148231, 8724, -212, 32768, 10800, 0),(5, 1593, 35249, 148231, 8839, -212, 32768, 10800, 0),(5, 1594, 35249, 148231, 8954, -212, 32768, 10800, 0),(5, 1595, 35249, 148231, 9069, -212, 32768, 10800, 0),(5, 1596, 35249, 148231, 8954, -212, 32768, 10800, 0),(5, 1597, 35249, 148231, 9069, -212, 32768, 10800, 0),(5, 1598, 35250, 148261, 8621, -212, 32768, 10800, 0),(5, 1599, 35250, 148261, 8757, -212, 32768, 10800, 0),(5, 1600, 35250, 148261, 8894, -212, 32768, 10800, 0),(5, 1601, 35250, 148261, 9030, -212, 32768, 10800, 0),(5, 1602, 35250, 148261, 9167, -212, 32768, 10800, 0),(5, 1603, 35254, 147984, 8486, -212, 16389, 10800, 0),(5, 1604, 35254, 147955, 8486, -212, 16389, 10800, 0),(5, 1605, 35254, 147927, 8486, -212, 16389, 10800, 0),(5, 1606, 35254, 147896, 8485, -212, 16389, 10800, 0),(5, 1607, 35254, 147865, 8485, -212, 16389, 10800, 0),(5, 1608, 35254, 147835, 8485, -212, 16389, 10800, 0),(5, 1609, 35254, 147983, 8467, -212, 16389, 10800, 0),(5, 1610, 35249, 147954, 8467, -212, 16389, 10800, 0),(5, 1611, 35250, 147925, 8467, -212, 16389, 10800, 0),(5, 1612, 35249, 147895, 8466, -212, 16389, 10800, 0),(5, 1613, 35250, 147864, 8466, -212, 16389, 10800, 0),(5, 1614, 35249, 147833, 8466, -212, 16389, 10800, 0),(5, 1615, 35254, 147064, 8489, -212, 16389, 10800, 0),(5, 1616, 35254, 147035, 8489, -212, 16389, 10800, 0),(5, 1617, 35254, 147007, 8489, -212, 16389, 10800, 0),(5, 1618, 35254, 146976, 8488, -212, 16389, 10800, 0),(5, 1619, 35254, 146945, 8488, -212, 16389, 10800, 0),(5, 1620, 35254, 146915, 8488, -212, 16389, 10800, 0),(5, 1621, 35254, 147065, 8466, -212, 16389, 10800, 0),(5, 1622, 35249, 147036, 8466, -212, 16389, 10800, 0),(5, 1623, 35250, 147007, 8466, -212, 16389, 10800, 0),(5, 1624, 35249, 146977, 8465, -212, 16389, 10800, 0),(5, 1625, 35250, 146946, 8465, -212, 16389, 10800, 0),(5, 1626, 35249, 146915, 8465, -212, 16389, 10800, 0),(5, 1627, 35252, 149105, 6657, -470, 16389, 10800, 0),(5, 1628, 35252, 149142, 6657, -470, 16389, 10800, 0),(5, 1629, 35252, 149180, 6657, -470, 16389, 10800, 0),(5, 1630, 35252, 149217, 6657, -470, 16389, 10800, 0),(5, 1631, 35252, 149255, 6657, -470, 16389, 10800, 0),(5, 1632, 35252, 149292, 6657, -470, 16389, 10800, 0),(5, 1633, 35252, 149330, 6657, -470, 16389, 10800, 0),(5, 1634, 35254, 149105, 6637, -470, 16389, 10800, 0),(5, 1635, 35254, 149142, 6637, -470, 16389, 10800, 0),(5, 1636, 35254, 149180, 6637, -470, 16389, 10800, 0),(5, 1637, 35254, 149217, 6637, -470, 16389, 10800, 0),(5, 1638, 35254, 149255, 6637, -470, 16389, 10800, 0),(5, 1639, 35254, 149292, 6637, -470, 16389, 10800, 0),(5, 1640, 35254, 149330, 6637, -470, 16389, 10800, 0),(5, 1641, 35254, 149105, 6617, -470, 16389, 10800, 0),(5, 1642, 35249, 149142, 6617, -470, 16389, 10800, 0),(5, 1643, 35254, 149180, 6617, -470, 16389, 10800, 0),(5, 1644, 35249, 149217, 6617, -470, 16389, 10800, 0),(5, 1645, 35254, 149255, 6617, -470, 16389, 10800, 0),(5, 1646, 35249, 149292, 6617, -470, 16389, 10800, 0),(5, 1647, 35254, 149330, 6617, -470, 16389, 10800, 0),(5, 1648, 35252, 145569, 6657, -470, 16389, 10800, 0),(5, 1649, 35252, 145606, 6657, -470, 16389, 10800, 0),(5, 1650, 35252, 145644, 6657, -470, 16389, 10800, 0),(5, 1651, 35252, 145682, 6657, -470, 16389, 10800, 0),(5, 1652, 35252, 145719, 6657, -470, 16389, 10800, 0),(5, 1653, 35252, 145757, 6657, -470, 16389, 10800, 0),(5, 1654, 35252, 145795, 6657, -470, 16389, 10800, 0),(5, 1655, 35254, 145569, 6637, -470, 16389, 10800, 0),(5, 1656, 35254, 145606, 6637, -470, 16389, 10800, 0),(5, 1657, 35254, 145644, 6637, -470, 16389, 10800, 0),(5, 1658, 35254, 145682, 6637, -470, 16389, 10800, 0),(5, 1659, 35254, 145719, 6637, -470, 16389, 10800, 0),(5, 1660, 35254, 145757, 6637, -470, 16389, 10800, 0),(5, 1661, 35254, 145795, 6637, -470, 16389, 10800, 0),(5, 1662, 35254, 145569, 6617, -470, 16389, 10800, 0),(5, 1663, 35249, 145606, 6617, -470, 16389, 10800, 0),(5, 1664, 35254, 145644, 6617, -470, 16389, 10800, 0),(5, 1665, 35249, 145682, 6617, -470, 16389, 10800, 0),(5, 1666, 35254, 145719, 6617, -470, 16389, 10800, 0),(5, 1667, 35249, 145757, 6617, -470, 16389, 10800, 0),(5, 1668, 35254, 145795, 6617, -470, 16389, 10800, 0),(5, 1669, 35239, 145762, 7588, -470, 16389, 10800, 0),(5, 1670, 35239, 146067, 7588, -470, 16389, 10800, 0),(5, 1671, 35239, 146372, 7588, -470, 16389, 10800, 0),(5, 1672, 35239, 146678, 7588, -470, 16389, 10800, 0),(5, 1673, 35239, 146983, 7588, -470, 16389, 10800, 0),(5, 1674, 35251, 147288, 7588, -470, 16389, 10800, 0),(5, 1675, 35239, 147594, 7588, -470, 16389, 10800, 0),(5, 1676, 35239, 147899, 7588, -470, 16389, 10800, 0),(5, 1677, 35251, 148204, 7588, -470, 16389, 10800, 0),(5, 1678, 35239, 148510, 7588, -470, 16389, 10800, 0),(5, 1679, 35239, 148815, 7588, -470, 16389, 10800, 0),(5, 1680, 35239, 149121, 7588, -470, 16389, 10800, 0),(5, 1681, 35250, 149083, 4965, -20, 0, 10800, 0),(5, 1682, 35254, 149082, 4926, -20, 0, 10800, 0),(5, 1683, 35254, 149081, 4886, -20, 0, 10800, 0),(5, 1684, 35254, 149081, 4843, -20, 0, 10800, 0),(5, 1685, 35254, 149057, 4810, -20, 0, 10800, 0),(5, 1686, 35254, 149034, 4790, -20, 0, 10800, 0),(5, 1687, 35254, 149008, 4773, -20, 0, 10800, 0),(5, 1688, 35254, 148980, 4766, -20, 0, 10800, 0),(5, 1689, 35249, 148951, 4766, -20, 0, 10800, 0),(5, 1690, 35254, 148921, 4766, -20, 0, 10800, 0),(5, 1691, 35250, 149006, 4835, -20, 0, 10800, 0),(5, 1692, 35250, 149056, 4219, -20, 0, 10800, 0),(5, 1693, 35254, 149080, 4252, -20, 0, 10800, 0),(5, 1694, 35254, 149080, 4295, -20, 0, 10800, 0),(5, 1695, 35254, 149081, 4335, -20, 0, 10800, 0),(5, 1696, 35254, 149082, 4374, -20, 0, 10800, 0),(5, 1697, 35254, 149038, 4416, -20, 0, 10800, 0),(5, 1698, 35254, 149011, 4439, -20, 0, 10800, 0),(5, 1699, 35254, 148984, 4449, -20, 0, 10800, 0),(5, 1700, 35249, 148955, 4450, -20, 0, 10800, 0),(5, 1701, 35254, 148922, 4451, -20, 0, 10800, 0),(5, 1702, 35250, 149006, 4362, -20, 0, 10800, 0),(5, 1703, 35250, 145831, 4252, -20, 32768, 10800, 0),(5, 1704, 35254, 145909, 4440, -20, 32768, 10800, 0),(5, 1705, 35254, 145883, 4421, -20, 32768, 10800, 0),(5, 1706, 35254, 145833, 4374, -20, 32768, 10800, 0),(5, 1707, 35254, 145833, 4335, -20, 32768, 10800, 0),(5, 1708, 35254, 145832, 4295, -20, 32768, 10800, 0),(5, 1709, 35254, 145852, 4404, -20, 32768, 10800, 0),(5, 1710, 35254, 145936, 4450, -20, 32768, 10800, 0),(5, 1711, 35249, 145966, 4450, -20, 32768, 10800, 0),(5, 1712, 35254, 145995, 4449, -20, 32768, 10800, 0),(5, 1713, 35250, 145926, 4377, -20, 32768, 10800, 0),(5, 1714, 35250, 145836, 4968, -20, 32768, 10800, 0),(5, 1715, 35254, 145836, 4929, -20, 32768, 10800, 0),(5, 1716, 35254, 145835, 4889, -20, 32768, 10800, 0),(5, 1717, 35254, 145834, 4846, -20, 32768, 10800, 0),(5, 1718, 35254, 145853, 4815, -20, 32768, 10800, 0),(5, 1719, 35254, 145874, 4797, -20, 32768, 10800, 0),(5, 1720, 35254, 145901, 4774, -20, 32768, 10800, 0),(5, 1721, 35254, 145989, 4766, -20, 32768, 10800, 0),(5, 1722, 35249, 145958, 4767, -20, 32768, 10800, 0),(5, 1723, 35254, 145928, 4767, -20, 32768, 10800, 0),(5, 1724, 35250, 145921, 4829, -20, 32768, 10800, 0),(5, 1725, 35254, 147146, 5459, -340, 16389, 10800, 0),(5, 1726, 35254, 147196, 5459, -340, 16389, 10800, 0),(5, 1727, 35254, 147247, 5459, -340, 16389, 10800, 0),(5, 1728, 35254, 147298, 5459, -340, 16389, 10800, 0),(5, 1729, 35254, 147349, 5459, -340, 16389, 10800, 0),(5, 1730, 35254, 147400, 5459, -340, 16389, 10800, 0),(5, 1731, 35254, 147451, 5459, -340, 16389, 10800, 0),(5, 1732, 35254, 147501, 5459, -340, 16389, 10800, 0),(5, 1733, 35254, 147552, 5459, -340, 16389, 10800, 0),(5, 1734, 35254, 147603, 5459, -340, 16389, 10800, 0),(5, 1735, 35254, 147654, 5459, -340, 16389, 10800, 0),(5, 1736, 35254, 147705, 5459, -340, 16389, 10800, 0),(5, 1737, 35254, 147756, 5459, -340, 16389, 10800, 0),(5, 1738, 35250, 147554, 5354, -340, 16389, 10800, 0),(5, 1739, 35250, 147352, 5354, -340, 32768, 10800, 0),(5, 1740, 35249, 147560, 5754, -340, 32768, 10800, 0),(5, 1741, 35249, 147356, 5754, -340, 32768, 10800, 0),(5, 1742, 35250, 147457, 5754, -340, 32768, 10800, 0),(5, 1743, 35252, 147556, 5857, -400, 16389, 10800, 0),(5, 1744, 35252, 147522, 5857, -400, 16389, 10800, 0),(5, 1745, 35252, 147488, 5857, -400, 16389, 10800, 0),(5, 1746, 35252, 147455, 5857, -400, 16389, 10800, 0),(5, 1747, 35252, 147421, 5857, -400, 16389, 10800, 0),(5, 1748, 35252, 147387, 5857, -400, 16389, 10800, 0),(5, 1749, 35252, 147353, 5857, -400, 16389, 10800, 0),(5, 1750, 35252, 147320, 5857, -400, 16389, 10800, 0),(5, 1751, 35252, 147455, 3221, -400, 16389, 10800, 0),(5, 1752, 35252, 147334, 5827, -400, 16389, 10800, 0),(5, 1753, 35252, 147367, 5827, -400, 16389, 10800, 0),(5, 1754, 35252, 147401, 5827, -400, 16389, 10800, 0),(5, 1755, 35252, 147435, 5827, -400, 16389, 10800, 0),(5, 1756, 35252, 147468, 5827, -400, 16389, 10800, 0),(5, 1757, 35252, 147502, 5827, -400, 16389, 10800, 0),(5, 1758, 35252, 147536, 5827, -400, 16389, 10800, 0),(5, 1759, 35252, 147570, 5827, -400, 16389, 10800, 0),(5, 1760, 35252, 147590, 5857, -400, 16389, 10800, 0),(5, 1761, 35252, 148161, 1600, -150, 16389, 10800, 0),(5, 1762, 35252, 148199, 1600, -150, 16389, 10800, 0),(5, 1763, 35252, 148161, 1620, -150, 16389, 10800, 0),(5, 1764, 35252, 148199, 1620, -150, 16389, 10800, 0),(5, 1765, 35252, 148161, 1640, -150, 16389, 10800, 0),(5, 1766, 35252, 148199, 1640, -150, 16389, 10800, 0),(5, 1767, 35252, 148161, 1660, -150, 16389, 10800, 0),(5, 1768, 35252, 148199, 1660, -150, 16389, 10800, 0),(5, 1769, 35252, 148161, 1680, -150, 16389, 10800, 0),(5, 1770, 35252, 148199, 1680, -150, 16389, 10800, 0),(5, 1771, 35254, 148161, 1700, -150, 16389, 10800, 0),(5, 1772, 35254, 148199, 1700, -150, 16389, 10800, 0),(5, 1773, 35254, 148161, 1720, -150, 16389, 10800, 0),(5, 1774, 35254, 148199, 1720, -150, 16389, 10800, 0),(5, 1775, 35252, 146750, 1600, -150, 16389, 10800, 0),(5, 1776, 35252, 146707, 1600, -150, 16389, 10800, 0),(5, 1777, 35252, 146750, 1620, -150, 16389, 10800, 0),(5, 1778, 35252, 146707, 1620, -150, 16389, 10800, 0),(5, 1779, 35252, 146750, 1640, -150, 16389, 10800, 0),(5, 1780, 35252, 146707, 1640, -150, 16389, 10800, 0),(5, 1781, 35252, 146750, 1660, -150, 16389, 10800, 0),(5, 1782, 35252, 146707, 1660, -150, 16389, 10800, 0),(5, 1783, 35252, 146750, 1680, -150, 16389, 10800, 0),(5, 1784, 35252, 146707, 1680, -150, 16389, 10800, 0),(5, 1785, 35254, 146750, 1700, -150, 16389, 10800, 0),(5, 1786, 35254, 146707, 1700, -150, 16389, 10800, 0),(5, 1787, 35254, 146750, 1720, -150, 16389, 10800, 0),(5, 1788, 35254, 146707, 1720, -150, 16389, 10800, 0),(5, 1789, 35254, 146818, 1300, -150, 16389, 10800, 0),(5, 1790, 35254, 146861, 1300, -150, 16389, 10800, 0),(5, 1791, 35254, 146905, 1300, -150, 16389, 10800, 0),(5, 1792, 35254, 146949, 1300, -150, 16389, 10800, 0),(5, 1793, 35254, 146993, 1300, -150, 16389, 10800, 0),(5, 1794, 35254, 147037, 1300, -150, 16389, 10800, 0),(5, 1795, 35254, 147351, 1300, -150, 16389, 10800, 0),(5, 1796, 35254, 147393, 1300, -150, 16389, 10800, 0),(5, 1797, 35254, 147435, 1300, -150, 16389, 10800, 0),(5, 1798, 35254, 147477, 1300, -150, 16389, 10800, 0),(5, 1799, 35254, 147519, 1300, -150, 16389, 10800, 0),(5, 1800, 35254, 147561, 1300, -150, 16389, 10800, 0),(5, 1801, 35249, 147461, 1245, -150, 16391, 10800, 0),(5, 1802, 35249, 146933, 1245, -150, 16392, 10800, 0),(5, 1803, 35250, 147441, 1245, -150, 16391, 10800, 0),(5, 1804, 35250, 146953, 1245, -150, 16392, 10800, 0),(5, 1805, 35234, 147468, 1671, -338, 16389, 200, 0),(5, 1806, 35250, 147428, 1671, -338, 16389, 10800, 0),(5, 1807, 35251, 147508, 1671, -338, 16389, 10800, 0),(5, 1808, 35252, 147482, 1933, -468, 16389, 10800, 0),(5, 1809, 35252, 147449, 1933, -468, 16389, 10800, 0),(5, 1810, 35254, 147740, 2020, -450, 16389, 10800, 0),(5, 1811, 35254, 147690, 2020, -450, 16389, 10800, 0),(5, 1812, 35254, 147641, 2020, -450, 16389, 10800, 0),(5, 1813, 35254, 147592, 2020, -450, 16389, 10800, 0),(5, 1814, 35254, 147542, 2020, -450, 16389, 10800, 0),(5, 1815, 35254, 147493, 2020, -450, 16389, 10800, 0),(5, 1816, 35254, 147444, 2020, -450, 16389, 10800, 0),(5, 1817, 35254, 147395, 2020, -450, 16389, 10800, 0),(5, 1818, 35254, 147345, 2020, -450, 16389, 10800, 0),(5, 1819, 35254, 147296, 2020, -450, 16389, 10800, 0),(5, 1820, 35254, 147247, 2020, -450, 16389, 10800, 0),(5, 1821, 35254, 147198, 2020, -450, 16389, 10800, 0),(5, 1822, 35254, 147740, 2040, -450, 16389, 10800, 0),(5, 1823, 35254, 147690, 2040, -450, 16389, 10800, 0),(5, 1824, 35254, 147641, 2040, -450, 16389, 10800, 0),(5, 1825, 35254, 147592, 2040, -450, 16389, 10800, 0),(5, 1826, 35254, 147542, 2040, -450, 16389, 10800, 0),(5, 1827, 35254, 147493, 2040, -450, 16389, 10800, 0),(5, 1828, 35254, 147444, 2040, -450, 16389, 10800, 0),(5, 1829, 35254, 147395, 2040, -450, 16389, 10800, 0),(5, 1830, 35254, 147345, 2040, -450, 16389, 10800, 0),(5, 1831, 35254, 147296, 2040, -450, 16389, 10800, 0),(5, 1832, 35254, 147247, 2040, -450, 16389, 10800, 0),(5, 1833, 35254, 147198, 2040, -450, 16389, 10800, 0),(5, 1834, 35240, 147740, 2060, -450, 16389, 200, 0),(5, 1835, 35240, 147690, 2060, -450, 16389, 200, 0),(5, 1836, 35240, 147641, 2060, -450, 16389, 200, 0),(5, 1837, 35240, 147592, 2060, -450, 16389, 200, 0),(5, 1838, 35240, 147542, 2060, -450, 16389, 200, 0),(5, 1839, 35240, 147493, 2060, -450, 16389, 200, 0),(5, 1840, 35240, 147444, 2060, -450, 16389, 200, 0),(5, 1841, 35240, 147395, 2060, -450, 16389, 200, 0),(5, 1842, 35240, 147345, 2060, -450, 16389, 200, 0),(5, 1843, 35240, 147296, 2060, -450, 16389, 200, 0),(5, 1844, 35240, 147247, 2060, -450, 16389, 200, 0),(5, 1845, 35240, 147198, 2060, -450, 16389, 200, 0),(5, 1846, 35240, 147740, 2080, -450, 16389, 200, 0),(5, 1847, 35240, 147690, 2080, -450, 16389, 200, 0),(5, 1848, 35240, 147641, 2080, -450, 16389, 200, 0),(5, 1849, 35240, 147592, 2080, -450, 16389, 200, 0),(5, 1850, 35240, 147542, 2080, -450, 16389, 200, 0),(5, 1851, 35240, 147493, 2080, -450, 16389, 200, 0),(5, 1852, 35240, 147444, 2080, -450, 16389, 200, 0),(5, 1853, 35240, 147395, 2080, -450, 16389, 200, 0),(5, 1854, 35240, 147345, 2080, -450, 16389, 200, 0),(5, 1855, 35240, 147296, 2080, -450, 16389, 200, 0),(5, 1856, 35240, 147247, 2080, -450, 16389, 200, 0),(5, 1857, 35240, 147198, 2080, -450, 16389, 200, 0),(5, 1858, 35250, 148404, 5289, -21, 0, 10800, 0),(5, 1859, 35249, 148404, 5309, -21, 0, 10800, 0),(5, 1860, 35250, 148404, 5328, -21, 0, 10800, 0),(5, 1861, 35249, 148404, 5348, -21, 0, 10800, 0),(5, 1862, 35250, 148404, 5368, -21, 0, 10800, 0),(5, 1863, 35254, 148424, 5289, -21, 0, 10800, 0),(5, 1864, 35254, 148424, 5309, -21, 0, 10800, 0),(5, 1865, 35254, 148424, 5328, -21, 0, 10800, 0),(5, 1866, 35254, 148424, 5348, -21, 0, 10800, 0),(5, 1867, 35254, 148424, 5368, -21, 0, 10800, 0),(5, 1868, 35254, 148444, 5289, -21, 0, 10800, 0),(5, 1869, 35254, 148444, 5309, -21, 0, 10800, 0),(5, 1870, 35254, 148444, 5328, -21, 0, 10800, 0),(5, 1871, 35254, 148444, 5348, -21, 0, 10800, 0),(5, 1872, 35254, 148444, 5368, -21, 0, 10800, 0),(5, 1873, 35240, 148464, 5289, -21, 0, 200, 0),(5, 1874, 35240, 148464, 5309, -21, 0, 200, 0),(5, 1875, 35240, 148464, 5328, -21, 0, 200, 0),(5, 1876, 35240, 148464, 5348, -21, 0, 200, 0),(5, 1877, 35240, 148464, 5368, -21, 0, 200, 0),(5, 1878, 35250, 146520, 5289, -21, 32768, 10800, 0),(5, 1879, 35249, 146520, 5308, -21, 32768, 10800, 0),(5, 1880, 35250, 146520, 5328, -21, 32768, 10800, 0),(5, 1881, 35249, 146520, 5348, -21, 32768, 10800, 0),(5, 1882, 35250, 146520, 5368, -21, 32768, 10800, 0),(5, 1883, 35254, 146500, 5289, -21, 32768, 10800, 0),(5, 1884, 35254, 146500, 5308, -21, 32768, 10800, 0),(5, 1885, 35254, 146500, 5328, -21, 32768, 10800, 0),(5, 1886, 35254, 146500, 5348, -21, 32768, 10800, 0),(5, 1887, 35254, 146500, 5368, -21, 32768, 10800, 0),(5, 1888, 35254, 146480, 5289, -21, 32768, 10800, 0),(5, 1889, 35254, 146480, 5308, -21, 32768, 10800, 0),(5, 1890, 35254, 146480, 5328, -21, 32768, 10800, 0),(5, 1891, 35254, 146480, 5348, -21, 32768, 10800, 0),(5, 1892, 35254, 146480, 5368, -21, 32768, 10800, 0),(5, 1893, 35240, 146460, 5289, -21, 32768, 200, 0),(5, 1894, 35240, 146460, 5308, -21, 32768, 200, 0),(5, 1895, 35240, 146460, 5328, -21, 32768, 200, 0),(5, 1896, 35240, 146460, 5348, -21, 32768, 200, 0),(5, 1897, 35240, 146460, 5368, -21, 32768, 200, 0),(5, 1898, 35254, 149936, 5168, -80, 8192, 10800, 0),(5, 1899, 35254, 149893, 5230, -80, 8192, 10800, 0),(5, 1900, 35254, 149851, 5293, -80, 8192, 10800, 0),(5, 1901, 35254, 149809, 5355, -80, 8192, 10800, 0),(5, 1902, 35254, 149767, 5418, -80, 8192, 10800, 0),(5, 1903, 35254, 149725, 5480, -80, 8192, 10800, 0),(5, 1904, 35254, 149682, 5543, -80, 8192, 10800, 0),(5, 1905, 35254, 149640, 5605, -80, 8192, 10800, 0),(5, 1906, 35254, 149598, 5668, -80, 8192, 10800, 0),(5, 1907, 35254, 149556, 5730, -80, 8192, 10800, 0),(5, 1908, 35254, 149514, 5793, -80, 8192, 10800, 0),(5, 1909, 35254, 149472, 5856, -80, 8192, 10800, 0),(5, 1910, 35254, 144976, 5136, -80, 8192, 10800, 0),(5, 1911, 35254, 145015, 5197, -80, 8192, 10800, 0),(5, 1912, 35254, 145054, 5258, -80, 8192, 10800, 0),(5, 1913, 35254, 145093, 5319, -80, 8192, 10800, 0),(5, 1914, 35254, 145133, 5380, -80, 8192, 10800, 0),(5, 1915, 35254, 145172, 5441, -80, 8192, 10800, 0),(5, 1916, 35254, 145211, 5502, -80, 8192, 10800, 0),(5, 1917, 35254, 145250, 5563, -80, 8192, 10800, 0),(5, 1918, 35254, 145290, 5624, -80, 8192, 10800, 0),(5, 1919, 35254, 145329, 5685, -80, 8192, 10800, 0),(5, 1920, 35254, 145368, 5746, -80, 8192, 10800, 0),(5, 1921, 35254, 145408, 5808, -80, 8192, 10800, 0),(5, 1922, 35254, 148185, 8527, -212, 32768, 10800, 0),(5, 1923, 35254, 148185, 8567, -212, 32768, 10800, 0),(5, 1924, 35254, 148185, 8649, -212, 32768, 10800, 0),(5, 1925, 35254, 148185, 8689, -212, 32768, 10800, 0),(5, 1926, 35254, 148185, 8771, -212, 32768, 10800, 0),(5, 1927, 35254, 148185, 8811, -212, 32768, 10800, 0),(5, 1928, 35254, 148185, 8893, -212, 32768, 10800, 0),(5, 1929, 35254, 148185, 8933, -212, 32768, 10800, 0),(5, 1930, 35254, 148185, 9015, -212, 32768, 10800, 0),(5, 1931, 35254, 148185, 9055, -212, 32768, 10800, 0),(5, 1932, 35254, 148185, 9137, -212, 32768, 10800, 0),(5, 1933, 35254, 148185, 9177, -212, 32768, 10800, 0),(5, 1934, 35254, 148185, 9259, -212, 32768, 10800, 0),(5, 1935, 35254, 148185, 9300, -212, 32768, 10800, 0),(5, 1936, 35249, 148231, 8724, -212, 32768, 10800, 0),(5, 1937, 35249, 148231, 8839, -212, 32768, 10800, 0),(5, 1938, 35249, 148231, 9069, -212, 32768, 10800, 0),(5, 1939, 35249, 148231, 8954, -212, 32768, 10800, 0),(5, 1940, 35250, 148261, 8621, -212, 32768, 10800, 0),(5, 1941, 35250, 148261, 8894, -212, 32768, 10800, 0),(5, 1942, 35250, 148261, 9167, -212, 32768, 10800, 0),(6, 1943, 35301, 116371, 245422, -1049, 48376, 10800, 0),(6, 1944, 35301, 116343, 245422, -1049, 48376, 10800, 0),(6, 1945, 35301, 116315, 245422, -1049, 48376, 10800, 0),(6, 1946, 35301, 116287, 245422, -1049, 48376, 10800, 0),(6, 1947, 35301, 116259, 245422, -1049, 48376, 10800, 0),(6, 1948, 35301, 116231, 245422, -1049, 48376, 10800, 0),(6, 1949, 35301, 116203, 245422, -1049, 48376, 10800, 0),(6, 1950, 35301, 116175, 245422, -1049, 48376, 10800, 0),(6, 1951, 35301, 116147, 245422, -1049, 48376, 10800, 0),(6, 1952, 35299, 116371, 245402, -1049, 48376, 10800, 0),(6, 1953, 35298, 116343, 245402, -1049, 48376, 10800, 0),(6, 1954, 35299, 116315, 245402, -1049, 48376, 10800, 0),(6, 1955, 35298, 116287, 245402, -1049, 48376, 10800, 0),(6, 1956, 35299, 116259, 245402, -1049, 48376, 10800, 0),(6, 1957, 35298, 116231, 245402, -1049, 48376, 10800, 0),(6, 1958, 35299, 116203, 245402, -1049, 48376, 10800, 0),(6, 1959, 35298, 116175, 245402, -1049, 48376, 10800, 0),(6, 1960, 35299, 116147, 245402, -1049, 48376, 10800, 0),(6, 1961, 35300, 116371, 245382, -1049, 48376, 10800, 0),(6, 1962, 35300, 116343, 245382, -1049, 48376, 10800, 0),(6, 1963, 35300, 116315, 245382, -1049, 48376, 10800, 0),(6, 1964, 35300, 116287, 245382, -1049, 48376, 10800, 0),(6, 1965, 35295, 116259, 245382, -1049, 48376, 10800, 0),(6, 1966, 35300, 116231, 245382, -1049, 48376, 10800, 0),(6, 1967, 35300, 116203, 245382, -1049, 48376, 10800, 0),(6, 1968, 35300, 116175, 245382, -1049, 48376, 10800, 0),(6, 1969, 35300, 116147, 245382, -1049, 48376, 10800, 0),(6, 1970, 35300, 116514, 245800, -1039, 32080, 10800, 0),(6, 1971, 35300, 116513, 245831, -1038, 32080, 10800, 0),(6, 1972, 35295, 116513, 245861, -1038, 32080, 10800, 0),(6, 1973, 35300, 116513, 245891, -1037, 32080, 10800, 0),(6, 1974, 35300, 116514, 245922, -1038, 32080, 10800, 0),(6, 1975, 35300, 116512, 245951, -1037, 32080, 10800, 0),(6, 1976, 35295, 116512, 245981, -1037, 32080, 10800, 0),(6, 1977, 35300, 116512, 246011, -1036, 32080, 10800, 0),(6, 1978, 35300, 116513, 246042, -1037, 32080, 10800, 0),(6, 1979, 35299, 116539, 245818, -1057, 32080, 10800, 0),(6, 1980, 35299, 116539, 245848, -1057, 32080, 10800, 0),(6, 1981, 35298, 116539, 245879, -1056, 32080, 10800, 0),(6, 1982, 35299, 116540, 245909, -1057, 32080, 10800, 0),(6, 1983, 35299, 116538, 245939, -1056, 32080, 10800, 0),(6, 1984, 35298, 116538, 245969, -1056, 32080, 10800, 0),(6, 1985, 35299, 116537, 245998, -1055, 32080, 10800, 0),(6, 1986, 35299, 116538, 246030, -1056, 32080, 10800, 0),(6, 1987, 35301, 116560, 245802, -1061, 32080, 10800, 0),(6, 1988, 35301, 116559, 245832, -1061, 32080, 10800, 0),(6, 1989, 35301, 116559, 245862, -1060, 32080, 10800, 0),(6, 1990, 35301, 116558, 245893, -1060, 32080, 10800, 0),(6, 1991, 35301, 116560, 245923, -1060, 32080, 10800, 0),(6, 1992, 35301, 116558, 245953, -1059, 32080, 10800, 0),(6, 1993, 35301, 116558, 245983, -1059, 32080, 10800, 0),(6, 1994, 35301, 116557, 246012, -1058, 32080, 10800, 0),(6, 1995, 35301, 116558, 246044, -1059, 32080, 10800, 0),(6, 1996, 35301, 116706, 245820, -1062, 32080, 10800, 0),(6, 1997, 35301, 116706, 245850, -1061, 32080, 10800, 0),(6, 1998, 35301, 116706, 245881, -1061, 32080, 10800, 0),(6, 1999, 35301, 116705, 245911, -1060, 32080, 10800, 0),(6, 2000, 35301, 116706, 245941, -1060, 32080, 10800, 0),(6, 2001, 35301, 116704, 245971, -1060, 32080, 10800, 0),(6, 2002, 35301, 116703, 246001, -1059, 32080, 10800, 0),(6, 2003, 35301, 116703, 246031, -1059, 32080, 10800, 0),(6, 2004, 35297, 116807, 246151, -1053, 48668, 10800, 0),(6, 2005, 35297, 116777, 246152, -1054, 48668, 10800, 0),(6, 2006, 35287, 116569, 246033, -1037, 32080, 60, 0),(6, 2007, 35287, 116570, 245969, -1037, 32080, 60, 0),(6, 2008, 35287, 116570, 245880, -1037, 32080, 60, 0),(6, 2009, 35287, 116567, 245820, -1037, 32080, 60, 0),(6, 2010, 35301, 116321, 246173, -788, 48668, 10800, 0),(6, 2011, 35301, 116291, 246174, -789, 48668, 10800, 0),(6, 2012, 35296, 116261, 246171, -788, 48668, 10800, 0),(6, 2013, 35301, 116231, 246170, -788, 48668, 10800, 0),(6, 2014, 35301, 116202, 246169, -787, 48668, 10800, 0),(6, 2015, 35301, 116551, 246107, -786, 48668, 10800, 0),(6, 2016, 35301, 116521, 246108, -787, 48668, 10800, 0),(6, 2017, 35296, 116492, 246105, -786, 48668, 10800, 0),(6, 2018, 35301, 116462, 246104, -786, 48668, 10800, 0),(6, 2019, 35301, 116432, 246103, -785, 48668, 10800, 0),(6, 2020, 35301, 116018, 245969, -787, 64432, 10800, 0),(6, 2021, 35301, 116015, 245939, -788, 64432, 10800, 0),(6, 2022, 35296, 116017, 245910, -787, 64432, 10800, 0),(6, 2023, 35301, 116016, 245880, -787, 64432, 10800, 0),(6, 2024, 35301, 116015, 245850, -786, 64432, 10800, 0),(6, 2025, 35300, 115751, 246175, -890, 32712, 10800, 0),(6, 2026, 35295, 115750, 246209, -890, 32712, 10800, 0),(6, 2027, 35300, 115746, 246250, -889, 32712, 10800, 0),(6, 2028, 35299, 115772, 246175, -879, 32712, 10800, 0),(6, 2029, 35299, 115771, 246209, -880, 32712, 10800, 0),(6, 2030, 35299, 115767, 246250, -879, 32712, 10800, 0),(6, 2031, 35298, 115790, 246175, -865, 32712, 10800, 0),(6, 2032, 35298, 115789, 246209, -866, 32712, 10800, 0),(6, 2033, 35298, 115785, 246250, -865, 32712, 10800, 0),(6, 2034, 35297, 116118, 246216, -788, 55444, 10800, 0),(6, 2035, 35301, 116321, 246173, -788, 48668, 10800, 0),(6, 2036, 35296, 116261, 246171, -788, 48668, 10800, 0),(6, 2037, 35301, 116202, 246169, -787, 48668, 10800, 0),(6, 2038, 35301, 116551, 246107, -786, 48668, 10800, 0),(6, 2039, 35301, 116521, 246108, -787, 48668, 10800, 0),(6, 2040, 35296, 116492, 246105, -786, 48668, 10800, 0),(6, 2041, 35301, 116462, 246104, -786, 48668, 10800, 0),(6, 2042, 35301, 116018, 245969, -787, 64432, 10800, 0),(6, 2043, 35296, 116017, 245910, -787, 64432, 10800, 0),(6, 2044, 35301, 116015, 245850, -786, 64432, 10800, 0),(6, 2045, 35298, 116168, 248194, -783, 39088, 10800, 0),(6, 2046, 35300, 116151, 248219, -784, 39088, 10800, 0),(6, 2047, 35298, 116127, 248245, -783, 39088, 10800, 0),(6, 2048, 35300, 116108, 248268, -783, 39088, 10800, 0),(6, 2049, 35298, 116093, 248286, -782, 39088, 10800, 0),(6, 2050, 35300, 116071, 248312, -784, 39088, 10800, 0),(6, 2051, 35298, 116054, 248337, -784, 39088, 10800, 0),(6, 2052, 35300, 116034, 248358, -784, 39088, 10800, 0),(6, 2053, 35298, 116010, 248369, -785, 49844, 10800, 0),(6, 2054, 35300, 115985, 248350, -784, 58336, 10800, 0),(6, 2055, 35298, 115967, 248326, -784, 58336, 10800, 0),(6, 2056, 35300, 115954, 248306, -783, 58336, 10800, 0),(6, 2057, 35298, 115935, 248279, -785, 58336, 10800, 0),(6, 2058, 35300, 115916, 248255, -786, 58336, 10800, 0),(6, 2059, 35298, 115897, 248225, -785, 58336, 10800, 0),(6, 2060, 35300, 115880, 248200, -785, 58336, 10800, 0),(6, 2061, 35298, 115867, 248181, -784, 58336, 10800, 0),(6, 2062, 35299, 116183, 248214, -785, 39088, 10800, 0),(6, 2063, 35301, 116165, 248238, -786, 39088, 10800, 0),(6, 2064, 35299, 116141, 248264, -785, 39088, 10800, 0),(6, 2065, 35301, 116122, 248288, -785, 39088, 10800, 0),(6, 2066, 35299, 116107, 248306, -784, 39088, 10800, 0),(6, 2067, 35301, 116086, 248332, -786, 39088, 10800, 0),(6, 2068, 35299, 116068, 248356, -786, 39088, 10800, 0),(6, 2069, 35301, 116049, 248377, -786, 39088, 10800, 0),(6, 2070, 35299, 116024, 248388, -787, 49844, 10800, 0),(6, 2071, 35301, 115996, 248387, -784, 49844, 10800, 0),(6, 2072, 35299, 115971, 248368, -783, 58336, 10800, 0),(6, 2073, 35301, 115953, 248344, -783, 58336, 10800, 0),(6, 2074, 35299, 115940, 248324, -782, 58336, 10800, 0),(6, 2075, 35301, 115921, 248297, -784, 58336, 10800, 0),(6, 2076, 35299, 115902, 248273, -785, 58336, 10800, 0),(6, 2077, 35301, 115883, 248243, -784, 58336, 10800, 0),(6, 2078, 35299, 115866, 248218, -784, 58336, 10800, 0),(6, 2079, 35301, 115853, 248199, -783, 58336, 10800, 0),(6, 2080, 35301, 116211, 248319, -783, 39088, 10800, 0),(6, 2081, 35301, 116192, 248342, -783, 39088, 10800, 0),(6, 2082, 35301, 116177, 248360, -782, 39088, 10800, 0),(6, 2083, 35301, 116155, 248386, -784, 39088, 10800, 0),(6, 2084, 35301, 116138, 248411, -785, 39088, 10800, 0),(6, 2085, 35301, 115910, 248377, -779, 58336, 10800, 0),(6, 2086, 35301, 115897, 248357, -778, 58336, 10800, 0),(6, 2087, 35301, 115877, 248330, -780, 58336, 10800, 0),(6, 2088, 35301, 115859, 248306, -781, 58336, 10800, 0),(6, 2089, 35301, 115840, 248276, -780, 58336, 10800, 0),(6, 2090, 35297, 115879, 248453, -781, 48388, 10800, 0),(6, 2091, 35296, 115845, 248453, -782, 48388, 10800, 0),(6, 2092, 35296, 116124, 248456, -782, 48388, 10800, 0),(6, 2093, 35297, 116101, 248455, -782, 48388, 10800, 0),(6, 2094, 35301, 116176, 248181, -780, 58336, 10800, 0),(6, 2095, 35287, 116185, 248235, -783, 39088, 60, 0),(6, 2096, 35287, 116104, 248326, -783, 39088, 60, 0),(6, 2097, 35287, 115919, 248317, -783, 39088, 60, 0),(6, 2098, 35287, 115847, 248214, -783, 39088, 60, 0),(6, 2099, 35280, 116084, 250339, -845, 49112, 300, 0),(6, 2100, 35281, 115972, 250342, -844, 49112, 180, 0),(6, 2101, 35288, 115870, 250325, -850, 49112, 120, 0),(6, 2102, 35288, 115833, 250326, -850, 49112, 120, 0),(6, 2103, 35288, 115800, 250326, -850, 49112, 120, 0),(6, 2104, 35288, 115762, 250327, -850, 49112, 120, 0),(6, 2105, 35288, 115725, 250327, -849, 49112, 120, 0),(6, 2106, 35288, 115687, 250328, -849, 49112, 120, 0),(6, 2107, 35288, 115655, 250328, -849, 49112, 120, 0),(6, 2108, 35288, 115617, 250329, -849, 49112, 120, 0),(6, 2109, 35285, 115870, 250291, -851, 49112, 120, 0),(6, 2110, 35285, 115832, 250292, -851, 49112, 120, 0),(6, 2111, 35285, 115799, 250292, -851, 49112, 120, 0),(6, 2112, 35285, 115762, 250293, -851, 49112, 120, 0),(6, 2113, 35285, 115724, 250293, -850, 49112, 120, 0),(6, 2114, 35285, 115687, 250294, -850, 49112, 120, 0),(6, 2115, 35285, 115654, 250294, -850, 49112, 120, 0),(6, 2116, 35285, 115617, 250295, -850, 49112, 120, 0),(6, 2117, 35287, 115868, 250253, -852, 49112, 60, 0),(6, 2118, 35287, 115830, 250254, -852, 49112, 60, 0),(6, 2119, 35282, 115798, 250254, -852, 49112, 120, 0),(6, 2120, 35287, 115760, 250255, -852, 49112, 60, 0),(6, 2121, 35287, 115723, 250255, -851, 49112, 60, 0),(6, 2122, 35282, 115685, 250256, -851, 49112, 120, 0),(6, 2123, 35287, 115653, 250256, -851, 49112, 60, 0),(6, 2124, 35287, 115615, 250257, -851, 49112, 60, 0),(6, 2125, 35288, 116430, 250319, -846, 49112, 120, 0),(6, 2126, 35288, 116392, 250319, -846, 49112, 120, 0),(6, 2127, 35288, 116360, 250319, -846, 49112, 120, 0),(6, 2128, 35288, 116322, 250320, -846, 49112, 120, 0),(6, 2129, 35288, 116285, 250321, -845, 49112, 120, 0),(6, 2130, 35288, 116247, 250321, -845, 49112, 120, 0),(6, 2131, 35288, 116214, 250322, -845, 49112, 120, 0),(6, 2132, 35288, 116177, 250322, -845, 49112, 120, 0),(6, 2133, 35285, 116429, 250284, -847, 49112, 120, 0),(6, 2134, 35285, 116391, 250285, -847, 49112, 120, 0),(6, 2135, 35285, 116359, 250285, -847, 49112, 120, 0),(6, 2136, 35285, 116321, 250286, -847, 49112, 120, 0),(6, 2137, 35285, 116284, 250287, -846, 49112, 120, 0),(6, 2138, 35285, 116246, 250287, -846, 49112, 120, 0),(6, 2139, 35285, 116214, 250287, -846, 49112, 120, 0),(6, 2140, 35285, 116176, 250288, -846, 49112, 120, 0),(6, 2141, 35287, 116428, 250247, -848, 49112, 60, 0),(6, 2142, 35287, 116390, 250248, -848, 49112, 60, 0),(6, 2143, 35282, 116357, 250248, -848, 49112, 120, 0),(6, 2144, 35287, 116320, 250249, -848, 49112, 60, 0),(6, 2145, 35287, 116282, 250249, -847, 49112, 60, 0),(6, 2146, 35282, 116245, 250250, -847, 49112, 120, 0),(6, 2147, 35287, 116212, 250250, -847, 49112, 60, 0),(6, 2148, 35287, 116175, 250251, -847, 49112, 60, 0),(6, 2149, 35284, 116350, 250484, -845, 49112, 120, 0),(6, 2150, 35284, 116266, 250484, -844, 49112, 120, 0),(6, 2151, 35284, 116187, 250485, -844, 49112, 120, 0),(6, 2152, 35284, 116112, 250485, -844, 49112, 120, 0),(6, 2153, 35284, 115935, 250485, -841, 49112, 120, 0),(6, 2154, 35284, 115852, 250485, -841, 49112, 120, 0),(6, 2155, 35284, 115772, 250486, -841, 49112, 120, 0),(6, 2156, 35284, 115698, 250486, -841, 49112, 120, 0),(6, 2157, 35300, 115510, 249359, -623, 48856, 10800, 0),(6, 2158, 35295, 115536, 249359, -623, 48856, 10800, 0),(6, 2159, 35300, 115564, 249359, -622, 48856, 10800, 0),(6, 2160, 35299, 115510, 249381, -627, 48856, 10800, 0),(6, 2161, 35299, 115537, 249381, -627, 48856, 10800, 0),(6, 2162, 35299, 115564, 249381, -626, 48856, 10800, 0),(6, 2163, 35298, 115511, 249406, -625, 48856, 10800, 0),(6, 2164, 35298, 115538, 249406, -625, 48856, 10800, 0),(6, 2165, 35298, 115565, 249405, -624, 48856, 10800, 0),(6, 2166, 35297, 115451, 249483, -625, 48856, 10800, 0),(6, 2167, 35297, 115477, 249483, -625, 48856, 10800, 0),(6, 2168, 35297, 115505, 249483, -624, 48856, 10800, 0),(6, 2169, 35301, 115706, 250056, -628, 65460, 10800, 0),(6, 2170, 35301, 115705, 250093, -628, 65460, 10800, 0),(6, 2171, 35296, 115705, 250130, -627, 65460, 10800, 0),(6, 2172, 35301, 115704, 250166, -627, 65460, 10800, 0),(6, 2173, 35301, 115704, 250202, -627, 65460, 10800, 0),(6, 2174, 35296, 115703, 250240, -627, 65460, 10800, 0),(6, 2175, 35301, 115703, 250271, -626, 65460, 10800, 0),(6, 2176, 35301, 115702, 250308, -626, 65460, 10800, 0),(6, 2177, 35296, 115701, 250343, -626, 65460, 10800, 0),(6, 2178, 35301, 115701, 250380, -626, 65460, 10800, 0),(6, 2179, 35301, 115701, 250417, -626, 65460, 10800, 0),(6, 2180, 35300, 116485, 249293, -623, 48856, 10800, 0),(6, 2181, 35295, 116511, 249293, -623, 48856, 10800, 0),(6, 2182, 35300, 116554, 249296, -622, 48856, 10800, 0),(6, 2183, 35299, 116485, 249315, -627, 48856, 10800, 0),(6, 2184, 35299, 116512, 249315, -627, 48856, 10800, 0),(6, 2185, 35299, 116539, 249315, -626, 48856, 10800, 0),(6, 2186, 35298, 116486, 249340, -625, 48856, 10800, 0),(6, 2187, 35298, 116513, 249340, -625, 48856, 10800, 0),(6, 2188, 35298, 116540, 249339, -624, 48856, 10800, 0),(6, 2189, 35297, 116447, 249581, -625, 48856, 10800, 0),(6, 2190, 35297, 116473, 249581, -625, 48856, 10800, 0),(6, 2191, 35297, 116501, 249581, -624, 48856, 10800, 0),(6, 2192, 35301, 116339, 250411, -628, 32384, 10800, 0),(6, 2193, 35301, 116338, 250375, -628, 32384, 10800, 0),(6, 2194, 35296, 116337, 250338, -627, 32384, 10800, 0),(6, 2195, 35301, 116337, 250302, -627, 32384, 10800, 0),(6, 2196, 35301, 116337, 250266, -627, 32384, 10800, 0),(6, 2197, 35296, 116336, 250228, -627, 32384, 10800, 0),(6, 2198, 35301, 116336, 250197, -626, 32384, 10800, 0),(6, 2199, 35301, 116335, 250160, -626, 32384, 10800, 0),(6, 2200, 35296, 116335, 250125, -626, 32384, 10800, 0),(6, 2201, 35301, 116334, 250088, -626, 32384, 10800, 0),(6, 2202, 35301, 116333, 250051, -626, 32384, 10800, 0),(6, 2203, 35301, 116032, 245348, -672, 0, 10800, 0),(6, 2204, 35301, 116032, 245277, -672, 0, 10800, 0),(6, 2205, 35301, 116015, 245210, -672, 57344, 10800, 0),(6, 2206, 35301, 115984, 245185, -672, 49152, 10800, 0),(6, 2207, 35301, 115946, 245185, -672, 49152, 10800, 0),(6, 2208, 35301, 115910, 245185, -672, 49152, 10800, 0),(6, 2209, 35301, 115872, 245185, -672, 49152, 10800, 0),(6, 2210, 35301, 116491, 245349, -672, 32768, 10800, 0),(6, 2211, 35301, 116491, 245280, -672, 32768, 10800, 0),(6, 2212, 35301, 116512, 245216, -672, 40960, 10800, 0),(6, 2213, 35301, 116544, 245185, -672, 49152, 10800, 0),(6, 2214, 35301, 116579, 245185, -672, 49152, 10800, 0),(6, 2215, 35301, 116614, 245185, -672, 49152, 10800, 0),(6, 2216, 35301, 116650, 245185, -672, 49152, 10800, 0),(6, 2217, 35296, 116032, 245315, -672, 0, 10800, 0),(6, 2218, 35296, 116032, 245240, -672, 0, 10800, 0),(6, 2219, 35296, 116491, 245312, -672, 32768, 10800, 0),(6, 2220, 35296, 116491, 245242, -672, 32768, 10800, 0),(6, 2221, 35297, 115968, 245248, -672, 57344, 10800, 0),(6, 2222, 35297, 116544, 245248, -672, 40960, 10800, 0),(6, 2223, 35301, 116015, 245358, -663, 0, 10800, 0),(6, 2224, 35301, 116015, 245246, -663, 0, 10800, 0),(6, 2225, 35301, 115968, 245187, -663, 57344, 10800, 0),(6, 2226, 35301, 115901, 245173, -663, 49152, 10800, 0),(6, 2227, 35301, 116500, 245319, -663, 32768, 10800, 0),(6, 2228, 35301, 116499, 245239, -663, 32768, 10800, 0),(6, 2229, 35301, 116545, 245182, -663, 40960, 10800, 0),(6, 2230, 35301, 116617, 245170, -663, 49152, 10800, 0),(6, 2231, 35296, 116500, 245278, -662, 32768, 10800, 0),(6, 2232, 35296, 116511, 245207, -662, 40960, 10800, 0),(6, 2233, 35296, 116005, 245210, -662, 57344, 10800, 0),(6, 2234, 35296, 116015, 245294, -663, 0, 10800, 0),(6, 2235, 35297, 116599, 245209, -663, 40960, 10800, 0),(6, 2236, 35297, 115909, 245217, -663, 57344, 10800, 0),(6, 2237, 35288, 116087, 247109, -790, 49152, 120, 0),(6, 2238, 35288, 115959, 247109, -790, 49152, 120, 0),(6, 2239, 35288, 115896, 247109, -790, 49152, 120, 0),(6, 2240, 35288, 116151, 247109, -790, 49152, 120, 0),(6, 2241, 35288, 116282, 247109, -790, 49152, 120, 0),(6, 2242, 35288, 116410, 247109, -790, 49152, 120, 0),(6, 2243, 35288, 115768, 247109, -790, 49152, 120, 0),(6, 2244, 35288, 115639, 247109, -790, 49152, 120, 0),(6, 2245, 35283, 116215, 247109, -790, 49152, 10800, 0),(6, 2246, 35283, 115832, 247109, -790, 49152, 10800, 0),(6, 2247, 35283, 115575, 247109, -790, 49152, 10800, 0),(6, 2248, 35283, 116474, 247109, -790, 49152, 10800, 0),(6, 2249, 35284, 116023, 247109, -790, 49152, 120, 0),(6, 2250, 35284, 115704, 247109, -790, 49152, 120, 0),(6, 2251, 35284, 116346, 247109, -790, 49152, 120, 0),(6, 2252, 35287, 116471, 246959, -790, 49152, 60, 0),(6, 2253, 35287, 116407, 246959, -790, 49152, 60, 0),(6, 2254, 35287, 115575, 246959, -790, 49152, 60, 0),(6, 2255, 35287, 115639, 246959, -790, 49152, 60, 0),(6, 2256, 35282, 116023, 246959, -790, 49152, 120, 0),(6, 2257, 35287, 116343, 246959, -790, 49152, 60, 0),(6, 2258, 35287, 116279, 246959, -790, 49152, 60, 0),(6, 2259, 35287, 116215, 246959, -790, 49152, 60, 0),(6, 2260, 35287, 116151, 246959, -790, 49152, 60, 0),(6, 2261, 35282, 116087, 246959, -790, 49152, 120, 0),(6, 2262, 35282, 115960, 246959, -790, 49152, 120, 0),(6, 2263, 35287, 115896, 246959, -790, 49152, 60, 0),(6, 2264, 35287, 115832, 246959, -790, 49152, 60, 0),(6, 2265, 35287, 115768, 246959, -790, 49152, 60, 0),(6, 2266, 35287, 115704, 246959, -790, 49152, 60, 0),(6, 2267, 35301, 115791, 247862, -481, 0, 10800, 0),(6, 2268, 35301, 115792, 247740, -481, 0, 10800, 0),(6, 2269, 35301, 115737, 247679, -481, 57344, 10800, 0),(6, 2270, 35301, 115712, 247660, -481, 49152, 10800, 0),(6, 2271, 35301, 115673, 247659, -481, 49152, 10800, 0),(6, 2272, 35301, 115637, 247659, -481, 49152, 10800, 0),(6, 2273, 35301, 115791, 247819, -481, 0, 10800, 0),(6, 2274, 35296, 115763, 247704, -481, 57344, 10800, 0),(6, 2275, 35296, 115791, 247780, -480, 0, 10800, 0),(6, 2276, 35297, 115689, 247725, -482, 57344, 10800, 0),(6, 2277, 35301, 116244, 247868, -483, 32768, 10800, 0),(6, 2278, 35301, 116244, 247828, -481, 32768, 10800, 0),(6, 2279, 35301, 116244, 247743, -482, 32768, 10800, 0),(6, 2280, 35301, 116302, 247678, -481, 40960, 10800, 0),(6, 2281, 35301, 116329, 247658, -480, 49152, 10800, 0),(6, 2282, 35301, 116369, 247659, -481, 49152, 10800, 0),(6, 2283, 35301, 116408, 247658, -481, 49152, 10800, 0),(6, 2284, 35296, 116244, 247784, -479, 32768, 10800, 0),(6, 2285, 35296, 116266, 247714, -482, 40960, 10800, 0),(6, 2286, 35297, 116346, 247732, -479, 40960, 10800, 0),(6, 2287, 35301, 116131, 247989, -790, 49152, 10800, 0),(6, 2288, 35301, 116100, 247989, -790, 49152, 10800, 0),(6, 2289, 35301, 116069, 247989, -790, 49152, 10800, 0),(6, 2290, 35301, 116037, 247989, -790, 49152, 10800, 0),(6, 2291, 35301, 116006, 247989, -790, 49152, 10800, 0),(6, 2292, 35301, 115974, 247989, -790, 49152, 10800, 0),(6, 2293, 35301, 115943, 247989, -790, 49152, 10800, 0),(6, 2294, 35296, 115911, 247989, -790, 49152, 10800, 0),(6, 2295, 35296, 116131, 247969, -790, 49152, 10800, 0),(6, 2296, 35297, 116100, 247969, -790, 49152, 10800, 0),(6, 2297, 35301, 116069, 247969, -790, 49152, 10800, 0),(6, 2298, 35301, 116037, 247969, -790, 49152, 10800, 0),(6, 2299, 35301, 116006, 247969, -790, 49152, 10800, 0),(6, 2300, 35301, 115974, 247969, -790, 49152, 10800, 0),(6, 2301, 35301, 115943, 247969, -790, 49152, 10800, 0),(6, 2302, 35301, 115911, 247969, -790, 49152, 10800, 0),(6, 2303, 35301, 114459, 246876, -666, 32768, 10800, 0),(6, 2304, 35301, 114459, 246927, -666, 32768, 10800, 0),(6, 2305, 35301, 114459, 246977, -666, 32768, 10800, 0),(6, 2306, 35301, 114459, 247027, -666, 32768, 10800, 0),(6, 2307, 35297, 114459, 247077, -666, 32768, 10800, 0),(6, 2308, 35301, 114459, 247127, -666, 32768, 10800, 0),(6, 2309, 35301, 114459, 247177, -666, 32768, 10800, 0),(6, 2310, 35301, 114459, 247227, -666, 32768, 10800, 0),(6, 2311, 35301, 114459, 247277, -666, 32768, 10800, 0),(6, 2312, 35296, 114459, 247327, -666, 32768, 10800, 0),(6, 2313, 35301, 114459, 247377, -666, 32768, 10800, 0),(6, 2314, 35301, 114459, 247427, -666, 32768, 10800, 0),(6, 2315, 35301, 117861, 246876, -666, 32768, 10800, 0),(6, 2316, 35301, 117861, 246927, -666, 32768, 10800, 0),(6, 2317, 35301, 117861, 246977, -666, 32768, 10800, 0),(6, 2318, 35301, 117861, 247027, -666, 32768, 10800, 0),(6, 2319, 35297, 117861, 247077, -666, 32768, 10800, 0),(6, 2320, 35301, 117861, 247127, -666, 32768, 10800, 0),(6, 2321, 35301, 117861, 247177, -666, 32768, 10800, 0),(6, 2322, 35301, 117861, 247227, -666, 32768, 10800, 0),(6, 2323, 35301, 117861, 247277, -666, 32768, 10800, 0),(6, 2324, 35296, 117861, 247327, -666, 32768, 10800, 0),(6, 2325, 35301, 117861, 247377, -666, 32768, 10800, 0),(6, 2326, 35301, 117861, 247427, -666, 32768, 10800, 0),(7, 2327, 35340, 147134, -45144, -1357, 16416, 10800, 0),(7, 2328, 35351, 147218, -45144, -1357, 16416, 10800, 0),(7, 2329, 35351, 147105, -45263, -1357, 31296, 10800, 0),(7, 2330, 35351, 147117, -45180, -1357, 31296, 10800, 0),(7, 2331, 35340, 147111, -45221, -1357, 31296, 10800, 0),(7, 2332, 35340, 147241, -45225, -1357, 1424, 10800, 0),(7, 2333, 35351, 147247, -45267, -1357, 1424, 10800, 0),(7, 2334, 35351, 147236, -45184, -1357, 1424, 10800, 0),(7, 2335, 35340, 147134, -45144, -1357, 16416, 10800, 0),(7, 2336, 35351, 147218, -45144, -1357, 16416, 10800, 0),(7, 2337, 35351, 147105, -45263, -1357, 31296, 10800, 0),(7, 2338, 35351, 147117, -45180, -1357, 31296, 10800, 0),(7, 2339, 35340, 147111, -45221, -1357, 31296, 10800, 0),(7, 2340, 35340, 147241, -45225, -1357, 1424, 10800, 0),(7, 2341, 35351, 147247, -45267, -1357, 1424, 10800, 0),(7, 2342, 35351, 147236, -45184, -1357, 1424, 10800, 0),(7, 2343, 35351, 147714, -45140, -1357, 16416, 10800, 0),(7, 2344, 35340, 147797, -45140, -1357, 16416, 10800, 0),(7, 2345, 35351, 147684, -45258, -1357, 31296, 10800, 0),(7, 2346, 35351, 147696, -45176, -1357, 31296, 10800, 0),(7, 2347, 35340, 147690, -45217, -1357, 31296, 10800, 0),(7, 2348, 35340, 147820, -45221, -1357, 1424, 10800, 0),(7, 2349, 35351, 147826, -45262, -1357, 1424, 10800, 0),(7, 2350, 35351, 147815, -45179, -1357, 1424, 10800, 0),(7, 2351, 35351, 147714, -45140, -1357, 16416, 10800, 0),(7, 2352, 35340, 147797, -45140, -1357, 16416, 10800, 0),(7, 2353, 35351, 147684, -45258, -1357, 31296, 10800, 0),(7, 2354, 35351, 147696, -45176, -1357, 31296, 10800, 0),(7, 2355, 35340, 147690, -45217, -1357, 31296, 10800, 0),(7, 2356, 35340, 147820, -45221, -1357, 1424, 10800, 0),(7, 2357, 35351, 147826, -45262, -1357, 1424, 10800, 0),(7, 2358, 35351, 147815, -45179, -1357, 1424, 10800, 0),(7, 2359, 35351, 147315, -45496, -2082, 16296, 10800, 0),(7, 2360, 35351, 147353, -45496, -2082, 16296, 10800, 0),(7, 2361, 35351, 147391, -45496, -2082, 16296, 10800, 0),(7, 2362, 35351, 147427, -45496, -2082, 16296, 10800, 0),(7, 2363, 35351, 147463, -45496, -2082, 16296, 10800, 0),(7, 2364, 35351, 147500, -45497, -2082, 16296, 10800, 0),(7, 2365, 35351, 147537, -45497, -2082, 16296, 10800, 0),(7, 2366, 35351, 147574, -45497, -2082, 16296, 10800, 0),(7, 2367, 35351, 147611, -45496, -2082, 16296, 10800, 0),(7, 2368, 35343, 147316, -45424, -2082, 16296, 10800, 0),(7, 2369, 35343, 147352, -45425, -2082, 16296, 10800, 0),(7, 2370, 35343, 147389, -45425, -2082, 16296, 10800, 0),(7, 2371, 35343, 147425, -45426, -2082, 16296, 10800, 0),(7, 2372, 35343, 147462, -45425, -2082, 16296, 10800, 0),(7, 2373, 35343, 147500, -45424, -2082, 16296, 10800, 0),(7, 2374, 35343, 147536, -45424, -2082, 16296, 10800, 0),(7, 2375, 35343, 147573, -45424, -2082, 16296, 10800, 0),(7, 2376, 35343, 147608, -45425, -2082, 16296, 10800, 0),(7, 2377, 35339, 147461, -45371, -2082, 16296, 10800, 0),(7, 2378, 35350, 147423, -45372, -2082, 16296, 10800, 0),(7, 2379, 35350, 147387, -45373, -2082, 16296, 10800, 0),(7, 2380, 35350, 147316, -45372, -2082, 16296, 10800, 0),(7, 2381, 35350, 147350, -45372, -2082, 16296, 10800, 0),(7, 2382, 35350, 147606, -45373, -2082, 16296, 10800, 0),(7, 2383, 35350, 147570, -45374, -2082, 16296, 10800, 0),(7, 2384, 35350, 147499, -45373, -2082, 16296, 10800, 0),(7, 2385, 35350, 147533, -45373, -2082, 16296, 10800, 0),(7, 2386, 35350, 147465, -45619, -2082, 16352, 10800, 0),(7, 2387, 35350, 147426, -45619, -2082, 16352, 10800, 0),(7, 2388, 35350, 147390, -45619, -2082, 16352, 10800, 0),(7, 2389, 35350, 147356, -45620, -2082, 16352, 10800, 0),(7, 2390, 35350, 147320, -45620, -2082, 16352, 10800, 0),(7, 2391, 35350, 147609, -45619, -2082, 16352, 10800, 0),(7, 2392, 35350, 147573, -45619, -2082, 16352, 10800, 0),(7, 2393, 35350, 147539, -45619, -2082, 16352, 10800, 0),(7, 2394, 35350, 147503, -45620, -2082, 16352, 10800, 0),(7, 2395, 35343, 147464, -45674, -2082, 16352, 10800, 0),(7, 2396, 35343, 147429, -45674, -2082, 16352, 10800, 0),(7, 2397, 35343, 147394, -45674, -2082, 16352, 10800, 0),(7, 2398, 35343, 147359, -45674, -2082, 16352, 10800, 0),(7, 2399, 35343, 147320, -45675, -2082, 16352, 10800, 0),(7, 2400, 35343, 147610, -45675, -2082, 16352, 10800, 0),(7, 2401, 35343, 147575, -45675, -2082, 16352, 10800, 0),(7, 2402, 35343, 147539, -45676, -2082, 16352, 10800, 0),(7, 2403, 35343, 147501, -45675, -2082, 16352, 10800, 0),(7, 2404, 35350, 147167, -45677, -2082, -64, 10800, 0),(7, 2405, 35350, 147159, -45707, -2082, -64, 10800, 0),(7, 2406, 35350, 147167, -45735, -2082, -64, 10800, 0),(7, 2407, 35350, 147158, -45765, -2082, -48, 10800, 0),(7, 2408, 35339, 147167, -45795, -2082, -64, 10800, 0),(7, 2409, 35350, 147157, -45825, -2082, -32, 10800, 0),(7, 2410, 35350, 147168, -45852, -2082, -64, 10800, 0),(7, 2411, 35350, 147157, -45881, -2082, -64, 10800, 0),(7, 2412, 35350, 147168, -45910, -2082, -64, 10800, 0),(7, 2413, 35351, 147111, -45679, -2082, -64, 10800, 0),(7, 2414, 35351, 147103, -45708, -2082, -64, 10800, 0),(7, 2415, 35351, 147111, -45737, -2082, -64, 10800, 0),(7, 2416, 35351, 147102, -45766, -2082, -48, 10800, 0),(7, 2417, 35351, 147110, -45796, -2082, -64, 10800, 0),(7, 2418, 35351, 147101, -45826, -2082, -32, 10800, 0),(7, 2419, 35351, 147112, -45853, -2082, -64, 10800, 0),(7, 2420, 35351, 147100, -45883, -2082, -64, 10800, 0),(7, 2421, 35351, 147111, -45911, -2082, -64, 10800, 0),(7, 2422, 35341, 147051, -45793, -2082, -64, 10800, 0),(7, 2423, 35350, 147771, -45678, -2082, 32768, 10800, 0),(7, 2424, 35350, 147779, -45706, -2082, 32768, 10800, 0),(7, 2425, 35350, 147771, -45735, -2082, 32768, 10800, 0),(7, 2426, 35350, 147779, -45764, -2082, 32768, 10800, 0),(7, 2427, 35350, 147772, -45794, -2082, 32768, 10800, 0),(7, 2428, 35350, 147780, -45823, -2082, 32768, 10800, 0),(7, 2429, 35350, 147772, -45852, -2082, 32768, 10800, 0),(7, 2430, 35350, 147778, -45881, -2082, 32768, 10800, 0),(7, 2431, 35350, 147772, -45911, -2082, 32768, 10800, 0),(7, 2432, 35351, 147823, -45678, -2082, 32768, 10800, 0),(7, 2433, 35351, 147831, -45706, -2082, 32768, 10800, 0),(7, 2434, 35351, 147823, -45735, -2082, 32768, 10800, 0),(7, 2435, 35351, 147831, -45764, -2082, 32768, 10800, 0),(7, 2436, 35351, 147824, -45794, -2082, 32768, 10800, 0),(7, 2437, 35351, 147832, -45823, -2082, 32768, 10800, 0),(7, 2438, 35351, 147824, -45852, -2082, 32768, 10800, 0),(7, 2439, 35351, 147830, -45881, -2082, 32768, 10800, 0),(7, 2440, 35351, 147824, -45910, -2082, 32768, 10800, 0),(7, 2441, 35341, 147898, -45793, -2082, 32768, 10800, 0),(7, 2442, 35351, 146697, -45659, -1744, 18936, 10800, 0),(7, 2443, 35351, 146731, -45650, -1744, 18936, 10800, 0),(7, 2444, 35340, 146766, -45641, -1744, 18936, 10800, 0),(7, 2445, 35351, 146839, -45622, -1744, 18936, 10800, 0),(7, 2446, 35351, 146769, -45706, -1744, 52040, 10800, 0),(7, 2447, 35340, 146801, -45632, -1744, 18936, 10800, 0),(7, 2448, 35351, 146875, -45612, -1744, 18936, 10800, 0),(7, 2449, 35351, 146912, -45603, -1744, 18936, 10800, 0),(7, 2450, 35351, 146733, -45719, -1744, 52040, 10800, 0),(7, 2451, 35351, 146697, -45731, -1744, 52040, 10800, 0),(7, 2452, 35351, 146658, -45742, -1744, 52040, 10800, 0),(7, 2453, 35341, 146620, -45752, -1744, 52040, 10800, 0),(7, 2454, 35351, 146581, -45764, -1744, 52040, 10800, 0),(7, 2455, 35351, 146543, -45774, -1744, 52040, 10800, 0),(7, 2456, 35351, 146506, -45785, -1744, 52040, 10800, 0),(7, 2457, 35351, 148004, -45603, -1744, 13712, 10800, 0),(7, 2458, 35351, 148039, -45612, -1744, 13712, 10800, 0),(7, 2459, 35351, 148074, -45620, -1744, 13712, 10800, 0),(7, 2460, 35340, 148109, -45629, -1744, 13712, 10800, 0),(7, 2461, 35351, 148181, -45648, -1744, 13712, 10800, 0),(7, 2462, 35340, 148143, -45638, -1744, 13712, 10800, 0),(7, 2463, 35351, 148219, -45656, -1744, 13712, 10800, 0),(7, 2464, 35351, 148433, -45784, -1744, 46376, 10800, 0),(7, 2465, 35351, 148395, -45776, -1744, 46376, 10800, 0),(7, 2466, 35351, 148356, -45765, -1744, 46376, 10800, 0),(7, 2467, 35341, 148318, -45755, -1744, 46376, 10800, 0),(7, 2468, 35351, 148279, -45744, -1744, 46376, 10800, 0),(7, 2469, 35351, 148241, -45733, -1744, 46376, 10800, 0),(7, 2470, 35351, 148204, -45723, -1744, 46376, 10800, 0),(7, 2471, 35351, 148165, -45712, -1744, 46376, 10800, 0),(7, 2472, 35351, 146305, -45571, -1744, 19960, 10800, 0),(7, 2473, 35340, 146373, -45544, -1744, 19960, 10800, 0),(7, 2474, 35351, 146400, -45568, -1744, 4744, 10800, 0),(7, 2475, 35340, 146419, -45600, -1744, 4744, 10800, 0),(7, 2476, 35351, 146435, -45633, -1744, 4352, 10800, 0),(7, 2477, 35351, 146317, -45678, -1744, 34888, 10800, 0),(7, 2478, 35340, 146310, -45642, -1744, 34496, 10800, 0),(7, 2479, 35351, 146302, -45605, -1744, 34496, 10800, 0),(7, 2480, 35351, 146305, -45571, -1744, 19960, 10800, 0),(7, 2481, 35340, 146373, -45544, -1744, 19960, 10800, 0),(7, 2482, 35351, 146400, -45568, -1744, 4744, 10800, 0),(7, 2483, 35340, 146419, -45600, -1744, 4744, 10800, 0),(7, 2484, 35351, 146435, -45633, -1744, 4352, 10800, 0),(7, 2485, 35351, 146317, -45678, -1744, 34888, 10800, 0),(7, 2486, 35340, 146310, -45642, -1744, 34496, 10800, 0),(7, 2487, 35351, 146302, -45605, -1744, 34496, 10800, 0),(7, 2488, 35340, 148552, -45546, -1744, 12832, 10800, 0),(7, 2489, 35351, 148621, -45569, -1744, 12832, 10800, 0),(7, 2490, 35351, 148628, -45604, -1744, -2384, 10800, 0),(7, 2491, 35340, 148622, -45642, -1744, -2384, 10800, 0),(7, 2492, 35351, 148613, -45677, -1744, -2776, 10800, 0),(7, 2493, 35351, 148493, -45638, -1744, 27760, 10800, 0),(7, 2494, 35340, 148511, -45605, -1744, 27368, 10800, 0),(7, 2495, 35351, 148528, -45571, -1744, 27368, 10800, 0),(7, 2496, 35340, 148552, -45546, -1744, 12832, 10800, 0),(7, 2497, 35351, 148621, -45569, -1744, 12832, 10800, 0),(7, 2498, 35351, 148628, -45604, -1744, -2384, 10800, 0),(7, 2499, 35340, 148622, -45642, -1744, -2384, 10800, 0),(7, 2500, 35351, 148613, -45677, -1744, -2776, 10800, 0),(7, 2501, 35351, 148493, -45638, -1744, 27760, 10800, 0),(7, 2502, 35340, 148511, -45605, -1744, 27368, 10800, 0),(7, 2503, 35351, 148528, -45571, -1744, 27368, 10800, 0),(7, 2504, 35351, 145387, -45445, -1744, 6128, 10800, 0),(7, 2505, 35351, 145517, -45613, -1744, 6128, 10800, 0),(7, 2506, 35340, 145554, -45665, -1744, 5672, 10800, 0),(7, 2507, 35351, 145432, -45503, -1744, 6128, 10800, 0),(7, 2508, 35351, 145473, -45560, -1744, 6128, 10800, 0),(7, 2509, 35340, 145591, -45718, -1744, 6128, 10800, 0),(7, 2510, 35351, 145632, -45775, -1744, 6128, 10800, 0),(7, 2511, 35351, 145672, -45828, -1744, 6128, 10800, 0),(7, 2512, 35340, 145464, -45730, -1744, 39264, 10800, 0),(7, 2513, 35340, 145499, -45783, -1744, 39264, 10800, 0),(7, 2514, 35351, 145535, -45836, -1744, 39264, 10800, 0),(7, 2515, 35351, 145566, -45883, -1744, 39264, 10800, 0),(7, 2516, 35351, 145430, -45680, -1744, 39264, 10800, 0),(7, 2517, 35351, 145394, -45627, -1744, 39264, 10800, 0),(7, 2518, 35351, 145356, -45570, -1744, 39264, 10800, 0),(7, 2519, 35351, 145322, -45516, -1744, 39264, 10800, 0),(7, 2520, 35351, 149607, -45516, -1744, -6640, 10800, 0),(7, 2521, 35351, 149493, -45695, -1744, -6640, 10800, 0),(7, 2522, 35340, 149456, -45747, -1744, -7096, 10800, 0),(7, 2523, 35351, 149567, -45577, -1744, -6640, 10800, 0),(7, 2524, 35351, 149528, -45635, -1744, -6640, 10800, 0),(7, 2525, 35340, 149419, -45800, -1744, -6640, 10800, 0),(7, 2526, 35351, 149379, -45858, -1744, -6640, 10800, 0),(7, 2527, 35351, 149343, -45914, -1744, -6640, 10800, 0),(7, 2528, 35340, 149365, -45685, -1744, 26496, 10800, 0),(7, 2529, 35340, 149326, -45736, -1744, 26496, 10800, 0),(7, 2530, 35351, 149289, -45787, -1744, 26496, 10800, 0),(7, 2531, 35351, 149256, -45833, -1744, 26496, 10800, 0),(7, 2532, 35351, 149400, -45636, -1744, 26496, 10800, 0),(7, 2533, 35351, 149437, -45584, -1744, 26496, 10800, 0),(7, 2534, 35351, 149478, -45528, -1744, 26496, 10800, 0),(7, 2535, 35351, 149517, -45479, -1744, 26496, 10800, 0),(7, 2536, 35351, 144645, -47090, -1744, 27912, 10800, 0),(7, 2537, 35340, 144676, -47024, -1744, 27912, 10800, 0),(7, 2538, 35351, 144711, -47022, -1744, 12696, 10800, 0),(7, 2539, 35340, 144748, -47033, -1744, 12696, 10800, 0),(7, 2540, 35351, 144782, -47046, -1744, 12304, 10800, 0),(7, 2541, 35351, 144728, -47160, -1744, 42840, 10800, 0),(7, 2542, 35340, 144698, -47139, -1744, 42448, 10800, 0),(7, 2543, 35351, 144666, -47117, -1744, 42448, 10800, 0),(7, 2544, 35351, 144645, -47090, -1744, 27912, 10800, 0),(7, 2545, 35340, 144676, -47024, -1744, 27912, 10800, 0),(7, 2546, 35351, 144711, -47022, -1744, 12696, 10800, 0),(7, 2547, 35340, 144748, -47033, -1744, 12696, 10800, 0),(7, 2548, 35351, 144782, -47046, -1744, 12304, 10800, 0),(7, 2549, 35351, 144728, -47160, -1744, 42840, 10800, 0),(7, 2550, 35340, 144698, -47139, -1744, 42448, 10800, 0),(7, 2551, 35351, 144666, -47117, -1744, 42448, 10800, 0),(7, 2552, 35340, 150254, -47023, -1744, 4736, 10800, 0),(7, 2553, 35351, 150288, -47087, -1744, 4736, 10800, 0),(7, 2554, 35351, 150268, -47117, -1744, -10480, 10800, 0),(7, 2555, 35340, 150238, -47139, -1744, -10480, 10800, 0),(7, 2556, 35351, 150206, -47159, -1744, -10872, 10800, 0),(7, 2557, 35351, 150148, -47047, -1744, 19664, 10800, 0),(7, 2558, 35340, 150184, -47036, -1744, 19272, 10800, 0),(7, 2559, 35351, 150220, -47023, -1744, 19272, 10800, 0),(7, 2560, 35340, 150254, -47023, -1744, 4736, 10800, 0),(7, 2561, 35351, 150288, -47087, -1744, 4736, 10800, 0),(7, 2562, 35351, 150268, -47117, -1744, -10480, 10800, 0),(7, 2563, 35340, 150238, -47139, -1744, -10480, 10800, 0),(7, 2564, 35351, 150206, -47159, -1744, -10872, 10800, 0),(7, 2565, 35351, 150148, -47047, -1744, 19664, 10800, 0),(7, 2566, 35340, 150184, -47036, -1744, 19272, 10800, 0),(7, 2567, 35351, 150220, -47023, -1744, 19272, 10800, 0),(7, 2568, 35351, 144383, -47805, -1744, 29552, 10800, 0),(7, 2569, 35340, 144403, -47735, -1744, 29552, 10800, 0),(7, 2570, 35351, 144439, -47728, -1744, 14336, 10800, 0),(7, 2571, 35340, 144476, -47732, -1744, 14336, 10800, 0),(7, 2572, 35351, 144512, -47740, -1744, 13944, 10800, 0),(7, 2573, 35351, 144476, -47861, -1744, 44480, 10800, 0),(7, 2574, 35340, 144443, -47845, -1744, 44088, 10800, 0),(7, 2575, 35351, 144409, -47828, -1744, 44088, 10800, 0),(7, 2576, 35340, 150525, -47733, -1744, 2960, 10800, 0),(7, 2577, 35351, 150547, -47803, -1744, 2960, 10800, 0),(7, 2578, 35351, 150522, -47829, -1744, -12256, 10800, 0),(7, 2579, 35340, 150488, -47846, -1744, -12256, 10800, 0),(7, 2580, 35351, 150454, -47860, -1744, -12648, 10800, 0),(7, 2581, 35351, 150416, -47739, -1744, 17888, 10800, 0),(7, 2582, 35340, 150453, -47734, -1744, 17496, 10800, 0),(7, 2583, 35351, 150491, -47728, -1744, 17496, 10800, 0),(7, 2584, 35350, 145615, -48338, -2381, 32744, 10800, 0),(7, 2585, 35350, 145616, -48300, -2381, 32744, 10800, 0),(7, 2586, 35350, 145616, -48263, -2381, 32744, 10800, 0),(7, 2587, 35350, 145615, -48226, -2381, 32744, 10800, 0),(7, 2588, 35350, 145615, -48188, -2381, 32744, 10800, 0),(7, 2589, 35350, 145615, -48149, -2381, 32744, 10800, 0),(7, 2590, 35350, 145662, -48338, -2381, 32744, 10800, 0),(7, 2591, 35350, 145662, -48299, -2381, 32744, 10800, 0),(7, 2592, 35350, 145662, -48262, -2381, 32744, 10800, 0),(7, 2593, 35350, 145661, -48225, -2381, 32744, 10800, 0),(7, 2594, 35350, 145661, -48187, -2381, 32744, 10800, 0),(7, 2595, 35350, 145661, -48149, -2381, 32744, 10800, 0),(7, 2596, 35343, 145721, -48338, -2381, 32744, 10800, 0),(7, 2597, 35343, 145721, -48299, -2381, 32744, 10800, 0),(7, 2598, 35343, 145721, -48262, -2381, 32744, 10800, 0),(7, 2599, 35343, 145720, -48225, -2381, 32744, 10800, 0),(7, 2600, 35343, 145720, -48187, -2381, 32744, 10800, 0),(7, 2601, 35343, 145720, -48148, -2381, 32744, 10800, 0),(7, 2602, 35350, 149318, -48143, -2381, 0, 10800, 0),(7, 2603, 35350, 149319, -48181, -2381, 0, 10800, 0),(7, 2604, 35350, 149320, -48222, -2381, 0, 10800, 0),(7, 2605, 35350, 149320, -48262, -2381, 0, 10800, 0),(7, 2606, 35350, 149319, -48300, -2381, 0, 10800, 0),(7, 2607, 35350, 149319, -48341, -2381, 0, 10800, 0),(7, 2608, 35350, 149274, -48144, -2381, 0, 10800, 0),(7, 2609, 35350, 149274, -48182, -2381, 0, 10800, 0),(7, 2610, 35350, 149275, -48223, -2381, 0, 10800, 0),(7, 2611, 35350, 149275, -48263, -2381, 0, 10800, 0),(7, 2612, 35350, 149274, -48301, -2381, 0, 10800, 0),(7, 2613, 35350, 149274, -48342, -2381, 0, 10800, 0),(7, 2614, 35343, 149178, -48139, -2381, 0, 10800, 0),(7, 2615, 35343, 149178, -48178, -2381, 0, 10800, 0),(7, 2616, 35343, 149179, -48218, -2381, 0, 10800, 0),(7, 2617, 35343, 149180, -48258, -2381, 0, 10800, 0),(7, 2618, 35343, 149179, -48296, -2381, 0, 10800, 0),(7, 2619, 35343, 149178, -48338, -2381, 0, 10800, 0),(7, 2620, 35343, 145886, -47792, -1604, 28152, 10800, 0),(7, 2621, 35343, 145900, -47763, -1604, 28152, 10800, 0),(7, 2622, 35343, 145872, -47822, -1604, 28152, 10800, 0),(7, 2623, 35343, 145914, -47734, -1604, 28152, 10800, 0),(7, 2624, 35343, 145866, -47780, -1604, 28152, 10800, 0),(7, 2625, 35343, 145880, -47751, -1604, 28152, 10800, 0),(7, 2626, 35343, 145852, -47809, -1604, 28152, 10800, 0),(7, 2627, 35343, 145894, -47721, -1604, 28152, 10800, 0),(7, 2628, 35350, 145778, -47743, -1604, 28152, 10800, 0),(7, 2629, 35350, 145793, -47713, -1604, 28152, 10800, 0),(7, 2630, 35339, 145805, -47736, -1604, 28152, 10800, 0),(7, 2631, 35350, 145828, -47693, -1604, 28152, 10800, 0),(7, 2632, 35350, 145787, -47781, -1604, 28152, 10800, 0),(7, 2633, 35343, 145846, -47771, -1604, 28152, 10800, 0),(7, 2634, 35343, 145860, -47742, -1604, 28152, 10800, 0),(7, 2635, 35343, 145831, -47800, -1604, 28152, 10800, 0),(7, 2636, 35343, 145873, -47712, -1604, 28152, 10800, 0),(7, 2637, 35343, 149027, -47763, -1604, 4672, 10800, 0),(7, 2638, 35343, 149042, -47793, -1604, 4672, 10800, 0),(7, 2639, 35343, 149014, -47733, -1604, 4672, 10800, 0),(7, 2640, 35343, 149056, -47821, -1604, 4672, 10800, 0),(7, 2641, 35343, 149050, -47756, -1604, 4672, 10800, 0),(7, 2642, 35343, 149064, -47785, -1604, 4672, 10800, 0),(7, 2643, 35343, 149036, -47726, -1604, 4672, 10800, 0),(7, 2644, 35343, 149078, -47814, -1604, 4672, 10800, 0),(7, 2645, 35350, 149134, -47710, -1604, 4672, 10800, 0),(7, 2646, 35350, 149148, -47741, -1604, 4672, 10800, 0),(7, 2647, 35339, 149123, -47736, -1604, 4672, 10800, 0),(7, 2648, 35350, 149141, -47780, -1604, 4672, 10800, 0),(7, 2649, 35350, 149099, -47693, -1604, 4672, 10800, 0),(7, 2650, 35343, 149070, -47745, -1604, 4672, 10800, 0),(7, 2651, 35343, 149084, -47774, -1604, 4672, 10800, 0),(7, 2652, 35343, 149056, -47715, -1604, 4672, 10800, 0),(7, 2653, 35343, 149098, -47803, -1604, 4672, 10800, 0),(7, 2654, 35351, 145995, -47693, -1608, 28128, 10800, 0),(7, 2655, 35351, 146011, -47662, -1608, 28128, 10800, 0),(7, 2656, 35351, 146019, -47707, -1608, 28128, 10800, 0),(7, 2657, 35351, 146036, -47676, -1608, 28128, 10800, 0),(7, 2658, 35351, 146047, -47721, -1608, 28128, 10800, 0),(7, 2659, 35340, 146064, -47690, -1608, 28128, 10800, 0),(7, 2660, 35351, 145876, -47941, -1608, 28128, 10800, 0),(7, 2661, 35351, 145893, -47910, -1608, 28128, 10800, 0),(7, 2662, 35351, 145896, -47950, -1608, 28128, 10800, 0),(7, 2663, 35351, 145913, -47918, -1608, 28128, 10800, 0),(7, 2664, 35340, 145921, -47961, -1608, 28128, 10800, 0),(7, 2665, 35351, 145938, -47930, -1608, 28128, 10800, 0),(7, 2666, 35340, 145949, -47972, -1608, 28128, 10800, 0),(7, 2667, 35351, 145966, -47941, -1608, 28128, 10800, 0),(7, 2668, 35351, 146077, -47736, -1608, 28128, 10800, 0),(7, 2669, 35340, 146093, -47705, -1608, 28128, 10800, 0),(7, 2670, 35341, 146082, -47657, -1608, 28128, 10800, 0),(7, 2671, 35341, 145905, -48000, -1608, 28128, 10800, 0),(7, 2672, 35351, 149033, -47903, -1608, 4424, 10800, 0),(7, 2673, 35351, 149047, -47934, -1608, 4424, 10800, 0),(7, 2674, 35351, 149002, -47915, -1608, 4424, 10800, 0),(7, 2675, 35351, 149016, -47947, -1608, 4424, 10800, 0),(7, 2676, 35351, 148977, -47927, -1608, 4424, 10800, 0),(7, 2677, 35340, 148960, -47977, -1608, 4424, 10800, 0),(7, 2678, 35351, 148913, -47956, -1608, 4424, 10800, 0),(7, 2679, 35340, 148929, -47988, -1608, 4424, 10800, 0),(7, 2680, 35351, 148923, -47672, -1608, 4424, 10800, 0),(7, 2681, 35351, 148937, -47700, -1608, 4424, 10800, 0),(7, 2682, 35351, 148900, -47682, -1608, 4424, 10800, 0),(7, 2683, 35351, 148915, -47712, -1608, 4424, 10800, 0),(7, 2684, 35351, 148868, -47694, -1608, 4424, 10800, 0),(7, 2685, 35351, 148882, -47725, -1608, 4424, 10800, 0),(7, 2686, 35340, 148831, -47711, -1608, 4424, 10800, 0),(7, 2687, 35340, 148788, -47729, -1608, 4424, 10800, 0),(7, 2688, 35341, 148974, -48007, -1608, 4424, 10800, 0),(7, 2689, 35341, 148815, -47680, -1608, 4424, 10800, 0),(7, 2690, 35351, 146467, -47149, -1608, 21928, 10800, 0),(7, 2691, 35351, 146648, -47035, -1608, 21928, 10800, 0),(7, 2692, 35351, 146585, -47075, -1608, 21928, 10800, 0),(7, 2693, 35351, 146527, -47110, -1608, 21928, 10800, 0),(7, 2694, 35351, 146503, -47138, -1608, 53248, 10800, 0),(7, 2695, 35351, 146684, -47023, -1608, 53248, 10800, 0),(7, 2696, 35351, 146621, -47063, -1608, 53248, 10800, 0),(7, 2697, 35351, 146563, -47099, -1608, 53248, 10800, 0),(7, 2698, 35351, 148292, -47048, -1608, 10752, 10800, 0),(7, 2699, 35351, 148348, -47080, -1608, 10752, 10800, 0),(7, 2700, 35351, 148409, -47118, -1608, 10752, 10800, 0),(7, 2701, 35351, 148461, -47152, -1608, 10752, 10800, 0),(7, 2702, 35351, 148262, -47032, -1608, 45056, 10800, 0),(7, 2703, 35351, 148319, -47065, -1608, 45056, 10800, 0),(7, 2704, 35351, 148380, -47103, -1608, 45056, 10800, 0),(7, 2705, 35351, 148432, -47136, -1608, 45056, 10800, 0),(7, 2706, 35350, 146652, -47383, -1613, 53248, 10800, 0),(7, 2707, 35350, 146686, -47362, -1613, 53248, 10800, 0),(7, 2708, 35350, 146721, -47339, -1613, 53248, 10800, 0),(7, 2709, 35350, 146790, -47295, -1613, 53248, 10800, 0),(7, 2710, 35350, 146754, -47318, -1613, 53248, 10800, 0),(7, 2711, 35343, 146681, -47428, -1613, 53248, 10800, 0),(7, 2712, 35343, 146716, -47407, -1613, 53248, 10800, 0),(7, 2713, 35343, 146750, -47384, -1613, 53248, 10800, 0),(7, 2714, 35343, 146819, -47340, -1613, 53248, 10800, 0),(7, 2715, 35343, 146783, -47363, -1613, 53248, 10800, 0),(7, 2716, 35350, 148136, -47292, -1613, 45056, 10800, 0),(7, 2717, 35350, 148175, -47313, -1613, 45056, 10800, 0),(7, 2718, 35350, 148215, -47335, -1613, 45056, 10800, 0),(7, 2719, 35350, 148251, -47357, -1613, 45056, 10800, 0),(7, 2720, 35350, 148284, -47378, -1613, 45056, 10800, 0),(7, 2721, 35343, 148114, -47328, -1613, 45056, 10800, 0),(7, 2722, 35343, 148152, -47348, -1613, 45056, 10800, 0),(7, 2723, 35343, 148193, -47371, -1613, 45056, 10800, 0),(7, 2724, 35343, 148228, -47393, -1613, 45056, 10800, 0),(7, 2725, 35343, 148262, -47414, -1613, 45056, 10800, 0),(7, 2726, 35350, 147101, -50056, -2128, 30048, 10800, 0),(7, 2727, 35350, 147111, -50022, -2128, 30048, 10800, 0),(7, 2728, 35350, 147119, -49988, -2128, 30048, 10800, 0),(7, 2729, 35350, 147127, -49956, -2128, 30048, 10800, 0),(7, 2730, 35350, 147137, -49923, -2128, 30048, 10800, 0),(7, 2731, 35350, 147144, -49894, -2128, 30048, 10800, 0),(7, 2732, 35350, 147153, -49860, -2128, 30048, 10800, 0),(7, 2733, 35343, 147132, -50052, -2128, 30048, 10800, 0),(7, 2734, 35343, 147141, -50017, -2128, 30048, 10800, 0),(7, 2735, 35343, 147150, -49983, -2128, 30048, 10800, 0),(7, 2736, 35343, 147158, -49951, -2128, 30048, 10800, 0),(7, 2737, 35343, 147168, -49918, -2128, 30048, 10800, 0),(7, 2738, 35343, 147175, -49889, -2128, 30048, 10800, 0),(7, 2739, 35343, 147184, -49855, -2128, 30048, 10800, 0),(7, 2740, 35350, 147782, -49845, -2128, 68248, 10800, 0),(7, 2741, 35350, 147791, -49879, -2128, 68248, 10800, 0),(7, 2742, 35350, 147801, -49913, -2128, 68248, 10800, 0),(7, 2743, 35350, 147809, -49945, -2128, 68248, 10800, 0),(7, 2744, 35350, 147817, -49978, -2128, 68248, 10800, 0),(7, 2745, 35350, 147826, -50007, -2128, 68248, 10800, 0),(7, 2746, 35350, 147835, -50041, -2128, 68248, 10800, 0),(7, 2747, 35343, 147750, -49842, -2128, 68248, 10800, 0),(7, 2748, 35343, 147760, -49877, -2128, 68248, 10800, 0),(7, 2749, 35343, 147769, -49911, -2128, 68248, 10800, 0),(7, 2750, 35343, 147777, -49943, -2128, 68248, 10800, 0),(7, 2751, 35343, 147785, -49975, -2128, 68248, 10800, 0),(7, 2752, 35343, 147794, -50005, -2128, 68248, 10800, 0),(7, 2753, 35343, 147803, -50038, -2128, 68248, 10800, 0),(7, 2754, 35351, 146896, -49631, -2125, 43520, 10800, 0),(7, 2755, 35351, 146934, -49653, -2125, 43520, 10800, 0),(7, 2756, 35351, 146971, -49674, -2125, 43520, 10800, 0),(7, 2757, 35351, 147006, -49695, -2125, 43520, 10800, 0),(7, 2758, 35351, 147041, -49715, -2125, 43520, 10800, 0),(7, 2759, 35351, 147081, -49736, -2125, 43520, 10800, 0),(7, 2760, 35351, 147863, -49743, -2125, 54616, 10800, 0),(7, 2761, 35351, 147900, -49720, -2125, 54616, 10800, 0),(7, 2762, 35351, 147937, -49698, -2125, 54616, 10800, 0),(7, 2763, 35351, 147973, -49677, -2125, 54616, 10800, 0),(7, 2764, 35351, 148007, -49656, -2125, 54616, 10800, 0),(7, 2765, 35351, 148044, -49632, -2125, 54616, 10800, 0),(7, 2766, 35350, 145837, -50098, -1601, 16312, 10800, 0),(7, 2767, 35350, 145869, -50098, -1601, 16312, 10800, 0),(7, 2768, 35350, 145900, -50098, -1601, 16312, 10800, 0),(7, 2769, 35350, 145931, -50098, -1601, 16312, 10800, 0),(7, 2770, 35350, 145963, -50098, -1601, 16312, 10800, 0),(7, 2771, 35350, 145994, -50098, -1601, 16312, 10800, 0),(7, 2772, 35350, 146026, -50098, -1601, 16312, 10800, 0),(7, 2773, 35350, 146057, -50098, -1601, 16312, 10800, 0),(7, 2774, 35343, 145852, -50136, -1601, 16312, 10800, 0),(7, 2775, 35343, 145884, -50136, -1601, 16312, 10800, 0),(7, 2776, 35343, 145915, -50136, -1601, 16312, 10800, 0),(7, 2777, 35343, 145946, -50136, -1601, 16312, 10800, 0),(7, 2778, 35343, 145978, -50136, -1601, 16312, 10800, 0),(7, 2779, 35343, 146010, -50136, -1601, 16312, 10800, 0),(7, 2780, 35343, 146041, -50136, -1601, 16312, 10800, 0),(7, 2781, 35343, 146072, -50136, -1601, 16312, 10800, 0),(7, 2782, 35343, 145850, -50177, -1601, 16312, 10800, 0),(7, 2783, 35341, 145882, -50177, -1601, 16312, 10800, 0),(7, 2784, 35343, 145913, -50177, -1601, 16312, 10800, 0),(7, 2785, 35343, 145944, -50177, -1601, 16312, 10800, 0),(7, 2786, 35326, 145976, -50177, -1601, 16312, 10800, 0),(7, 2787, 35343, 146007, -50177, -1601, 16312, 10800, 0),(7, 2788, 35341, 146039, -50177, -1601, 16312, 10800, 0),(7, 2789, 35325, 146070, -50177, -1601, 16312, 10800, 0),(7, 2790, 35350, 148877, -50096, -1601, 16312, 10800, 0),(7, 2791, 35350, 148909, -50096, -1601, 16312, 10800, 0),(7, 2792, 35350, 148940, -50096, -1601, 16312, 10800, 0),(7, 2793, 35350, 148971, -50096, -1601, 16312, 10800, 0),(7, 2794, 35350, 149003, -50096, -1601, 16312, 10800, 0),(7, 2795, 35350, 149034, -50096, -1601, 16312, 10800, 0),(7, 2796, 35350, 149066, -50096, -1601, 16312, 10800, 0),(7, 2797, 35350, 149097, -50096, -1601, 16312, 10800, 0),(7, 2798, 35343, 148862, -50132, -1601, 16312, 10800, 0),(7, 2799, 35343, 148894, -50132, -1601, 16312, 10800, 0),(7, 2800, 35343, 148925, -50132, -1601, 16312, 10800, 0),(7, 2801, 35343, 148956, -50132, -1601, 16312, 10800, 0),(7, 2802, 35343, 148988, -50132, -1601, 16312, 10800, 0),(7, 2803, 35343, 149020, -50132, -1601, 16312, 10800, 0),(7, 2804, 35343, 149051, -50132, -1601, 16312, 10800, 0),(7, 2805, 35343, 149082, -50132, -1601, 16312, 10800, 0),(7, 2806, 35324, 148860, -50174, -1601, 16312, 120, 0),(7, 2807, 35341, 148892, -50174, -1601, 16312, 10800, 0),(7, 2808, 35343, 148923, -50174, -1601, 16312, 10800, 0),(7, 2809, 35326, 148954, -50174, -1601, 16312, 10800, 0),(7, 2810, 35343, 148986, -50174, -1601, 16312, 10800, 0),(7, 2811, 35343, 149017, -50174, -1601, 16312, 10800, 0),(7, 2812, 35341, 149049, -50174, -1601, 16312, 10800, 0),(7, 2813, 35343, 149080, -50174, -1601, 16312, 10800, 0),(7, 2814, 35330, 145969, -50642, -1601, 16312, 120, 0),(7, 2815, 35330, 146017, -50642, -1601, 16312, 120, 0),(7, 2816, 35330, 146068, -50642, -1601, 16312, 120, 0),(7, 2817, 35330, 146117, -50642, -1601, 16312, 120, 0),(7, 2818, 35330, 146168, -50642, -1601, 16312, 120, 0),(7, 2819, 35330, 146217, -50642, -1601, 16312, 120, 0),(7, 2820, 35330, 146268, -50642, -1601, 16312, 120, 0),(7, 2821, 35330, 146316, -50642, -1601, 16312, 120, 0),(7, 2822, 35326, 145965, -50678, -1601, 16312, 10800, 0),(7, 2823, 35327, 146014, -50678, -1601, 16312, 120, 0),(7, 2824, 35328, 146065, -50678, -1601, 16312, 120, 0),(7, 2825, 35328, 146113, -50678, -1601, 16312, 120, 0),(7, 2826, 35328, 146164, -50678, -1601, 16312, 120, 0),(7, 2827, 35328, 146213, -50678, -1601, 16312, 120, 0),(7, 2828, 35327, 146264, -50678, -1601, 16312, 120, 0),(7, 2829, 35326, 146313, -50678, -1601, 16312, 10800, 0),(7, 2830, 35351, 146443, -50721, -1601, 16312, 10800, 0),(7, 2831, 35351, 146492, -50721, -1601, 16312, 10800, 0),(7, 2832, 35351, 146543, -50721, -1601, 16312, 10800, 0),(7, 2833, 35351, 146592, -50721, -1601, 16312, 10800, 0),(7, 2834, 35351, 146643, -50721, -1601, 16312, 10800, 0),(7, 2835, 35351, 146691, -50721, -1601, 16312, 10800, 0),(7, 2836, 35351, 146742, -50721, -1601, 16312, 10800, 0),(7, 2837, 35351, 146791, -50721, -1601, 16312, 10800, 0),(7, 2838, 35330, 148660, -50692, -1601, 16312, 120, 0),(7, 2839, 35330, 148709, -50692, -1601, 16312, 120, 0),(7, 2840, 35330, 148759, -50692, -1601, 16312, 120, 0),(7, 2841, 35330, 148808, -50692, -1601, 16312, 120, 0),(7, 2842, 35330, 148859, -50692, -1601, 16312, 120, 0),(7, 2843, 35330, 148908, -50692, -1601, 16312, 120, 0),(7, 2844, 35330, 148959, -50692, -1601, 16312, 120, 0),(7, 2845, 35330, 149008, -50692, -1601, 16312, 120, 0),(7, 2846, 35326, 148656, -50728, -1601, 16312, 10800, 0),(7, 2847, 35327, 148705, -50728, -1601, 16312, 120, 0),(7, 2848, 35328, 148756, -50728, -1601, 16312, 120, 0),(7, 2849, 35328, 148805, -50728, -1601, 16312, 120, 0),(7, 2850, 35328, 148856, -50728, -1601, 16312, 120, 0),(7, 2851, 35328, 148904, -50728, -1601, 16312, 120, 0),(7, 2852, 35327, 148955, -50728, -1601, 16312, 120, 0),(7, 2853, 35326, 149004, -50728, -1601, 16312, 10800, 0),(7, 2854, 35351, 148144, -50736, -1601, 16312, 10800, 0),(7, 2855, 35351, 148193, -50736, -1601, 16312, 10800, 0),(7, 2856, 35351, 148244, -50736, -1601, 16312, 10800, 0),(7, 2857, 35351, 148293, -50736, -1601, 16312, 10800, 0),(7, 2858, 35351, 148344, -50736, -1601, 16312, 10800, 0),(7, 2859, 35351, 148392, -50736, -1601, 16312, 10800, 0),(7, 2860, 35351, 148443, -50736, -1601, 16312, 10800, 0),(7, 2861, 35351, 148492, -50736, -1601, 16312, 10800, 0),(7, 2862, 35340, 145779, -50371, -1341, 0, 10800, 0),(7, 2863, 35351, 145779, -50325, -1341, 0, 10800, 0),(7, 2864, 35341, 145778, -50281, -1341, 0, 10800, 0),(7, 2865, 35351, 145779, -50419, -1341, 0, 10800, 0),(7, 2866, 35351, 145778, -50469, -1341, 0, 10800, 0),(7, 2867, 35351, 145778, -50606, -1341, 0, 10800, 0),(7, 2868, 35351, 145777, -50561, -1341, 0, 10800, 0),(7, 2869, 35351, 145778, -50513, -1341, 0, 10800, 0),(7, 2870, 35340, 149150, -50389, -1341, 32768, 10800, 0),(7, 2871, 35351, 149150, -50344, -1341, 32768, 10800, 0),(7, 2872, 35341, 149150, -50299, -1341, 32768, 10800, 0),(7, 2873, 35351, 149150, -50437, -1341, 32768, 10800, 0),(7, 2874, 35351, 149150, -50488, -1341, 32768, 10800, 0),(7, 2875, 35351, 149150, -50624, -1341, 32768, 10800, 0),(7, 2876, 35351, 149150, -50579, -1341, 32768, 10800, 0),(7, 2877, 35351, 149150, -50531, -1341, 32768, 10800, 0),(7, 2878, 35340, 146188, -50876, -1341, 16416, 10800, 0),(7, 2879, 35351, 146243, -50876, -1341, 16416, 10800, 0),(7, 2880, 35341, 146363, -50876, -1341, 16416, 10800, 0),(7, 2881, 35351, 146302, -50876, -1341, 16416, 10800, 0),(7, 2882, 35351, 146423, -50876, -1341, 16416, 10800, 0),(7, 2883, 35351, 146480, -50876, -1341, 16416, 10800, 0),(7, 2884, 35351, 146590, -50876, -1341, 16416, 10800, 0),(7, 2885, 35340, 146533, -50876, -1341, 16416, 10800, 0),(7, 2886, 35340, 148317, -50871, -1341, 16416, 10800, 0),(7, 2887, 35351, 148372, -50871, -1341, 16416, 10800, 0),(7, 2888, 35341, 148491, -50871, -1341, 16416, 10800, 0),(7, 2889, 35351, 148430, -50871, -1341, 16416, 10800, 0),(7, 2890, 35351, 148551, -50871, -1341, 16416, 10800, 0),(7, 2891, 35351, 148608, -50871, -1341, 16416, 10800, 0),(7, 2892, 35351, 148719, -50871, -1341, 16416, 10800, 0),(7, 2893, 35340, 148661, -50871, -1341, 16416, 10800, 0),(7, 2894, 35351, 146413, -50047, -1341, 49152, 10800, 0),(7, 2895, 35351, 146473, -50048, -1341, 49152, 10800, 0),(7, 2896, 35351, 146527, -50048, -1341, 49152, 10800, 0),(7, 2897, 35340, 146642, -50049, -1341, 49152, 10800, 0),(7, 2898, 35351, 146585, -50048, -1341, 49152, 10800, 0),(7, 2899, 35351, 146755, -50050, -1341, 49152, 10800, 0),(7, 2900, 35351, 146697, -50050, -1341, 49152, 10800, 0),(7, 2901, 35351, 146809, -50051, -1341, 49152, 10800, 0),(7, 2902, 35351, 148155, -50045, -1341, 49152, 10800, 0),(7, 2903, 35351, 148215, -50045, -1341, 49152, 10800, 0),(7, 2904, 35351, 148269, -50046, -1341, 49152, 10800, 0),(7, 2905, 35340, 148384, -50046, -1341, 49152, 10800, 0),(7, 2906, 35351, 148328, -50046, -1341, 49152, 10800, 0),(7, 2907, 35351, 148497, -50048, -1341, 49152, 10800, 0),(7, 2908, 35351, 148439, -50047, -1341, 49152, 10800, 0),(7, 2909, 35351, 148552, -50048, -1341, 49152, 10800, 0),(9, 2910, 35516, 79062, -154856, 122, 15541, 60, 0),(9, 2911, 35516, 79011, -154872, 122, 14451, 60, 0),(9, 2912, 35516, 78957, -154862, 122, 16881, 60, 0),(9, 2913, 35516, 78907, -154864, 122, 13107, 60, 0),(9, 2914, 35516, 78991, -154187, 122, 16785, 60, 0),(9, 2915, 35517, 76142, -154189, 122, 15666, 60, 0),(9, 2916, 35518, 75987, -154843, 122, 15850, 60, 0),(9, 2917, 35518, 76320, -154840, 122, 14962, 60, 0),(9, 2918, 35518, 76055, -154192, 122, 16948, 60, 0),(9, 2919, 35518, 79108, -154860, 122, 19389, 60, 0),(9, 2920, 35518, 78853, -154869, 122, 15163, 60, 0),(9, 2921, 35518, 79082, -154188, 122, 14451, 60, 0),(9, 2922, 35519, 76036, -154842, 122, 16384, 60, 0),(9, 2923, 35519, 76271, -154836, 122, 16176, 60, 0),(9, 2924, 35520, 76078, -154842, 122, 16819, 60, 0),(9, 2925, 35520, 76123, -154837, 122, 18617, 60, 0),(9, 2926, 35520, 76168, -154837, 122, 19199, 60, 0),(9, 2927, 35520, 76223, -154831, 122, 16801, 60, 0),(9, 2928, 35522, 75988, -154795, 122, 14904, 60, 0),(9, 2929, 35522, 76035, -154792, 122, 17865, 60, 0),(9, 2930, 35522, 76077, -154792, 122, 17424, 60, 0),(9, 2931, 35522, 76124, -154791, 122, 15613, 60, 0),(9, 2932, 35522, 76166, -154793, 122, 16771, 60, 0),(9, 2933, 35522, 76221, -154788, 122, 16785, 60, 0),(9, 2934, 35522, 76270, -154786, 122, 16087, 60, 0),(9, 2935, 35522, 76318, -154785, 122, 17359, 60, 0),(9, 2936, 35522, 79156, -154805, 122, 16384, 60, 0),(9, 2937, 35522, 79111, -154809, 122, 14604, 60, 0),(9, 2938, 35522, 79063, -154815, 122, 13380, 60, 0),(9, 2939, 35522, 79010, -154825, 122, 16700, 60, 0),(9, 2940, 35522, 78962, -154823, 101, 16785, 60, 0),(9, 2941, 35522, 78912, -154823, 122, 16384, 60, 0),(9, 2942, 35522, 78855, -154827, 122, 17289, 60, 0),(9, 2943, 35522, 78806, -154829, 122, 11935, 60, 0),(9, 2944, 35531, 77213, -149857, -358, 62180, 60, 0),(9, 2945, 35531, 77566, -149497, -358, 14054, 60, 0),(9, 2946, 35531, 75901, -151796, 121, 28435, 60, 0),(9, 2947, 35531, 79209, -151802, 121, 4473, 60, 0),(9, 2948, 35532, 76697, -154094, 382, 49586, 60, 0),(9, 2949, 35532, 76864, -154946, 382, 17723, 60, 0),(9, 2950, 35532, 76490, -154938, 382, 16147, 60, 0),(9, 2951, 35532, 75870, -154537, 382, 65233, 60, 0),(9, 2952, 35532, 78125, -154933, 382, 22390, 60, 0),(9, 2953, 35532, 78601, -154939, 382, 14138, 60, 0),(9, 2954, 35532, 79251, -154476, 382, 33635, 60, 0),(9, 2955, 35532, 76910, -149714, -17, 18039, 60, 0),(9, 2956, 35532, 76872, -149719, -37, 18335, 60, 0),(9, 2957, 35532, 76484, -149616, -19, 16633, 60, 0),(9, 2958, 35532, 76508, -149661, -17, 16384, 60, 0),(9, 2959, 35532, 76403, -149710, -17, 18684, 60, 0),(9, 2960, 35532, 75587, -149642, -17, 16384, 60, 0),(9, 2961, 35532, 75479, -149687, -17, 29598, 60, 0),(9, 2962, 35532, 75612, -149682, -17, 23008, 60, 0),(9, 2963, 35532, 75507, -149727, -17, 27982, 60, 0),(9, 2964, 35532, 74786, -151087, -17, 24614, 60, 0),(9, 2965, 35532, 74849, -151115, -17, 15439, 60, 0),(9, 2966, 35532, 74804, -151215, -17, 32598, 60, 0),(9, 2967, 35532, 74509, -151788, -17, 29315, 60, 0),(9, 2968, 35532, 74571, -151793, -17, 25670, 60, 0),(9, 2969, 35532, 74542, -151904, -17, 34211, 60, 0),(9, 2970, 35532, 77330, -149317, 366, 62495, 60, 0),(9, 2971, 35532, 77223, -149209, 366, 18586, 60, 0),(9, 2972, 35532, 77201, -149289, 366, 18715, 60, 0),(9, 2973, 35532, 77892, -149214, 366, 12468, 60, 0),(9, 2974, 35532, 77915, -149331, 366, 10081, 60, 0),(9, 2975, 35532, 77779, -149334, 366, 21915, 60, 0),(9, 2976, 35532, 76136, -151775, 117, 28517, 60, 0),(9, 2977, 35532, 76157, -151787, 117, 28181, 60, 0),(9, 2978, 35532, 76041, -151999, 117, 28545, 60, 0),(9, 2979, 35532, 76062, -152012, 117, 28651, 60, 0),(9, 2980, 35532, 79068, -152019, 117, 2903, 60, 0),(9, 2981, 35532, 79038, -152032, 110, 5889, 60, 0),(9, 2982, 35532, 78917, -151775, 110, 5193, 60, 0),(9, 2983, 35532, 78884, -151766, 110, 5567, 60, 0),(9, 2984, 35532, 78273, -149718, -17, 13829, 60, 0),(9, 2985, 35532, 78225, -149712, -17, 12597, 60, 0),(9, 2986, 35532, 78634, -149626, -17, 18311, 60, 0),(9, 2987, 35532, 78601, -149707, -17, 18443, 60, 0),(9, 2988, 35532, 78697, -149715, -17, 6085, 60, 0),(9, 2989, 35532, 79563, -149790, -17, 10068, 60, 0),(9, 2990, 35532, 79537, -149833, -17, 8435, 60, 0),(9, 2991, 35532, 79491, -149702, -17, 11345, 60, 0),(9, 2992, 35532, 79462, -149744, -17, 12765, 60, 0),(9, 2993, 35532, 80304, -151217, -17, 1723, 60, 0),(9, 2994, 35532, 80332, -151083, -17, 9129, 60, 0),(9, 2995, 35532, 80263, -151114, -17, 10848, 60, 0),(9, 2996, 35532, 80551, -151924, -17, 60850, 60, 0),(9, 2997, 35532, 80600, -151798, -17, 5323, 60, 0),(9, 2998, 35532, 80515, -151805, -17, 6075, 60, 0),(9, 2999, 35533, 76695, -154945, 382, 15596, 60, 0),(9, 3000, 35533, 75863, -154413, 382, 1723, 60, 0),(9, 3001, 35533, 75960, -154202, 122, 19264, 60, 0),(9, 3002, 35533, 76113, -154192, 122, 17650, 60, 0),(9, 3003, 35533, 78369, -154939, 382, 13829, 60, 0),(9, 3004, 35533, 78479, -154106, 382, 50426, 60, 0),(9, 3005, 35533, 79240, -154347, 382, 33870, 60, 0),(9, 3006, 35533, 79173, -154190, 122, 14167, 60, 0),(9, 3007, 35533, 79019, -154187, 122, 14434, 60, 0),(9, 3008, 35533, 78034, -149889, -300, 24261, 60, 0),(9, 3009, 35533, 77110, -149863, -316, 387, 60, 0),(9, 3010, 35533, 76718, -149806, -17, 52961, 60, 0),(9, 3011, 35533, 76126, -151742, 117, 27211, 60, 0),(9, 3012, 35533, 76021, -152022, 117, 27495, 60, 0),(9, 3013, 35533, 79058, -152046, 117, 3713, 60, 0),(9, 3014, 35533, 78936, -151742, 117, 4511, 60, 0),(9, 3015, 35533, 78390, -149812, -17, 45442, 60, 0),(9, 3016, 35535, 75927, -154186, 122, 16771, 60, 0),(9, 3017, 35535, 75960, -154173, 122, 16229, 60, 0),(9, 3018, 35535, 75993, -154168, 122, 18330, 60, 0),(9, 3019, 35535, 76027, -154172, 122, 18107, 60, 0),(9, 3020, 35535, 76061, -154168, 122, 17539, 60, 0),(9, 3021, 35535, 76090, -154169, 122, 19686, 60, 0),(9, 3022, 35535, 76115, -154170, 122, 15568, 60, 0),(9, 3023, 35535, 76141, -154165, 122, 13029, 60, 0),(9, 3024, 35535, 75924, -154204, 122, 17128, 60, 0),(9, 3025, 35535, 75989, -154198, 122, 27132, 60, 0),(9, 3026, 35535, 76023, -154197, 122, 15806, 60, 0),(9, 3027, 35535, 76087, -154187, 122, 18795, 60, 0),(9, 3028, 35535, 79159, -154849, 122, 16188, 60, 0),(9, 3029, 35535, 78805, -154862, 122, 13029, 60, 0),(9, 3030, 35535, 79199, -154176, 122, 15921, 60, 0),(9, 3031, 35535, 79174, -154172, 122, 15962, 60, 0),(9, 3032, 35535, 79145, -154172, 122, 16384, 60, 0),(9, 3033, 35535, 79112, -154168, 122, 15244, 60, 0),(9, 3034, 35535, 79081, -154165, 122, 14783, 60, 0),(9, 3035, 35535, 79047, -154166, 122, 16236, 60, 0),(9, 3036, 35535, 79022, -154165, 122, 15619, 60, 0),(9, 3037, 35535, 78991, -154161, 122, 15126, 60, 0),(9, 3038, 35535, 79200, -154196, 122, 16866, 60, 0),(9, 3039, 35535, 79145, -154190, 122, 17919, 60, 0),(9, 3040, 35535, 79113, -154192, 122, 15087, 60, 0),(9, 3041, 35535, 79050, -154187, 122, 15480, 60, 0),(9, 3042, 35535, 77703, -149698, -358, 14434, 60, 0),(9, 3043, 35535, 77668, -149694, -358, 14292, 60, 0),(9, 3044, 35535, 77636, -149692, -358, 15772, 60, 0),(9, 3045, 35535, 77604, -149687, -358, 14509, 60, 0),(9, 3046, 35535, 77573, -149689, -358, 15067, 60, 0),(9, 3047, 35535, 77536, -149683, -358, 14662, 60, 0),(9, 3048, 35535, 77503, -149687, -358, 14904, 60, 0),(9, 3049, 35535, 77470, -149685, -358, 15571, 60, 0),(9, 3050, 35535, 77437, -149683, -358, 18489, 60, 0),(9, 3051, 35535, 77702, -149539, -358, 18061, 60, 0),(9, 3052, 35535, 77671, -149548, -379, 12873, 60, 0),(9, 3053, 35535, 77636, -149550, -358, 13303, 60, 0),(9, 3054, 35535, 77587, -149549, -358, 16710, 60, 0),(9, 3055, 35535, 77547, -149559, -358, 19287, 60, 0),(9, 3056, 35535, 77513, -149561, -358, 9876, 60, 0),(9, 3057, 35535, 77485, -149559, -358, 13029, 60, 0),(9, 3058, 35535, 77454, -149562, -358, 11548, 60, 0),(9, 3059, 35535, 77417, -149562, -358, 14509, 60, 0),(9, 3060, 35535, 76947, -151454, 110, 55842, 60, 0),(9, 3061, 35535, 76911, -151479, 110, 56098, 60, 0),(9, 3062, 35535, 76866, -151506, 110, 54544, 60, 0),(9, 3063, 35535, 76833, -151527, 110, 54961, 60, 0),(9, 3064, 35535, 76805, -151557, 110, 54393, 60, 0),(9, 3065, 35535, 75950, -151765, 121, 28694, 60, 0),(9, 3066, 35535, 75966, -151774, 121, 27222, 60, 0),(9, 3067, 35535, 75985, -151784, 121, 28996, 60, 0),(9, 3068, 35535, 75928, -151784, 121, 26716, 60, 0),(9, 3069, 35535, 75946, -151794, 121, 27510, 60, 0),(9, 3070, 35535, 75968, -151803, 121, 28258, 60, 0),(9, 3071, 35535, 75911, -151811, 121, 28077, 60, 0),(9, 3072, 35535, 75927, -151819, 121, 28154, 60, 0),(9, 3073, 35535, 75961, -151832, 121, 28771, 60, 0),(9, 3074, 35535, 75912, -151850, 121, 28422, 60, 0),(9, 3075, 35535, 75932, -151861, 121, 27760, 60, 0),(9, 3076, 35535, 75950, -151869, 121, 28676, 60, 0),(9, 3077, 35535, 77239, -154111, -401, 31794, 60, 0),(9, 3078, 35535, 77240, -154079, -401, 30835, 60, 0),(9, 3079, 35535, 77244, -154051, -401, 31163, 60, 0),(9, 3080, 35535, 77254, -154023, -401, 30749, 60, 0),(9, 3081, 35535, 77251, -153994, -401, 33083, 60, 0),(9, 3082, 35535, 77263, -153968, -401, 30465, 60, 0),(9, 3083, 35535, 77273, -153943, -401, 31046, 60, 0),(9, 3084, 35535, 75815, -152203, -655, 30255, 60, 0),(9, 3085, 35535, 75814, -152233, -656, 32042, 60, 0),(9, 3086, 35535, 75811, -152262, -656, 32334, 60, 0),(9, 3087, 35535, 75811, -152293, -655, 31950, 60, 0),(9, 3088, 35535, 75811, -152324, -657, 32439, 60, 0),(9, 3089, 35535, 75807, -152362, -657, 33494, 60, 0),(9, 3090, 35535, 78188, -151391, 110, 43370, 60, 0),(9, 3091, 35535, 78220, -151414, 110, 42758, 60, 0),(9, 3092, 35535, 78262, -151442, 110, 44928, 60, 0),(9, 3093, 35535, 78300, -151470, 110, 44552, 60, 0),(9, 3094, 35535, 78342, -151496, 110, 44812, 60, 0),(9, 3095, 35535, 77864, -154130, -401, 64475, 60, 0),(9, 3096, 35535, 77862, -154095, -401, 1481, 60, 0),(9, 3097, 35535, 77855, -154067, -401, 1974, 60, 0),(9, 3098, 35535, 77845, -154038, -401, 232, 60, 0),(9, 3099, 35535, 77839, -154007, -401, 0, 60, 0),(9, 3100, 35535, 77829, -153978, -401, 1771, 60, 0),(9, 3101, 35535, 77815, -153948, -401, 1646, 60, 0),(9, 3102, 35535, 79304, -152404, -657, 65113, 60, 0),(9, 3103, 35535, 79307, -152374, -657, 1440, 60, 0),(9, 3104, 35535, 79307, -152345, -657, 64238, 60, 0),(9, 3105, 35535, 79308, -152307, -657, 63902, 60, 0),(9, 3106, 35535, 79308, -152263, -657, 64481, 60, 0),(9, 3107, 35535, 79312, -152225, -657, 65242, 60, 0),(9, 3108, 35535, 79201, -151859, 121, 4067, 60, 0),(9, 3109, 35535, 79195, -151835, 121, 6301, 60, 0),(9, 3110, 35535, 79182, -151813, 121, 5320, 60, 0),(9, 3111, 35535, 79174, -151781, 121, 4521, 60, 0),(9, 3112, 35535, 79147, -151793, 121, 5912, 60, 0),(9, 3113, 35535, 79118, -151809, 121, 3853, 60, 0),(9, 3114, 35535, 79168, -151816, 121, 3839, 60, 0),(9, 3115, 35535, 79125, -151833, 121, 4943, 60, 0),(9, 3116, 35535, 79179, -151840, 121, 5308, 60, 0),(9, 3117, 35535, 79147, -151854, 121, 5011, 60, 0),(9, 3118, 35535, 79183, -151868, 121, 4139, 60, 0),(9, 3119, 35535, 79154, -151879, 121, 4432, 60, 0),(9, 3120, 35542, 76143, -154139, 122, 15453, 60, 0),(9, 3121, 35542, 76117, -154146, 122, 15153, 60, 0),(9, 3122, 35542, 76088, -154144, 122, 15493, 60, 0),(9, 3123, 35542, 76061, -154141, 122, 15248, 60, 0),(9, 3124, 35542, 76028, -154146, 122, 15046, 60, 0),(9, 3125, 35542, 75996, -154143, 122, 15103, 60, 0),(9, 3126, 35542, 75960, -154143, 122, 16955, 60, 0),(9, 3127, 35542, 75929, -154145, 122, 16384, 60, 0),(9, 3128, 35542, 79203, -154141, 122, 15840, 60, 0),(9, 3129, 35542, 79174, -154147, 122, 15723, 60, 0),(9, 3130, 35542, 79144, -154150, 122, 15214, 60, 0),(9, 3131, 35542, 79113, -154148, 122, 15781, 60, 0),(9, 3132, 35542, 79081, -154147, 122, 16021, 60, 0),(9, 3133, 35542, 79051, -154146, 122, 16906, 60, 0),(9, 3134, 35542, 79024, -154149, 122, 18565, 60, 0),(9, 3135, 35542, 78992, -154146, 122, 16384, 60, 0),(9, 3136, 35542, 77898, -149967, -358, 36306, 60, 0),(9, 3137, 35542, 77902, -149942, -358, 34169, 60, 0),(9, 3138, 35542, 77907, -149919, -358, 32768, 60, 0),(9, 3139, 35542, 77914, -149892, -358, 31152, 60, 0),(9, 3140, 35542, 77918, -149865, -358, 33989, 60, 0),(9, 3141, 35542, 77920, -149839, -358, 34948, 60, 0),(9, 3142, 35542, 77923, -149814, -358, 38901, 60, 0),(9, 3143, 35542, 77921, -149778, -358, 29103, 60, 0),(9, 3144, 35542, 77922, -149756, -358, 39479, 60, 0),(9, 3145, 35542, 77187, -149761, -356, 65062, 60, 0),(9, 3146, 35542, 77187, -149777, -358, 4837, 60, 0),(9, 3147, 35542, 77186, -149794, -356, 10251, 60, 0),(9, 3148, 35542, 77185, -149821, -356, 3539, 60, 0),(9, 3149, 35542, 77185, -149843, -356, 4837, 60, 0),(9, 3150, 35542, 77187, -149873, -357, 522, 60, 0),(9, 3151, 35542, 77189, -149902, -357, 64496, 60, 0),(9, 3152, 35542, 77188, -149925, -358, 1298, 60, 0),(9, 3153, 35542, 77186, -149949, -356, 1155, 60, 0),(9, 3154, 35542, 77709, -149671, -358, 16456, 60, 0),(9, 3155, 35542, 77670, -149671, -358, 14546, 60, 0),(9, 3156, 35542, 77637, -149666, -358, 14451, 60, 0),(9, 3157, 35542, 77605, -149666, -358, 16231, 60, 0),(9, 3158, 35542, 77573, -149668, -358, 15299, 60, 0),(9, 3159, 35542, 77538, -149667, -358, 15584, 60, 0),(9, 3160, 35542, 77504, -149664, -358, 17410, 60, 0),(9, 3161, 35542, 77471, -149665, -358, 17016, 60, 0),(9, 3162, 35542, 77439, -149664, -358, 16216, 60, 0),(9, 3163, 35542, 77702, -149514, -358, 19740, 60, 0),(9, 3164, 35542, 77668, -149518, -358, 17606, 60, 0),(9, 3165, 35542, 77630, -149524, -358, 14904, 60, 0),(9, 3166, 35542, 77579, -149529, -358, 20939, 60, 0),(9, 3167, 35542, 77544, -149530, -358, 11797, 60, 0),(9, 3168, 35542, 77503, -149522, -358, 18181, 60, 0),(9, 3169, 35542, 77471, -149521, -358, 20275, 60, 0),(9, 3170, 35542, 77444, -149517, -358, 17424, 60, 0),(9, 3171, 35542, 77411, -149513, -358, 15046, 60, 0),(9, 3172, 35542, 76778, -151510, 110, 54277, 60, 0),(9, 3173, 35542, 76812, -151491, 110, 53745, 60, 0),(9, 3174, 35542, 76847, -151467, 110, 54441, 60, 0),(9, 3175, 35542, 76881, -151441, 110, 55547, 60, 0),(9, 3176, 35542, 76920, -151419, 110, 55725, 60, 0),(9, 3177, 35542, 75921, -151750, 121, 27898, 60, 0),(9, 3178, 35542, 75891, -151774, 121, 27543, 60, 0),(9, 3179, 35542, 75880, -151801, 121, 29119, 60, 0),(9, 3180, 35542, 75882, -151845, 121, 28636, 60, 0),(9, 3181, 35542, 77199, -154108, -401, 34120, 60, 0),(9, 3182, 35542, 77209, -154076, -401, 29655, 60, 0),(9, 3183, 35542, 77216, -154045, -401, 30510, 60, 0),(9, 3184, 35542, 77226, -154018, -401, 31314, 60, 0),(9, 3185, 35542, 77233, -153994, -401, 31716, 60, 0),(9, 3186, 35542, 77238, -153966, -401, 30594, 60, 0),(9, 3187, 35542, 77248, -153940, -401, 31778, 60, 0),(9, 3188, 35542, 75838, -152206, -653, 33807, 60, 0),(9, 3189, 35542, 75836, -152235, -653, 32603, 60, 0),(9, 3190, 35542, 75834, -152260, -653, 32650, 60, 0),(9, 3191, 35542, 75835, -152291, -653, 32266, 60, 0),(9, 3192, 35542, 75833, -152323, -653, 30515, 60, 0),(9, 3193, 35542, 75825, -152359, -653, 33635, 60, 0),(9, 3194, 35542, 75862, -152205, -653, 33088, 60, 0),(9, 3195, 35542, 75862, -152238, -653, 34227, 60, 0),(9, 3196, 35542, 75862, -152262, -653, 33511, 60, 0),(9, 3197, 35542, 75864, -152291, -653, 33369, 60, 0),(9, 3198, 35542, 75862, -152323, -653, 34106, 60, 0),(9, 3199, 35542, 75863, -152358, -653, 32768, 60, 0),(9, 3200, 35542, 78212, -151353, 110, 44361, 60, 0),(9, 3201, 35542, 78245, -151369, 110, 41988, 60, 0),(9, 3202, 35542, 78286, -151404, 110, 44805, 60, 0),(9, 3203, 35542, 78326, -151431, 110, 43968, 60, 0),(9, 3204, 35542, 78367, -151456, 110, 43287, 60, 0),(9, 3205, 35542, 77913, -154126, -401, 760, 60, 0),(9, 3206, 35542, 77901, -154092, -401, 2476, 60, 0),(9, 3207, 35542, 77889, -154063, -401, 1383, 60, 0),(9, 3208, 35542, 77876, -154036, -401, 213, 60, 0),(9, 3209, 35542, 77870, -154005, -401, 1797, 60, 0),(9, 3210, 35542, 77856, -153973, -401, 946, 60, 0),(9, 3211, 35542, 77843, -153943, -401, 2827, 60, 0),(9, 3212, 35542, 79392, -152408, -657, 64248, 60, 0),(9, 3213, 35542, 79386, -152377, -657, 64552, 60, 0),(9, 3214, 35542, 79386, -152343, -657, 64456, 60, 0),(9, 3215, 35542, 79383, -152301, -657, 64256, 60, 0),(9, 3216, 35542, 79381, -152265, -657, 64001, 60, 0),(9, 3217, 35542, 79371, -152222, -657, 2091, 60, 0),(9, 3218, 35542, 79352, -152404, -657, 3743, 60, 0),(9, 3219, 35542, 79348, -152377, -657, 63859, 60, 0),(9, 3220, 35542, 79348, -152346, -657, 868, 60, 0),(9, 3221, 35542, 79342, -152305, -657, 64850, 60, 0),(9, 3222, 35542, 79341, -152264, -657, 64578, 60, 0),(9, 3223, 35542, 79341, -152223, -657, 332, 60, 0),(9, 3224, 35542, 79244, -151843, 121, 3969, 60, 0),(9, 3225, 35542, 79215, -151748, 121, 3782, 60, 0),(9, 3226, 35542, 79243, -151770, 121, 4210, 60, 0),(9, 3227, 35542, 79248, -151803, 121, 3782, 60, 0),(9, 3228, 35543, 76478, -154115, 382, 48500, 60, 0),(9, 3229, 35543, 76408, -154110, 382, 48500, 60, 0),(9, 3230, 35543, 76556, -154113, 382, 48425, 60, 0),(9, 3231, 35543, 76621, -154115, 382, 49828, 60, 0),(9, 3232, 35543, 76771, -154113, 382, 50397, 60, 0),(9, 3233, 35543, 77550, -149572, -358, 16858, 60, 0),(9, 3234, 35543, 76851, -154110, 382, 47822, 60, 0),(9, 3235, 35543, 76939, -154110, 382, 51608, 60, 0),(9, 3236, 35543, 76938, -154929, 382, 12041, 60, 0),(9, 3237, 35543, 76802, -154938, 382, 18047, 60, 0),(9, 3238, 35543, 76751, -154943, 382, 15753, 60, 0),(9, 3239, 35543, 76632, -154939, 382, 17228, 60, 0),(9, 3240, 35543, 76565, -154934, 382, 17988, 60, 0),(9, 3241, 35543, 75880, -154815, 382, 63227, 60, 0),(9, 3242, 35543, 75880, -154764, 382, 1876, 60, 0),(9, 3243, 35543, 75878, -154715, 382, 766, 60, 0),(9, 3244, 35543, 75879, -154660, 382, 64096, 60, 0),(9, 3245, 35543, 75877, -154599, 382, 65238, 60, 0),(9, 3246, 35543, 75877, -154478, 382, 65382, 60, 0),(9, 3247, 35543, 77006, -154843, 122, 16666, 60, 0),(9, 3248, 35543, 76952, -154846, 122, 15394, 60, 0),(9, 3249, 35543, 76897, -154852, 122, 14220, 60, 0),(9, 3250, 35543, 76857, -154855, 122, 13959, 60, 0),(9, 3251, 35543, 76805, -154856, 122, 16384, 60, 0),(9, 3252, 35543, 76761, -154856, 122, 15370, 60, 0),(9, 3253, 35543, 76718, -154863, 122, 16059, 60, 0),(9, 3254, 35543, 76675, -154870, 122, 17814, 60, 0),(9, 3255, 35543, 78206, -154927, 382, 16545, 60, 0),(9, 3256, 35543, 78288, -154927, 382, 16696, 60, 0),(9, 3257, 35543, 78453, -154934, 382, 18383, 60, 0),(9, 3258, 35543, 78525, -154930, 382, 17238, 60, 0),(9, 3259, 35543, 78690, -154929, 382, 18309, 60, 0),(9, 3260, 35543, 78661, -154108, 382, 49673, 60, 0),(9, 3261, 35543, 78609, -154103, 382, 49483, 60, 0),(9, 3262, 35543, 78552, -154105, 382, 50097, 60, 0),(9, 3263, 35543, 78411, -154115, 382, 50544, 60, 0),(9, 3264, 35543, 78349, -154115, 382, 48421, 60, 0),(9, 3265, 35543, 78290, -154114, 382, 50490, 60, 0),(9, 3266, 35543, 78221, -154114, 382, 48145, 60, 0),(9, 3267, 35543, 79239, -154788, 382, 32471, 60, 0),(9, 3268, 35543, 79235, -154722, 382, 35413, 60, 0),(9, 3269, 35543, 79236, -154652, 382, 34771, 60, 0),(9, 3270, 35543, 79234, -154592, 382, 34538, 60, 0),(9, 3271, 35543, 79235, -154538, 382, 33338, 60, 0),(9, 3272, 35543, 79246, -154413, 382, 33979, 60, 0),(9, 3273, 35543, 78168, -154841, 122, 17786, 60, 0),(9, 3274, 35543, 78225, -154848, 122, 17399, 60, 0),(9, 3275, 35543, 78278, -154847, 122, 19119, 60, 0),(9, 3276, 35543, 78332, -154855, 122, 21980, 60, 0),(9, 3277, 35543, 78388, -154856, 122, 20214, 60, 0),(9, 3278, 35543, 78435, -154854, 122, 18192, 60, 0),(9, 3279, 35543, 78487, -154860, 122, 21478, 60, 0),(9, 3280, 35543, 78540, -154861, 122, 16893, 60, 0),(9, 3281, 35543, 78582, -154862, 122, 16666, 60, 0),(9, 3282, 35543, 77930, -149963, -353, 28258, 60, 0),(9, 3283, 35543, 77934, -149946, -351, 36123, 60, 0),(9, 3284, 35543, 77935, -149918, -351, 32768, 60, 0),(9, 3285, 35543, 77940, -149892, -348, 34302, 60, 0),(9, 3286, 35543, 77944, -149866, -346, 37976, 60, 0),(9, 3287, 35543, 77946, -149836, -345, 32768, 60, 0),(9, 3288, 35543, 77948, -149810, -344, 31901, 60, 0),(9, 3289, 35543, 77949, -149780, -343, 33202, 60, 0),(9, 3290, 35543, 77948, -149752, -344, 36636, 60, 0),(9, 3291, 35543, 77165, -149760, -344, 6134, 60, 0),(9, 3292, 35543, 77155, -149782, -340, 2556, 60, 0),(9, 3293, 35543, 77156, -149807, -340, 613, 60, 0),(9, 3294, 35543, 77157, -149831, -369, 417, 60, 0),(9, 3295, 35543, 77153, -149852, -338, 3356, 60, 0),(9, 3296, 35543, 77158, -149877, -341, 65082, 60, 0),(9, 3297, 35543, 77158, -149903, -342, 833, 60, 0),(9, 3298, 35543, 77158, -149923, -342, 7392, 60, 0),(9, 3299, 35543, 77156, -149953, -341, 57344, 60, 0),(9, 3300, 35543, 77701, -149556, -358, 18039, 60, 0),(9, 3301, 35543, 77674, -149564, -358, 15002, 60, 0),(9, 3302, 35543, 77640, -149567, -358, 19941, 60, 0),(9, 3303, 35543, 77596, -149564, -358, 17146, 60, 0),(9, 3304, 35543, 77512, -149576, -358, 16828, 60, 0),(9, 3305, 35543, 77487, -149569, -358, 12962, 60, 0),(9, 3306, 35543, 77452, -149576, -358, 14822, 60, 0),(9, 3307, 35543, 77415, -149574, -358, 26635, 60, 0),(9, 3308, 35543, 77037, -149671, -17, 19639, 60, 0),(9, 3309, 35543, 76995, -149675, -17, 16606, 60, 0),(9, 3310, 35543, 76956, -149690, -17, 16117, 60, 0),(9, 3311, 35543, 76825, -149728, -17, 17729, 60, 0),(9, 3312, 35543, 76786, -149732, -17, 17565, 60, 0),(9, 3313, 35543, 76858, -149771, -17, 54978, 60, 0),(9, 3314, 35543, 76823, -149780, -17, 52894, 60, 0),(9, 3315, 35543, 76789, -149783, -17, 51590, 60, 0),(9, 3316, 35543, 76754, -149799, -17, 51269, 60, 0),(9, 3317, 35543, 76690, -149813, -17, 55900, 60, 0),(9, 3318, 35543, 76659, -149820, -17, 52566, 60, 0),(9, 3319, 35543, 76619, -149836, -17, 51759, 60, 0),(9, 3320, 35543, 76389, -149643, -17, 16384, 60, 0),(9, 3321, 35543, 76497, -149639, -17, 19740, 60, 0),(9, 3322, 35543, 76529, -149700, -17, 20059, 60, 0),(9, 3323, 35543, 76396, -149672, -17, 21278, 60, 0),(9, 3324, 35543, 76408, -149733, -17, 20306, 60, 0),(9, 3325, 35543, 75437, -149443, -17, 12302, 60, 0),(9, 3326, 35543, 75354, -149492, -17, 25922, 60, 0),(9, 3327, 35543, 75474, -149492, -17, 15327, 60, 0),(9, 3328, 35543, 75511, -149543, -17, 12821, 60, 0),(9, 3329, 35543, 75554, -149604, -17, 13946, 60, 0),(9, 3330, 35543, 75389, -149552, -17, 44850, 60, 0),(9, 3331, 35543, 75422, -149595, -17, 29592, 60, 0),(9, 3332, 35543, 75458, -149657, -38, 26331, 60, 0),(9, 3333, 35543, 75648, -149722, -17, 18768, 60, 0),(9, 3334, 35543, 75696, -149796, -17, 15968, 60, 0),(9, 3335, 35543, 75536, -149779, -37, 31664, 60, 0),(9, 3336, 35543, 75589, -149849, -17, 26367, 60, 0),(9, 3337, 35543, 74811, -151089, -17, 22430, 60, 0),(9, 3338, 35543, 74897, -151132, -17, 17767, 60, 0),(9, 3339, 35543, 74733, -151164, -17, 32352, 60, 0),(9, 3340, 35543, 74771, -151193, -17, 36079, 60, 0),(9, 3341, 35543, 74845, -151241, -17, 36251, 60, 0),(9, 3342, 35543, 74525, -151790, -17, 24240, 60, 0),(9, 3343, 35543, 74612, -151802, -17, 26244, 60, 0),(9, 3344, 35543, 74475, -151877, -17, 31499, 60, 0),(9, 3345, 35543, 74501, -151891, -17, 29413, 60, 0),(9, 3346, 35543, 74575, -151919, -17, 33837, 60, 0),(9, 3347, 35543, 77320, -149215, 366, 12416, 60, 0),(9, 3348, 35543, 77324, -149274, 366, 9802, 60, 0),(9, 3349, 35543, 77327, -149367, 366, 17306, 60, 0),(9, 3350, 35543, 77216, -149262, 345, 63334, 60, 0),(9, 3351, 35543, 77196, -149352, 366, 21093, 60, 0),(9, 3352, 35543, 77801, -149213, 366, 32325, 60, 0),(9, 3353, 35543, 77908, -149260, 366, 13331, 60, 0),(9, 3354, 35543, 77928, -149393, 366, 12310, 60, 0),(9, 3355, 35543, 77786, -149268, 366, 18565, 60, 0),(9, 3356, 35543, 77771, -149385, 366, 21406, 60, 0),(9, 3357, 35543, 76796, -151092, 117, 51978, 60, 0),(9, 3358, 35543, 76754, -151115, 117, 19244, 60, 0),(9, 3359, 35543, 76714, -151155, 117, 56189, 60, 0),(9, 3360, 35543, 76651, -151184, 117, 19615, 60, 0),(9, 3361, 35543, 76617, -151225, 117, 54682, 60, 0),(9, 3362, 35543, 76575, -151243, 117, 23850, 60, 0),(9, 3363, 35543, 76545, -151272, 117, 55285, 60, 0),(9, 3364, 35543, 76815, -151070, 117, 30312, 60, 0),(9, 3365, 35543, 76088, -151778, 117, 29991, 60, 0),(9, 3366, 35543, 76115, -151791, 117, 29154, 60, 0),(9, 3367, 35543, 76133, -151801, 117, 28258, 60, 0),(9, 3368, 35543, 76156, -151810, 117, 28373, 60, 0),(9, 3369, 35543, 76095, -151757, 117, 28077, 60, 0),(9, 3370, 35543, 76113, -151765, 117, 30288, 60, 0),(9, 3371, 35543, 76011, -151961, 117, 27560, 60, 0),(9, 3372, 35543, 76040, -151975, 117, 29497, 60, 0),(9, 3373, 35543, 76059, -151983, 117, 27831, 60, 0),(9, 3374, 35543, 76077, -151989, 117, 28276, 60, 0),(9, 3375, 35543, 75997, -151981, 117, 29991, 60, 0),(9, 3376, 35543, 76017, -151987, 117, 28276, 60, 0),(9, 3377, 35543, 76981, -153686, -401, 44098, 60, 0),(9, 3378, 35543, 77011, -153705, -401, 43472, 60, 0),(9, 3379, 35543, 77041, -153720, -401, 43794, 60, 0),(9, 3380, 35543, 77071, -153738, -401, 43325, 60, 0),(9, 3381, 35543, 77105, -153752, -401, 43625, 60, 0),(9, 3382, 35543, 77144, -153778, -401, 43845, 60, 0),(9, 3383, 35543, 78321, -151073, 117, 40411, 60, 0),(9, 3384, 35543, 78342, -151092, 117, 8192, 60, 0),(9, 3385, 35543, 78363, -151108, 117, 41905, 60, 0),(9, 3386, 35543, 78389, -151117, 117, 10576, 60, 0),(9, 3387, 35543, 78414, -151131, 117, 40960, 60, 0),(9, 3388, 35543, 78440, -151138, 117, 10081, 60, 0),(9, 3389, 35543, 78456, -151161, 117, 42440, 60, 0),(9, 3390, 35543, 78488, -151178, 117, 6971, 60, 0),(9, 3391, 35543, 78126, -153692, -401, 53176, 60, 0),(9, 3392, 35543, 78091, -153701, -401, 56462, 60, 0),(9, 3393, 35543, 78063, -153725, -401, 55522, 60, 0),(9, 3394, 35543, 78036, -153739, -401, 52997, 60, 0),(9, 3395, 35543, 78012, -153751, -401, 56220, 60, 0),(9, 3396, 35543, 77983, -153770, -401, 53832, 60, 0),(9, 3397, 35543, 79121, -151957, 117, 6134, 60, 0),(9, 3398, 35543, 79102, -151966, 117, 4837, 60, 0),(9, 3399, 35543, 79077, -151978, 117, 3743, 60, 0),(9, 3400, 35543, 79017, -152014, 110, 4837, 60, 0),(9, 3401, 35543, 79125, -151991, 117, 3356, 60, 0),(9, 3402, 35543, 79103, -151998, 117, 4555, 60, 0),(9, 3403, 35543, 79026, -151780, 117, 4737, 60, 0),(9, 3404, 35543, 79002, -151791, 117, 4168, 60, 0),(9, 3405, 35543, 78983, -151800, 117, 3682, 60, 0),(9, 3406, 35543, 79021, -151755, 117, 4776, 60, 0),(9, 3407, 35543, 78997, -151767, 117, 4661, 60, 0),(9, 3408, 35543, 78971, -151778, 117, 4555, 60, 0),(9, 3409, 35543, 78094, -149671, -17, 12022, 60, 0),(9, 3410, 35543, 78131, -149687, -17, 20199, 60, 0),(9, 3411, 35543, 78176, -149700, -17, 16819, 60, 0),(9, 3412, 35543, 78315, -149734, -17, 12747, 60, 0),(9, 3413, 35543, 78375, -149745, -17, 13291, 60, 0),(9, 3414, 35543, 78246, -149773, -17, 45261, 60, 0),(9, 3415, 35543, 78289, -149782, -17, 55621, 60, 0),(9, 3416, 35543, 78326, -149793, -17, 47093, 60, 0),(9, 3417, 35543, 78360, -149802, -17, 47188, 60, 0),(9, 3418, 35543, 78430, -149820, -17, 44491, 60, 0),(9, 3419, 35543, 78470, -149828, -17, 43987, 60, 0),(9, 3420, 35543, 78512, -149842, -17, 45688, 60, 0),(9, 3421, 35543, 78614, -149642, -17, 15439, 60, 0),(9, 3422, 35543, 78582, -149723, -17, 18638, 60, 0),(9, 3423, 35543, 78721, -149649, -17, 10357, 60, 0),(9, 3424, 35543, 78718, -149682, -17, 8621, 60, 0),(9, 3425, 35543, 78688, -149760, -17, 9084, 60, 0),(9, 3426, 35543, 79721, -149542, -17, 10295, 60, 0),(9, 3427, 35543, 79685, -149598, -17, 9046, 60, 0),(9, 3428, 35543, 79647, -149659, -17, 11770, 60, 0),(9, 3429, 35543, 79608, -149721, -17, 9138, 60, 0),(9, 3430, 35543, 79489, -149879, -17, 11918, 60, 0),(9, 3431, 35543, 79468, -149925, -17, 6947, 60, 0),(9, 3432, 35543, 79651, -149482, -17, 11095, 60, 0),(9, 3433, 35543, 79611, -149536, -17, 10618, 60, 0),(9, 3434, 35543, 79571, -149588, -17, 12447, 60, 0),(9, 3435, 35543, 79525, -149660, -17, 10304, 60, 0),(9, 3436, 35543, 79422, -149803, -17, 11721, 60, 0),(9, 3437, 35543, 79385, -149862, -17, 12909, 60, 0),(9, 3438, 35543, 80370, -151161, -17, 64261, 60, 0),(9, 3439, 35543, 80333, -151185, -17, 2091, 60, 0),(9, 3440, 35543, 80274, -151241, -17, 3881, 60, 0),(9, 3441, 35543, 80308, -151100, -17, 10501, 60, 0),(9, 3442, 35543, 80222, -151125, -17, 9869, 60, 0),(9, 3443, 35543, 80619, -151882, -17, 2593, 60, 0),(9, 3444, 35543, 80586, -151902, -17, 62409, 60, 0),(9, 3445, 35543, 80496, -151939, -17, 61631, 60, 0),(9, 3446, 35543, 80563, -151799, -17, 7849, 60, 0),(9, 3447, 35543, 80464, -151813, -17, 6828, 60, 0),(8, 3448, 35486, 18535, -49055, -1217, 63418, 10800, 0),(8, 3449, 35486, 18535, -49095, -1217, 63418, 10800, 0),(8, 3450, 35486, 18535, -49135, -1217, 63418, 10800, 0),(8, 3451, 35486, 18535, -49175, -1217, 63418, 10800, 0),(8, 3452, 35486, 18535, -49215, -1217, 63418, 10800, 0),(8, 3453, 35490, 18555, -49055, -1217, 63418, 10800, 0),(8, 3454, 35490, 18555, -49075, -1217, 63418, 10800, 0),(8, 3455, 35490, 18555, -49095, -1217, 63418, 10800, 0),(8, 3456, 35490, 18555, -49115, -1217, 63418, 10800, 0),(8, 3457, 35490, 18555, -49135, -1217, 63418, 10800, 0),(8, 3458, 35490, 18555, -49155, -1217, 63418, 10800, 0),(8, 3459, 35490, 18555, -49175, -1217, 63418, 10800, 0),(8, 3460, 35490, 18555, -49195, -1217, 63418, 10800, 0),(8, 3461, 35490, 18555, -49215, -1217, 63418, 10800, 0),(8, 3462, 35490, 18555, -49235, -1217, 63418, 10800, 0),(8, 3463, 35490, 18575, -49055, -1217, 63418, 10800, 0),(8, 3464, 35488, 18575, -49075, -1217, 63418, 10800, 0),(8, 3465, 35487, 18575, -49095, -1217, 63418, 10800, 0),(8, 3466, 35488, 18575, -49115, -1217, 63418, 10800, 0),(8, 3467, 35487, 18575, -49135, -1217, 63418, 10800, 0),(8, 3468, 35488, 18575, -49155, -1217, 63418, 10800, 0),(8, 3469, 35487, 18575, -49175, -1217, 63418, 10800, 0),(8, 3470, 35488, 18575, -49195, -1217, 63418, 10800, 0),(8, 3471, 35487, 18575, -49215, -1217, 63418, 10800, 0),(8, 3472, 35488, 18575, -49235, -1217, 63418, 10800, 0),(8, 3473, 35487, 18595, -49055, -1217, 63418, 10800, 0),(8, 3474, 35489, 18595, -49075, -1217, 63418, 10800, 0),(8, 3475, 35489, 18595, -49095, -1217, 63418, 10800, 0),(8, 3476, 35489, 18595, -49115, -1217, 63418, 10800, 0),(8, 3477, 35489, 18595, -49135, -1217, 63418, 10800, 0),(8, 3478, 35484, 18595, -49155, -1217, 63418, 10800, 0),(8, 3479, 35489, 18595, -49175, -1217, 63418, 10800, 0),(8, 3480, 35489, 18595, -49195, -1217, 63418, 10800, 0),(8, 3481, 35489, 18595, -49215, -1217, 63418, 10800, 0),(8, 3482, 35489, 18595, -49235, -1217, 63418, 10800, 0),(8, 3483, 35486, 15490, -49055, -1059, 63418, 10800, 0),(8, 3484, 35486, 15490, -49095, -1059, 63418, 10800, 0),(8, 3485, 35486, 15490, -49135, -1059, 63418, 10800, 0),(8, 3486, 35486, 15490, -49175, -1059, 63418, 10800, 0),(8, 3487, 35486, 15490, -49215, -1059, 63418, 10800, 0),(8, 3488, 35490, 15510, -49055, -1059, 63418, 10800, 0),(8, 3489, 35490, 15510, -49075, -1059, 63418, 10800, 0),(8, 3490, 35490, 15510, -49095, -1059, 63418, 10800, 0),(8, 3491, 35490, 15510, -49115, -1059, 63418, 10800, 0),(8, 3492, 35490, 15510, -49135, -1059, 63418, 10800, 0),(8, 3493, 35490, 15510, -49155, -1059, 63418, 10800, 0),(8, 3494, 35490, 15510, -49175, -1059, 63418, 10800, 0),(8, 3495, 35490, 15510, -49195, -1059, 63418, 10800, 0),(8, 3496, 35490, 15510, -49215, -1059, 63418, 10800, 0),(8, 3497, 35490, 15510, -49235, -1059, 63418, 10800, 0),(8, 3498, 35490, 15530, -49055, -1059, 63418, 10800, 0),(8, 3499, 35488, 15530, -49075, -1059, 63418, 10800, 0),(8, 3500, 35487, 15530, -49095, -1059, 63418, 10800, 0),(8, 3501, 35488, 15530, -49115, -1059, 63418, 10800, 0),(8, 3502, 35487, 15530, -49135, -1059, 63418, 10800, 0),(8, 3503, 35488, 15530, -49155, -1059, 63418, 10800, 0),(8, 3504, 35487, 15530, -49175, -1059, 63418, 10800, 0),(8, 3505, 35488, 15530, -49195, -1059, 63418, 10800, 0),(8, 3506, 35487, 15530, -49215, -1059, 63418, 10800, 0),(8, 3507, 35488, 15530, -49235, -1059, 63418, 10800, 0),(8, 3508, 35487, 15550, -49055, -1059, 63418, 10800, 0),(8, 3509, 35489, 15550, -49075, -1059, 63418, 10800, 0),(8, 3510, 35489, 15550, -49095, -1059, 63418, 10800, 0),(8, 3511, 35489, 15550, -49115, -1059, 63418, 10800, 0),(8, 3512, 35489, 15550, -49135, -1059, 63418, 10800, 0),(8, 3513, 35484, 15550, -49155, -1059, 63418, 10800, 0),(8, 3514, 35489, 15550, -49175, -1059, 63418, 10800, 0),(8, 3515, 35489, 15550, -49195, -1059, 63418, 10800, 0),(8, 3516, 35489, 15550, -49215, -1059, 63418, 10800, 0),(8, 3517, 35489, 15550, -49235, -1059, 63418, 10800, 0),(8, 3518, 35486, 13395, -49055, -537, 63418, 10800, 0),(8, 3519, 35486, 13395, -49095, -537, 63418, 10800, 0),(8, 3520, 35486, 13395, -49135, -537, 63418, 10800, 0),(8, 3521, 35486, 13395, -49175, -537, 63418, 10800, 0),(8, 3522, 35486, 13405, -49215, -537, 63418, 10800, 0),(8, 3523, 35490, 13405, -49055, -537, 63418, 10800, 0),(8, 3524, 35490, 13405, -49075, -537, 63418, 10800, 0),(8, 3525, 35490, 13405, -49095, -537, 63418, 10800, 0),(8, 3526, 35490, 13405, -49115, -537, 63418, 10800, 0),(8, 3527, 35490, 13405, -49135, -537, 63418, 10800, 0),(8, 3528, 35490, 13405, -49155, -537, 63418, 10800, 0),(8, 3529, 35490, 13405, -49175, -537, 63418, 10800, 0),(8, 3530, 35490, 13405, -49195, -537, 63418, 10800, 0),(8, 3531, 35490, 13405, -49215, -537, 63418, 10800, 0),(8, 3532, 35490, 13405, -49235, -537, 63418, 10800, 0),(8, 3533, 35490, 13415, -49055, -537, 63418, 10800, 0),(8, 3534, 35488, 13415, -49075, -537, 63418, 10800, 0),(8, 3535, 35487, 13415, -49095, -537, 63418, 10800, 0),(8, 3536, 35488, 13415, -49115, -537, 63418, 10800, 0),(8, 3537, 35487, 13415, -49135, -537, 63418, 10800, 0),(8, 3538, 35488, 13415, -49155, -537, 63418, 10800, 0),(8, 3539, 35487, 13415, -49175, -537, 63418, 10800, 0),(8, 3540, 35488, 13415, -49195, -537, 63418, 10800, 0),(8, 3541, 35487, 13415, -49215, -537, 63418, 10800, 0),(8, 3542, 35488, 13415, -49235, -537, 63418, 10800, 0),(8, 3543, 35487, 13435, -49055, -537, 63418, 10800, 0),(8, 3544, 35489, 13435, -49075, -537, 63418, 10800, 0),(8, 3545, 35489, 13435, -49095, -537, 63418, 10800, 0),(8, 3546, 35489, 13435, -49115, -537, 63418, 10800, 0),(8, 3547, 35489, 13435, -49135, -537, 63418, 10800, 0),(8, 3548, 35484, 13435, -49155, -537, 63418, 10800, 0),(8, 3549, 35489, 13435, -49175, -537, 63418, 10800, 0),(8, 3550, 35489, 13435, -49195, -537, 63418, 10800, 0),(8, 3551, 35489, 13435, -49215, -537, 63418, 10800, 0),(8, 3552, 35489, 13435, -49235, -537, 63418, 10800, 0),(8, 3553, 35486, 11040, -49055, 996, 63418, 10800, 0),(8, 3554, 35486, 11040, -49095, 996, 63418, 10800, 0),(8, 3555, 35486, 11040, -49135, 996, 63418, 10800, 0),(8, 3556, 35486, 11040, -49175, 996, 63418, 10800, 0),(8, 3557, 35486, 11060, -49215, 996, 63418, 10800, 0),(8, 3558, 35490, 11060, -49055, 996, 63418, 10800, 0),(8, 3559, 35490, 11060, -49075, 996, 63418, 10800, 0),(8, 3560, 35490, 11060, -49095, 996, 63418, 10800, 0),(8, 3561, 35490, 11060, -49115, 996, 63418, 10800, 0),(8, 3562, 35490, 11060, -49135, 996, 63418, 10800, 0),(8, 3563, 35490, 11060, -49155, 996, 63418, 10800, 0),(8, 3564, 35490, 11060, -49175, 996, 63418, 10800, 0),(8, 3565, 35490, 11060, -49195, 996, 63418, 10800, 0),(8, 3566, 35490, 11060, -49215, 996, 63418, 10800, 0),(8, 3567, 35490, 11060, -49235, 996, 63418, 10800, 0),(8, 3568, 35490, 11080, -49055, 996, 63418, 10800, 0),(8, 3569, 35488, 11080, -49075, 996, 63418, 10800, 0),(8, 3570, 35487, 11080, -49095, 996, 63418, 10800, 0),(8, 3571, 35488, 11080, -49115, 996, 63418, 10800, 0),(8, 3572, 35487, 11080, -49135, 996, 63418, 10800, 0),(8, 3573, 35488, 11080, -49155, 996, 63418, 10800, 0),(8, 3574, 35487, 11080, -49175, 996, 63418, 10800, 0),(8, 3575, 35488, 11080, -49195, 996, 63418, 10800, 0),(8, 3576, 35487, 11080, -49215, 996, 63418, 10800, 0),(8, 3577, 35488, 11080, -49235, 996, 63418, 10800, 0),(8, 3578, 35487, 11100, -49055, 996, 63418, 10800, 0),(8, 3579, 35489, 11100, -49075, 996, 63418, 10800, 0),(8, 3580, 35489, 11100, -49095, 996, 63418, 10800, 0),(8, 3581, 35489, 11100, -49115, 996, 63418, 10800, 0),(8, 3582, 35489, 11100, -49135, 996, 63418, 10800, 0),(8, 3583, 35484, 11100, -49155, 996, 63418, 10800, 0),(8, 3584, 35489, 11100, -49175, 996, 63418, 10800, 0),(8, 3585, 35489, 11100, -49195, 996, 63418, 10800, 0),(8, 3586, 35489, 11100, -49215, 996, 63418, 10800, 0),(8, 3587, 35489, 11100, -49235, 996, 63418, 10800, 0),(8, 3588, 35486, 9445, -49055, 996, 63418, 10800, 0),(8, 3589, 35486, 9445, -49095, 996, 63418, 10800, 0),(8, 3590, 35486, 9445, -49135, 996, 63418, 10800, 0),(8, 3591, 35486, 9445, -49175, 996, 63418, 10800, 0),(8, 3592, 35486, 9445, -49215, 996, 63418, 10800, 0),(8, 3593, 35490, 9465, -48905, 996, 63418, 10800, 0),(8, 3594, 35490, 9465, -48955, 996, 63418, 10800, 0),(8, 3595, 35490, 9465, -49005, 996, 63418, 10800, 0),(8, 3596, 35490, 9465, -49055, 996, 63418, 10800, 0),(8, 3597, 35490, 9465, -49105, 996, 63418, 10800, 0),(8, 3598, 35490, 9465, -49155, 996, 63418, 10800, 0),(8, 3599, 35490, 9465, -49205, 996, 63418, 10800, 0),(8, 3600, 35490, 9465, -49255, 996, 63418, 10800, 0),(8, 3601, 35490, 9465, -49305, 996, 63418, 10800, 0),(8, 3602, 35490, 9465, -49355, 996, 63418, 10800, 0),(8, 3603, 35490, 9485, -48905, 996, 63418, 10800, 0),(8, 3604, 35488, 9485, -48955, 996, 63418, 10800, 0),(8, 3605, 35487, 9485, -49005, 996, 63418, 10800, 0),(8, 3606, 35488, 9485, -49055, 996, 63418, 10800, 0),(8, 3607, 35487, 9485, -49105, 996, 63418, 10800, 0),(8, 3608, 35488, 9485, -49155, 996, 63418, 10800, 0),(8, 3609, 35487, 9485, -49205, 996, 63418, 10800, 0),(8, 3610, 35488, 9485, -49255, 996, 63418, 10800, 0),(8, 3611, 35487, 9485, -49305, 996, 63418, 10800, 0),(8, 3612, 35488, 9485, -49355, 996, 63418, 10800, 0),(8, 3613, 35487, 9505, -48905, 996, 63418, 10800, 0),(8, 3614, 35489, 9505, -48955, 996, 63418, 10800, 0),(8, 3615, 35489, 9505, -49005, 996, 63418, 10800, 0),(8, 3616, 35489, 9505, -49055, 996, 63418, 10800, 0),(8, 3617, 35489, 9505, -49105, 996, 63418, 10800, 0),(8, 3618, 35484, 9505, -49155, 996, 63418, 10800, 0),(8, 3619, 35489, 9505, -49205, 996, 63418, 10800, 0),(8, 3620, 35489, 9505, -49255, 996, 63418, 10800, 0),(8, 3621, 35489, 9505, -49305, 996, 63418, 10800, 0),(8, 3622, 35489, 9505, -49355, 996, 63418, 10800, 0),(8, 3623, 35484, 9231, -49151, 1093, 63418, 10800, 0),(8, 3624, 35486, 9135, -49076, 1093, 63418, 10800, 0),(8, 3625, 35486, 9135, -49236, 1093, 63418, 10800, 0),(8, 3626, 35484, 9035, -49151, 1093, 63418, 10800, 0),(8, 3627, 35480, 8941, -48580, 1252, 16389, 10800, 0),(8, 3628, 35480, 8974, -48580, 1252, 16389, 10800, 0),(8, 3629, 35480, 9007, -48580, 1252, 16389, 10800, 0),(8, 3630, 35480, 9051, -48580, 1252, 16389, 10800, 0),(8, 3631, 35480, 9074, -48580, 1252, 16389, 10800, 0),(8, 3632, 35480, 9107, -48580, 1252, 16389, 10800, 0),(8, 3633, 35480, 9151, -48580, 1252, 16389, 10800, 0),(8, 3634, 35480, 9174, -48580, 1252, 16389, 10800, 0),(8, 3635, 35480, 9207, -48580, 1252, 16389, 10800, 0),(8, 3636, 35480, 9251, -48580, 1252, 16389, 10800, 0),(8, 3637, 35480, 8941, -48600, 1252, 16389, 10800, 0),(8, 3638, 35480, 8974, -48600, 1252, 16389, 10800, 0),(8, 3639, 35480, 9007, -48600, 1252, 16389, 10800, 0),(8, 3640, 35480, 9051, -48600, 1252, 16389, 10800, 0),(8, 3641, 35480, 9074, -48600, 1252, 16389, 10800, 0),(8, 3642, 35480, 9107, -48600, 1252, 16389, 10800, 0),(8, 3643, 35480, 9151, -48600, 1252, 16389, 10800, 0),(8, 3644, 35480, 9174, -48600, 1252, 16389, 10800, 0),(8, 3645, 35480, 9207, -48600, 1252, 16389, 10800, 0),(8, 3646, 35480, 9251, -48600, 1252, 16389, 10800, 0),(8, 3647, 35480, 8941, -49701, 1252, 16389, 10800, 0),(8, 3648, 35480, 8974, -49701, 1252, 16389, 10800, 0),(8, 3649, 35480, 9007, -49701, 1252, 16389, 10800, 0),(8, 3650, 35480, 9051, -49701, 1252, 16389, 10800, 0),(8, 3651, 35480, 9074, -49701, 1252, 16389, 10800, 0),(8, 3652, 35480, 9107, -49701, 1252, 16389, 10800, 0),(8, 3653, 35480, 9151, -49701, 1252, 16389, 10800, 0),(8, 3654, 35480, 9174, -49701, 1252, 16389, 10800, 0),(8, 3655, 35480, 9207, -49701, 1252, 16389, 10800, 0),(8, 3656, 35480, 9251, -49701, 1252, 16389, 10800, 0),(8, 3657, 35480, 8941, -49721, 1252, 16389, 10800, 0),(8, 3658, 35480, 8974, -49721, 1252, 16389, 10800, 0),(8, 3659, 35480, 9007, -49721, 1252, 16389, 10800, 0),(8, 3660, 35480, 9051, -49721, 1252, 16389, 10800, 0),(8, 3661, 35480, 9074, -49721, 1252, 16389, 10800, 0),(8, 3662, 35480, 9107, -49721, 1252, 16389, 10800, 0),(8, 3663, 35480, 9151, -49721, 1252, 16389, 10800, 0),(8, 3664, 35480, 9174, -49721, 1252, 16389, 10800, 0),(8, 3665, 35480, 9207, -49721, 1252, 16389, 10800, 0),(8, 3666, 35480, 9251, -49721, 1252, 16389, 10800, 0),(8, 3667, 35477, 8484, -48905, 1252, 63418, 10800, 0),(8, 3668, 35477, 8484, -48955, 1252, 63418, 10800, 0),(8, 3669, 35477, 8484, -49005, 1252, 63418, 10800, 0),(8, 3670, 35477, 8484, -49055, 1252, 63418, 10800, 0),(8, 3671, 35477, 8484, -49105, 1252, 63418, 10800, 0),(8, 3672, 35477, 8484, -49155, 1252, 63418, 10800, 0),(8, 3673, 35477, 8484, -49205, 1252, 63418, 10800, 0),(8, 3674, 35477, 8484, -49255, 1252, 63418, 10800, 0),(8, 3675, 35477, 8484, -49305, 1252, 63418, 10800, 0),(8, 3676, 35477, 8484, -49355, 1252, 63418, 10800, 0),(8, 3677, 35477, 8484, -48905, 1252, 63418, 10800, 0),(8, 3678, 35477, 8484, -48955, 1252, 63418, 10800, 0),(8, 3679, 35477, 8484, -49005, 1252, 63418, 10800, 0),(8, 3680, 35477, 8484, -49055, 1252, 63418, 10800, 0),(8, 3681, 35477, 8504, -49105, 1252, 63418, 10800, 0),(8, 3682, 35477, 8505, -49155, 1252, 63418, 10800, 0),(8, 3683, 35477, 8505, -49205, 1252, 63418, 10800, 0),(8, 3684, 35477, 8505, -49255, 1252, 63418, 10800, 0),(8, 3685, 35477, 8505, -49305, 1252, 63418, 10800, 0),(8, 3686, 35475, 17655, -49140, -1181, 63418, 10800, 0),(8, 3687, 35475, 17255, -49140, -1124, 63418, 10800, 0),(8, 3688, 35475, 16855, -49140, -1088, 63418, 10800, 0),(8, 3689, 35477, 8505, -49355, 1252, 63418, 10800, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`castle_trapupgrade` WRITE;
DELETE FROM `lineage2`.`castle_trapupgrade`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_contacts` WRITE;
DELETE FROM `lineage2`.`character_contacts`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_daily_rewards` WRITE;
DELETE FROM `lineage2`.`character_daily_rewards`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_friends` WRITE;
DELETE FROM `lineage2`.`character_friends`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_hennas` WRITE;
DELETE FROM `lineage2`.`character_hennas`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_instance_time` WRITE;
DELETE FROM `lineage2`.`character_instance_time`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_item_reuse_save` WRITE;
DELETE FROM `lineage2`.`character_item_reuse_save`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_macroses` WRITE;
DELETE FROM `lineage2`.`character_macroses`;
INSERT INTO `lineage2`.`character_macroses` (`charId`,`id`,`icon`,`name`,`descr`,`acronym`,`commands`) VALUES (268475663, 1000, 104, 'ADM', '', 'ADM', '3,0,0,//admin;')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_mentees` WRITE;
DELETE FROM `lineage2`.`character_mentees`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_offline_trade` WRITE;
DELETE FROM `lineage2`.`character_offline_trade`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_offline_trade_items` WRITE;
DELETE FROM `lineage2`.`character_offline_trade_items`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_pet_skills_save` WRITE;
DELETE FROM `lineage2`.`character_pet_skills_save`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_premium_items` WRITE;
DELETE FROM `lineage2`.`character_premium_items`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_quests` WRITE;
DELETE FROM `lineage2`.`character_quests`;
INSERT INTO `lineage2`.`character_quests` (`charId`,`name`,`var`,`value`) VALUES (268475663, 'Q00255_Tutorial', '<state>', 'Started'),(268475663, 'Q00255_Tutorial', 'cond', '1'),(268475663, 'Q00255_Tutorial', 'memoState', '1')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_recipebook` WRITE;
DELETE FROM `lineage2`.`character_recipebook`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_recipeshoplist` WRITE;
DELETE FROM `lineage2`.`character_recipeshoplist`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_reco_bonus` WRITE;
DELETE FROM `lineage2`.`character_reco_bonus`;
INSERT INTO `lineage2`.`character_reco_bonus` (`charId`,`rec_have`,`rec_left`,`time_left`) VALUES (268475663, 0, 20, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_shortcuts` WRITE;
DELETE FROM `lineage2`.`character_shortcuts`;
INSERT INTO `lineage2`.`character_shortcuts` (`charId`,`slot`,`page`,`type`,`shortcut_id`,`level`,`sub_level`,`class_index`) VALUES (268475663, 0, 0, 3, 2, 0, 0, 0),(268475663, 1, 0, 4, 1000, 0, 0, 0),(268475663, 3, 0, 3, 5, 0, 0, 0),(268475663, 4, 0, 3, 4, 0, 0, 0),(268475663, 10, 0, 3, 0, 0, 0, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_skills` WRITE;
DELETE FROM `lineage2`.`character_skills`;
INSERT INTO `lineage2`.`character_skills` (`charId`,`skill_id`,`skill_level`,`skill_sub_level`,`class_index`) VALUES (268475663, 194, 1, 0, 0),(268475663, 1321, 1, 0, 0),(268475663, 1322, 1, 0, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_skills_save` WRITE;
DELETE FROM `lineage2`.`character_skills_save`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_subclasses` WRITE;
DELETE FROM `lineage2`.`character_subclasses`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_summon_skills_save` WRITE;
DELETE FROM `lineage2`.`character_summon_skills_save`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_summons` WRITE;
DELETE FROM `lineage2`.`character_summons`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_tpbookmark` WRITE;
DELETE FROM `lineage2`.`character_tpbookmark`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`character_variables` WRITE;
DELETE FROM `lineage2`.`character_variables`;
INSERT INTO `lineage2`.`character_variables` (`charId`,`var`,`val`) VALUES (268475663, 'LAST_PLEDGE_REPUTATION_LEVEL', '2')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`characters` WRITE;
DELETE FROM `lineage2`.`characters`;
INSERT INTO `lineage2`.`characters` (`account_name`,`charId`,`char_name`,`level`,`maxHp`,`curHp`,`maxCp`,`curCp`,`maxMp`,`curMp`,`face`,`hairStyle`,`hairColor`,`sex`,`heading`,`x`,`y`,`z`,`exp`,`expBeforeDeath`,`sp`,`reputation`,`fame`,`raidbossPoints`,`pvpkills`,`pkkills`,`clanid`,`race`,`classid`,`base_class`,`transform_id`,`deletetime`,`cancraft`,`title`,`title_color`,`accesslevel`,`online`,`onlinetime`,`char_slot`,`lastAccess`,`clan_privs`,`wantspeace`,`power_grade`,`nobless`,`subpledge`,`lvl_joined_academy`,`apprentice`,`sponsor`,`clan_join_expiry_time`,`clan_create_expiry_time`,`bookmarkslot`,`vitality_points`,`createDate`,`language`,`faction`,`pccafe_points`) VALUES ('admin', 268475663, '{ADM}TargetAll', 2, 154, 154, 108, 108, 46, 46, 1, 4, 1, 0, 51041, 108774, -174627, -543, 308, 0, 0, 0, 0, 0, 0, 0, 0, 4, 53, 53, 0, 0, 0, '', 52479, 100, 0, 387, NULL, 1729884593324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-10-25', NULL, 0, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`clan_data` WRITE;
DELETE FROM `lineage2`.`clan_data`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`clan_notices` WRITE;
DELETE FROM `lineage2`.`clan_notices`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`clan_privs` WRITE;
DELETE FROM `lineage2`.`clan_privs`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`clan_skills` WRITE;
DELETE FROM `lineage2`.`clan_skills`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`clan_subpledges` WRITE;
DELETE FROM `lineage2`.`clan_subpledges`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`clan_variables` WRITE;
DELETE FROM `lineage2`.`clan_variables`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`clan_wars` WRITE;
DELETE FROM `lineage2`.`clan_wars`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`clanhall` WRITE;
DELETE FROM `lineage2`.`clanhall`;
INSERT INTO `lineage2`.`clanhall` (`id`,`ownerId`,`paidUntil`) VALUES (22, 0, 0),(23, 0, 0),(24, 0, 0),(25, 0, 0),(26, 0, 0),(27, 0, 0),(28, 0, 0),(29, 0, 0),(30, 0, 0),(31, 0, 0),(32, 0, 0),(33, 0, 0),(36, 0, 0),(37, 0, 0),(38, 0, 0),(39, 0, 0),(40, 0, 0),(41, 0, 0),(42, 0, 0),(43, 0, 0),(44, 0, 0),(45, 0, 0),(46, 0, 0),(47, 0, 0),(48, 0, 0),(49, 0, 0),(50, 0, 0),(51, 0, 0),(52, 0, 0),(53, 0, 0),(54, 0, 0),(55, 0, 0),(56, 0, 0),(57, 0, 0),(58, 0, 0),(59, 0, 0),(60, 0, 0),(61, 0, 0),(65, 0, 0),(66, 0, 0),(67, 0, 0),(68, 0, 0),(69, 0, 0),(70, 0, 0),(71, 0, 0),(72, 0, 0),(73, 0, 0),(74, 0, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`clanhall_auctions_bidders` WRITE;
DELETE FROM `lineage2`.`clanhall_auctions_bidders`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`commission_items` WRITE;
DELETE FROM `lineage2`.`commission_items`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`crests` WRITE;
DELETE FROM `lineage2`.`crests`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`cursed_weapons` WRITE;
DELETE FROM `lineage2`.`cursed_weapons`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`custom_mail` WRITE;
DELETE FROM `lineage2`.`custom_mail`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`custom_teleport` WRITE;
DELETE FROM `lineage2`.`custom_teleport`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`event_schedulers` WRITE;
DELETE FROM `lineage2`.`event_schedulers`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`fort` WRITE;
DELETE FROM `lineage2`.`fort`;
INSERT INTO `lineage2`.`fort` (`id`,`name`,`siegeDate`,`lastOwnedTime`,`owner`,`fortType`,`state`,`castleId`,`supplyLvL`) VALUES (101, 'Shanty', 0, 0, 0, 0, 0, 0, 0),(102, 'Southern', 0, 0, 0, 1, 0, 0, 0),(103, 'Hive', 0, 0, 0, 0, 0, 0, 0),(104, 'Valley', 0, 0, 0, 1, 0, 0, 0),(105, 'Ivory', 0, 0, 0, 0, 0, 0, 0),(106, 'Narsell', 0, 0, 0, 0, 0, 0, 0),(107, 'Bayou', 0, 0, 0, 1, 0, 0, 0),(108, 'White Sands', 0, 0, 0, 0, 0, 0, 0),(109, 'Borderland', 0, 0, 0, 1, 0, 0, 0),(110, 'Swamp', 0, 0, 0, 1, 0, 0, 0),(111, 'Archaic', 0, 0, 0, 0, 0, 0, 0),(112, 'Floran', 0, 0, 0, 1, 0, 0, 0),(113, 'Cloud Mountain', 0, 0, 0, 1, 0, 0, 0),(114, 'Tanor', 0, 0, 0, 0, 0, 0, 0),(115, 'Dragonspine', 0, 0, 0, 0, 0, 0, 0),(116, 'Antharas', 0, 0, 0, 1, 0, 0, 0),(117, 'Western', 0, 0, 0, 1, 0, 0, 0),(118, 'Hunters', 0, 0, 0, 1, 0, 0, 0),(119, 'Aaru', 0, 0, 0, 0, 0, 0, 0),(120, 'Demon', 0, 0, 0, 0, 0, 0, 0),(121, 'Monastic', 0, 0, 0, 0, 0, 0, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`fort_doorupgrade` WRITE;
DELETE FROM `lineage2`.`fort_doorupgrade`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`fort_functions` WRITE;
DELETE FROM `lineage2`.`fort_functions`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`fort_siege_guards` WRITE;
DELETE FROM `lineage2`.`fort_siege_guards`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`fort_spawnlist` WRITE;
DELETE FROM `lineage2`.`fort_spawnlist`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`fortsiege_clans` WRITE;
DELETE FROM `lineage2`.`fortsiege_clans`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`forums` WRITE;
DELETE FROM `lineage2`.`forums`;
INSERT INTO `lineage2`.`forums` (`forum_id`,`forum_name`,`forum_parent`,`forum_post`,`forum_type`,`forum_perm`,`forum_owner_id`) VALUES (1, 'NormalRoot', 0, 0, 0, 1, 0),(2, 'ClanRoot', 0, 0, 0, 0, 0),(3, 'MemoRoot', 0, 0, 0, 0, 0),(4, 'MailRoot', 0, 0, 0, 0, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`gameservers` WRITE;
DELETE FROM `lineage2`.`gameservers`;
INSERT INTO `lineage2`.`gameservers` (`server_id`,`hexid`,`host`) VALUES (1, '-2ad66b3f483c22be097019f55c8abdf0', '')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`global_tasks` WRITE;
DELETE FROM `lineage2`.`global_tasks`;
INSERT INTO `lineage2`.`global_tasks` (`id`,`task`,`type`,`last_activation`,`param1`,`param2`,`param3`) VALUES (1, 'birthday', 'TYPE_GLOBAL_TASK', 0, '1', '06:30:00', ''),(2, 'recommendations', 'TYPE_GLOBAL_TASK', 0, '1', '06:30:00', '')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`global_variables` WRITE;
DELETE FROM `lineage2`.`global_variables`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`grandboss_data` WRITE;
DELETE FROM `lineage2`.`grandboss_data`;
INSERT INTO `lineage2`.`grandboss_data` (`boss_id`,`loc_x`,`loc_y`,`loc_z`,`heading`,`respawn_time`,`currentHP`,`currentMP`,`status`) VALUES (25512, 96320, -110912, -3328, 8191, 0, 0.000000000000000, 0.000000000000000, 0),(29001, -21610, 181594, -5734, 0, 0, 290842.480000000000000, 372.000000000000000, 0),(29006, 17726, 108915, -6480, 0, 0, 751897.032091670000000, 2122.000000000000000, 0),(29014, 55024, 17368, -5412, 10126, 0, 751897.032091670000000, 2122.000000000000000, 0),(29020, 116033, 17447, 10107, -25348, 0, 4068372.000000000000000, 39960.000000000000000, 0),(29022, 52207, 217230, -3341, 0, 0, 15812053.000000000000000, 20581.000000000000000, 0),(29028, 220963, -104895, -1615, 0, 0, 62579866.000000000000000, 2541572.000000000000000, 0),(29068, 185708, 114298, -8221, 0, 0, 63338491.000000000000000, 2248571.000000000000000, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`heroes` WRITE;
DELETE FROM `lineage2`.`heroes`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`heroes_diary` WRITE;
DELETE FROM `lineage2`.`heroes_diary`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`item_auction` WRITE;
DELETE FROM `lineage2`.`item_auction`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`item_auction_bid` WRITE;
DELETE FROM `lineage2`.`item_auction_bid`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`item_elementals` WRITE;
DELETE FROM `lineage2`.`item_elementals`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`item_variables` WRITE;
DELETE FROM `lineage2`.`item_variables`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`item_variations` WRITE;
DELETE FROM `lineage2`.`item_variations`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`items` WRITE;
DELETE FROM `lineage2`.`items`;
INSERT INTO `lineage2`.`items` (`owner_id`,`object_id`,`item_id`,`count`,`enchant_level`,`loc`,`loc_data`,`time_of_use`,`custom_type1`,`custom_type2`,`mana_left`,`time`) VALUES (268475663, 268475664, 2370, 1, 0, 'PAPERDOLL', 5, NULL, 0, 0, -1, -1),(268475663, 268475665, 10, 1, 0, 'INVENTORY', 0, NULL, 0, 0, -1, -1),(268475663, 268475666, 1146, 1, 0, 'PAPERDOLL', 6, NULL, 0, 0, -1, -1),(268475663, 268475667, 1147, 1, 0, 'PAPERDOLL', 11, NULL, 0, 0, -1, -1)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`itemsonground` WRITE;
DELETE FROM `lineage2`.`itemsonground`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`lottery` WRITE;
DELETE FROM `lineage2`.`lottery`;
INSERT INTO `lineage2`.`lottery` (`id`,`idnr`,`number1`,`number2`,`prize`,`newprize`,`prize1`,`prize2`,`prize3`,`enddate`,`finished`) VALUES (1, 1, 36871, 0, 50000, 50000, 0, 0, 0, 1729450800094, 1),(1, 2, 0, 0, 50000, 50000, 0, 0, 0, 1730055600094, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`mdt_bets` WRITE;
DELETE FROM `lineage2`.`mdt_bets`;
INSERT INTO `lineage2`.`mdt_bets` (`lane_id`,`bet`) VALUES (1, 0),(2, 0),(3, 0),(4, 0),(5, 0),(6, 0),(7, 0),(8, 0)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`mdt_history` WRITE;
DELETE FROM `lineage2`.`mdt_history`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`merchant_lease` WRITE;
DELETE FROM `lineage2`.`merchant_lease`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`messages` WRITE;
DELETE FROM `lineage2`.`messages`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`npc_respawns` WRITE;
DELETE FROM `lineage2`.`npc_respawns`;
INSERT INTO `lineage2`.`npc_respawns` (`id`,`x`,`y`,`z`,`heading`,`respawnTime`,`currentHp`,`currentMp`) VALUES (25001, -54633, 146199, -2700, -1, 0, 1747341, 574948),(25004, -94469, 99977, -3312, -1, 0, 1873385, 616421),(25007, 124232, 75958, -2612, -1, 0, 645640, 835382),(25010, 113920, 52960, -3735, 0, 0, 946051, 979265),(25013, 169744, 11920, -2732, 0, 0, 699135, 904599),(25016, 76787, 245775, -10376, 0, 0, 7512881, 2781),(25019, 7275, 169510, -3472, -1, 0, 987837, 996067),(25020, 90183, 125621, -1932, -1, 0, 1949454, 641451),(25023, 27219, 103377, -3492, -1, 0, 1949454, 641451),(25026, 92664, 8489, -3748, -1, 0, 692213, 895642),(25029, 54941, 206705, -3728, 0, 0, 5942727, 2233),(25032, 88532, 245798, -10376, 0, 0, 7095213, 2622),(25035, 180968, 12035, -2720, 0, 0, 1668138, 1438916),(25038, -57159, 186250, -4815, -1, 0, 1836476, 604275),(25041, 9851, 126540, -3432, -1, 0, 1968946, 647864),(25044, 108186, 27349, -3272, -1, 0, 678574, 877995),(25047, 116550, 27230, -3076, -1, 0, 692213, 895642),(25050, 125384, 26492, -3440, -1, 0, 741433, 913644),(25051, 118075, -9005, -3020, -1, 0, 1438949, 1241222),(25054, 113432, 16403, 3960, 0, 0, 3136252, 10807),(25057, 106805, 167849, -3208, -1, 0, 665203, 860697),(25060, -60428, 188264, -4512, 0, 0, 510656, 658),(25063, -91030, 116332, -3208, -1, 0, 1091185, 1100277),(25064, 96619, 93523, -3613, -1, 0, 632919, 818922),(25067, 94344, -23355, -2052, -1, 0, 784506, 922783),(25070, 125600, 50100, -3600, 0, 0, 946051, 979265),(25073, 143265, 110044, -3944, 0, 0, 3136252, 10807),(25076, -60856, 126566, -2812, -1, 0, 1782464, 586503),(25079, 54146, 102483, -829, -1, 0, 1873385, 616421),(25082, 87882, 140417, -3260, -1, 0, 2048896, 674170),(25085, 67154, 67491, -3508, -1, 0, 658617, 852174),(25088, 91175, 16282, -5100, -1, 0, 652097, 843736),(25089, 165215, 84285, -2008, -1, 0, 1187881, 1059987),(25092, 116151, 16227, 1944, 0, 0, 3136252, 10807),(25095, -37637, 198364, -2500, -1, 0, 1854839, 610318),(25098, 124114, 133443, -3456, -1, 0, 1091185, 1100277),(25099, 63380, 16164, -3360, -1, 0, 1003570, 998849),(25102, 114226, 84385, -2532, -1, 0, 665203, 860697),(25103, 135747, 94410, -3544, -1, 0, 946051, 979265),(25106, 174063, -11335, -2756, -1, 0, 1253419, 1081187),(25109, 152660, 110387, -5520, 0, 0, 3136252, 10807),(25112, 116750, 139568, -3424, -1, 0, 1873385, 616421),(25115, 94000, 197500, -3300, 0, 0, 2272858, 1284),(25118, 50730, 146992, -3377, -1, 0, 1091185, 1100277),(25119, 121872, 64032, -3536, 0, 0, 699135, 904599),(25122, 86393, -8268, -2934, -1, 0, 1003570, 998849),(25125, 164671, 80187, -2340, -1, 0, 1438949, 1241222),(25126, 116263, 15916, 6992, 0, 0, 3136252, 10807),(25127, -47993, 219152, -2236, -1, 0, 978056, 986208),(25128, 17489, 179139, -3316, -1, 0, 1930153, 635100),(25131, 75733, -9828, -2604, -1, 0, 699135, 904599),(25134, 95033, 81602, -3613, -1, 0, 632919, 818922),(25137, 120302, 112898, -3792, 0, 0, 946051, 979265),(25140, 191975, 56959, -7616, 0, 0, 3136252, 10807),(25143, 113102, 16002, 6992, 0, 0, 1674016, 4311),(25146, -13552, 213541, -3550, -1, 0, 1712910, 563617),(25149, -12772, 138125, -3420, -1, 0, 1782464, 586503),(25152, 43228, 123839, -2912, -1, 0, 1968946, 647864),(25155, 72929, 67047, -3536, -1, 0, 632919, 818922),(25158, 77057, 5508, -2892, -1, 0, 685360, 886776),(25159, 124984, 43200, -3625, 0, 0, 890401, 960062),(25162, 194107, 53884, -4368, 0, 0, 3136252, 10807),(25163, 130173, 59136, 3796, -1, 0, 1668138, 1438916),(25166, -21934, 152049, -2886, -1, 0, 1782464, 586503),(25169, -54127, 172510, -3632, 0, 0, 1038225, 1046878),(25170, 26078, 122721, -3638, -1, 0, 2028609, 667495),(25173, 79103, 103595, -3412, -1, 0, 665203, 860697),(25176, 92544, 115232, -3184, 0, 0, 946051, 979265),(25179, 181814, 52379, -4344, 0, 0, 5408548, 2781),(25182, 41966, 215417, -3728, 0, 0, 5264408, 2701),(25185, 88123, 166312, -3412, 0, 0, 849437, 1080),(25188, 88256, 176208, -3488, 0, 0, 1313365, 883),(25189, 68832, 203024, -3547, 0, 0, 804697, 1040),(25192, 125992, 191042, -3044, -1, 0, 652097, 843736),(25198, 102656, 157424, -3735, 0, 0, 18267540, 3610),(25199, 108096, 157408, -3688, 0, 0, 9380196, 3783),(25202, 119760, 157392, -3744, 0, 0, 9611020, 3957),(25205, 123808, 153408, -3671, 0, 0, 1638489, 4131),(25208, 73776, 201552, -3760, 0, 0, 1686729, 1284),(25211, 76352, 193216, -3648, 0, 0, 897522, 1120),(25214, 112112, 209936, -3616, 0, 0, 1686729, 1284),(25217, 89904, 105712, -3280, 0, 0, 699135, 904599),(25220, 113551, 17083, -2120, 0, 0, 3136252, 10807),(25223, 43512, 152232, -2594, -1, 0, 1968946, 647864),(25226, 104785, -3793, -3236, -1, 0, 1316844, 1135893),(25229, 137568, -19488, -3552, 0, 0, 10730805, 2864),(25230, 66552, 46794, -3648, -1, 0, 1063013, 1018825),(25233, 185800, -26500, -2000, 0, 0, 12916262, 3525),(25234, 120080, 111248, -3032, 0, 0, 1253419, 1081187),(25235, 116400, -62528, -3264, 0, 0, 9380196, 3783),(25238, 155000, 85400, -3200, 0, 0, 5264408, 2701),(25241, 166145, 88431, -2164, -1, 0, 946051, 979265),(25244, 187360, 45840, -5856, 0, 0, 19444220, 4045),(25245, 172000, 55000, -5400, 0, 0, 10044110, 4312),(25248, 127903, -13399, -3720, 0, 0, 18760393, 3783),(25249, 147104, -20560, -3377, 0, 0, 5365402, 2864),(25252, 184244, 20318, -3168, 33382, 0, 1668138, 1438916),(25255, 170834, -24716, -3524, -1, 0, 1438949, 1241222),(25256, 170521, 42648, -4612, -1, 0, 1253419, 1081187),(25259, 42050, 208107, -3752, 0, 0, 12836671, 2387),(25260, 93179, 19843, -3396, -1, 0, 665203, 860697),(25263, 145920, -27301, -2208, 0, 0, 1526583, 1316814),(25266, 188983, 13647, -2672, 0, 0, 9722110, 4045),(25269, 123504, -23696, -3481, 0, 0, 9133770, 3610),(25272, 49224, 127540, -3461, -1, 0, 1017770, 1026251),(25276, 154088, -14116, -3736, 0, 0, 10730805, 2864),(25277, 54651, 180269, -4976, 0, 0, 5213957, 2006),(25280, 85622, 88766, -5120, 0, 0, 12836671, 2387),(25281, 151053, 88124, -5424, 0, 0, 18267540, 3610),(25282, 179311, -7632, -4896, 0, 0, 19444220, 4045),(25290, -106500, -252700, -15542, 0, 0, 0, 3053),(25293, 134672, -115600, -1216, 0, 0, 10044110, 4312),(25296, -104700, -252700, -15542, 0, 0, 9611020, 3957),(25299, 148160, -73808, -4919, 0, 0, 7346600, 4493),(25302, 145504, -81664, -6016, 0, 0, 0, 3442),(25305, 145008, -84992, -6240, 0, 0, 0, 3642),(25306, -105300, -252700, -15542, 0, 0, 5498014, 5143),(25309, 115552, -39200, -2480, 0, 0, 7346600, 4493),(25312, 109216, -36160, -938, 0, 0, 0, 3442),(25315, 105584, -43024, -1728, 0, 0, 0, 3642),(25316, -105900, -252700, -15542, 0, 0, 5498014, 5143),(25319, 184542, -106330, -6304, 0, 0, 10777337, 4954),(25322, 93296, -75104, -1824, 0, 0, 8574354, 3272),(25325, 91008, -85904, -2736, 0, 0, 9133770, 3610),(25328, 59331, -42403, -3003, 0, 0, 9259247, 3696),(25352, -16423, 174613, -3284, -1, 0, 1873385, 616421),(25354, -16072, 184361, -3807, 0, 0, 1968946, 647864),(25357, -2920, 113163, -3332, -1, 0, 1712910, 563617),(25360, 29216, 179280, -3624, 0, 0, 367225, 732),(25362, -55920, 186768, -3336, 0, 0, 493279, 622),(25365, -61300, 190668, -3460, -1, 0, 997715, 1006028),(25366, -62130, 180137, -3388, -1, 0, 1747341, 574948),(25369, -46191, 111240, -3580, -1, 0, 1782464, 586503),(25372, 48000, 243376, -6611, 0, 0, 901355, 515),(25373, 9649, 77467, -3808, 0, 0, 463389, 550),(25375, 22500, 80300, -2772, 0, 0, 450677, 515),(25378, -54096, 84288, -3512, 0, 0, 248718, 364),(25380, -47367, 51548, -5904, 0, 0, 255733, 389),(25383, 51632, 153920, -3552, 0, 0, 804697, 1040),(25385, 53630, 143214, -3632, -1, 0, 1988638, 654343),(25388, 40129, 102048, -1232, 8192, 0, 1968946, 647864),(25391, 45868, 121117, -2458, -1, 0, 1069686, 1078600),(25392, 29531, 107228, -3672, -1, 0, 1911040, 628812),(25394, 101888, 200224, -3680, 0, 0, 2008062, 1201),(25395, 15073, 118782, -11977, -1, 0, 665203, 860697),(25398, 5214, 189874, -3492, -1, 0, 1968946, 647864),(25401, 118111, 102840, -3440, -1, 0, 1911040, 628812),(25404, 35992, 191312, -3104, 0, 0, 763191, 1000),(25407, 115072, 112272, -3020, 0, 0, 2261685, 636623),(25410, 72538, 125733, -3420, -1, 0, 632919, 818922),(25412, 81920, 113136, -3056, 0, 0, 678574, 877995),(25415, 128075, 138398, -3264, -1, 0, 632919, 818922),(25418, 62441, 8843, -3284, -1, 0, 1063013, 1018825),(25420, 42376, 23731, -4708, -1, 0, 1124433, 1039203),(25423, 113600, 47120, -4640, 0, 0, 1278489, 1102810),(25426, -18048, -101264, -2112, 0, 0, 529801, 695),(25429, 172064, -214752, -3565, 0, 0, 529801, 695),(25431, 79153, 18501, -5224, -1, 0, 658617, 852174),(25434, 104372, -17490, -1736, -1, 0, 946051, 979265),(25437, 68015, 64039, -3544, -1, 0, 665203, 860697),(25438, 107309, 92225, -2200, -1, 0, 658617, 852174),(25441, 111793, 82669, -2652, -1, 0, 665203, 860697),(25444, 113232, 17456, -4384, 0, 0, 3136252, 10807),(25447, 113101, 17907, -1148, -1, 0, 3136252, 10807),(25450, 113600, 15104, 9559, 0, 0, 3136252, 10807),(25453, 156704, -6096, -4185, 0, 0, 1668138, 1438916),(25456, 133645, 87349, -3396, -1, 0, 692213, 895642),(25460, 150163, 67969, -3504, -1, 0, 741433, 913644),(25463, 166306, 67851, -3048, -1, 0, 1003570, 998849),(25467, 186192, 61472, -4160, 0, 0, 3136252, 10807),(25470, 186896, 56276, -4576, 0, 0, 3136252, 10807),(25473, 175712, 29856, -3776, 0, 0, 784506, 922783),(25475, 183568, 24560, -3184, 0, 0, 946051, 979265),(25478, 168683, 28837, -3456, -1, 0, 1438949, 1241222),(25481, 53517, 205413, -3728, 0, 0, 4305253, 2233),(25484, 43160, 220463, -3680, 0, 0, 3792736, 2006),(25487, 83056, 183232, -3616, 0, 0, 1686729, 1284),(25490, 86528, 216864, -3584, 0, 0, 1686729, 1284),(25493, 83174, 254428, -10873, 0, 0, 4639466, 2387),(25496, 88300, 258000, -10200, 0, 0, 4135096, 2157),(25498, 126571, 175191, -2888, -1, 0, 665203, 860697),(25514, 79635, -55434, -6135, 0, 0, 1224433, 4491),(25523, 170000, -60000, -3500, 0, 0, 3165745, 3868),(25524, 144143, -5731, -4722, 0, 0, 1638489, 4131),(25527, 3776, -6768, -3288, 0, 0, 2755489, 544),(25738, -11255, 179636, -4064, 0, 0, 2973492, 9729),(25739, 56392, 179492, -2672, 0, 0, 2973492, 9729),(25742, 9310, 120638, -3712, 0, 0, 2973492, 9729),(25743, 87195, 79139, -3368, 0, 0, 2973492, 9729),(25744, 181400, 15410, -3168, 0, 0, 946051, 979265),(25745, 63645, 39175, -3704, 0, 0, 946051, 979265),(25746, 183832, -12287, -3048, 0, 0, 1253419, 1081187),(25747, 180485, -6848, -3056, 0, 0, 1253419, 1081187),(25748, 174280, -5996, -3408, 0, 0, 1253419, 1081187),(25749, 169562, -5290, -2696, 0, 0, 1253419, 1081187),(25750, 164359, -7963, -2744, 0, 0, 1253419, 1081187),(25751, 168982, -16631, -3128, 0, 0, 1253419, 1081187),(25754, 142240, -4570, -4776, 0, 0, 1438949, 1241222),(25755, 138613, -15986, -4248, 0, 0, 1438949, 1241222),(25756, 141702, -26321, -2016, 0, 0, 1438949, 1241222),(25757, 151511, -23058, -3416, 0, 0, 1438949, 1241222),(25758, 108463, -1012, -3008, 0, 0, 1438949, 1241222),(25759, 114459, 2022, -3720, 0, 0, 1438949, 1241222),(25760, 123537, 496, -3464, 0, 0, 1438949, 1241222),(25761, 125446, -12996, -3960, 0, 0, 1438949, 1241222),(25762, 131304, -16372, -3304, 0, 0, 1438949, 1241222),(25763, 128225, -1232, -2008, 0, 0, 1438949, 1241222),(25766, 135136, 19005, -3392, 0, 0, 1668138, 1438916),(25767, 130482, 11466, -3768, 0, 0, 1668138, 1438916),(25768, 133233, 3839, -3664, 0, 0, 1668138, 1438916),(25769, 138159, 3790, -4528, 0, 0, 1668138, 1438916),(25770, 140224, 17359, -3824, 0, 0, 1668138, 1438916),(25772, 185884, 36812, -4184, 0, 0, 1668138, 1438916),(25773, 173184, 39039, -4640, 0, 0, 1668138, 1438916),(25774, 166598, 38444, -3584, 0, 0, 1668138, 1438916),(25775, 166221, 51612, -4112, 0, 0, 1668138, 1438916),(25776, 176000, 44798, -4848, 0, 0, 1668138, 1438916),(25777, 173115, 45513, -4792, 0, 0, 1668138, 1438916),(25779, 182801, 47370, -5880, 0, 0, 2088462, 1801483),(25780, 180241, 50323, -5912, 0, 0, 2088462, 1801483),(25781, 174814, 52661, -5872, 0, 0, 2088462, 1801483),(25782, 171662, 55407, -5920, 0, 0, 2088462, 1801483),(25783, 175123, 58947, -5824, 0, 0, 2088462, 1801483),(25784, 183947, 54618, -5560, 0, 0, 2088462, 1801483),(29095, 147408, -43552, -2328, 0, 0, 5890433, 4462)
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`olympiad_data` WRITE;
DELETE FROM `lineage2`.`olympiad_data`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`olympiad_fights` WRITE;
DELETE FROM `lineage2`.`olympiad_fights`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`olympiad_nobles` WRITE;
DELETE FROM `lineage2`.`olympiad_nobles`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`olympiad_nobles_eom` WRITE;
DELETE FROM `lineage2`.`olympiad_nobles_eom`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`party_matching_history` WRITE;
DELETE FROM `lineage2`.`party_matching_history`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`petition_feedback` WRITE;
DELETE FROM `lineage2`.`petition_feedback`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`pets` WRITE;
DELETE FROM `lineage2`.`pets`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`pledge_applicant` WRITE;
DELETE FROM `lineage2`.`pledge_applicant`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`pledge_recruit` WRITE;
DELETE FROM `lineage2`.`pledge_recruit`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`pledge_waiting_list` WRITE;
DELETE FROM `lineage2`.`pledge_waiting_list`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`posts` WRITE;
DELETE FROM `lineage2`.`posts`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`punishments` WRITE;
DELETE FROM `lineage2`.`punishments`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`residence_functions` WRITE;
DELETE FROM `lineage2`.`residence_functions`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`siege_clans` WRITE;
DELETE FROM `lineage2`.`siege_clans`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `lineage2`.`topic` WRITE;
DELETE FROM `lineage2`.`topic`;
UNLOCK TABLES;
COMMIT;
