-- creature  —  TrinityCore `tc_world` -> AzerothCore `prod_world` (map 974)
REPLACE INTO `prod_world`.`creature`
  (`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`)
SELECT
  c.`guid` AS `guid`,
  c.`id` AS `id1`,
  0 AS `id2`,
  0 AS `id3`,
  c.`map` AS `map`,
  c.`zoneId` AS `zoneId`,
  c.`areaId` AS `areaId`,
  1 AS `spawnMask`,
  1 AS `phaseMask`,
  c.`equipment_id` AS `equipment_id`,
  c.`position_x` AS `position_x`,
  c.`position_y` AS `position_y`,
  c.`position_z` AS `position_z`,
  c.`orientation` AS `orientation`,
  c.`spawntimesecs` AS `spawntimesecs`,
  c.`wander_distance` AS `wander_distance`,
  c.`currentwaypoint` AS `currentwaypoint`,
  1 AS `curhealth`,
  1 AS `curmana`,
  c.`MovementType` AS `MovementType`,
  (COALESCE(c.`npcflag`,0) & 0xFFFFFFFF) AS `npcflag`,
  COALESCE(c.`unit_flags`,0) AS `unit_flags`,
  0 AS `dynamicflags`,
  '' AS `ScriptName`,
  0 AS `VerifiedBuild`,
  0 AS `CreateObject`,
  '' AS `Comment`
FROM `tc_world`.`creature` c
WHERE c.`map` = 974;
