-- creature_model_info  —  TrinityCore `tc_world` -> AzerothCore `prod_world` (map 974)
INSERT IGNORE INTO `prod_world`.`creature_model_info`
  (`DisplayID`,`BoundingRadius`,`CombatReach`,`Gender`,`DisplayID_Other_Gender`)
SELECT
  mi.`DisplayID` AS `DisplayID`,
  mi.`BoundingRadius` AS `BoundingRadius`,
  mi.`CombatReach` AS `CombatReach`,
  2 AS `Gender`,
  0 AS `DisplayID_Other_Gender`
FROM `tc_world`.`creature_model_info` mi
WHERE mi.`DisplayID` IN (SELECT DISTINCT `CreatureDisplayID` FROM `tc_world`.`creature_template_model` WHERE `CreatureID` IN (SELECT DISTINCT `id` FROM `tc_world`.`creature` WHERE `map` = 974));
