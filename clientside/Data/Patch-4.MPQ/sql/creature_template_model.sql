-- creature_template_model  —  TrinityCore `tc_world` -> AzerothCore `prod_world` (map 974)
INSERT IGNORE INTO `prod_world`.`creature_template_model`
  (`CreatureID`,`Idx`,`CreatureDisplayID`,`DisplayScale`,`Probability`,`VerifiedBuild`)
SELECT
  m.`CreatureID` AS `CreatureID`,
  m.`Idx` AS `Idx`,
  m.`CreatureDisplayID` AS `CreatureDisplayID`,
  m.`DisplayScale` AS `DisplayScale`,
  m.`Probability` AS `Probability`,
  0 AS `VerifiedBuild`
FROM `tc_world`.`creature_template_model` m
WHERE m.`CreatureID` IN (SELECT DISTINCT `id` FROM `tc_world`.`creature` WHERE `map` = 974) AND m.`Idx` <= 3;
