CREATE TABLE IF NOT EXISTS `linden_inventory` (
    `id` TINYINT(11) NOT NULL AUTO_INCREMENT,
    `owner` VARCHAR(60) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
    `name` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci', 
    `data` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
    PRIMARY KEY (`id`),
    UNIQUE INDEX (`name`, `owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `linden_inventory`
	DROP INDEX IF EXISTS `name`,
	ADD IF NOT EXISTS `id` TINYINT(11) NOT NULL AUTO_INCREMENT,
	ADD IF NOT EXISTS `owner` VARCHAR(60) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	ADD PRIMARY KEY IF NOT EXISTS (`id`),
	ADD UNIQUE INDEX IF NOT EXISTS (`name`, `owner`)
;
	
	
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('weapon', "Weapons license")
;


ALTER TABLE `items`
	ADD IF NOT EXISTS `stackable` INT(11) NULL DEFAULT '1', 
	ADD IF NOT EXISTS `closeonuse` INT(11) NULL DEFAULT '1', 
	ADD IF NOT EXISTS `description` VARCHAR(50) NULL DEFAULT NULL,
	ADD PRIMARY KEY IF NOT EXISTS (`name`);


INSERT INTO `items` (`name`, `label`, `weight`, `can_remove`, `stackable`, `closeonuse`, `description`) VALUES
	('bandage', 'Bandage', 115, 1, 1, 1, NULL),
	('lockpick', 'Lockpick', 190, 1, 1, 1, NULL),
	('water', 'Water', 500, 1, 1, 1, NULL),
	('burger', 'Burger', 220, 1, 1, 1, NULL),
	('cola', 'eCola', 350, 1, 1, 1, NULL),
	('money', 'Money', 0, 1, 1, 1, NULL),
	('identification', 'Identification', 0, 1, 1, 1, NULL),
	('black_money', 'Dirty Money', 0, 1, 1, 1, NULL),
	('keys', 'Set of keys', 21, 1, 1, 1, NULL),
	('at_scope_sniper', 'Sniper Scope', 700, 1, 1, 1, NULL),
	('at_scope_smg', 'SMG Sight', 250, 1, 1, 1, NULL),
	('at_scope_rifle', 'Rifle Scope', 330, 1, 1, 1, NULL),
	('at_scope_mg', 'MG Scope', 500, 1, 1, 1, NULL),
	('at_flashlight_pistol', 'Pistol Flashlight', 118, 1, 1, 1, NULL),
	('at_flashlight_shotgun', 'Shotgun Flashlight', 118, 1, 1, 1, NULL),
	('at_flashlight_sniper', 'Sniper Flashlight', 118, 1, 1, 1, NULL),
	('at_flashlight_rifle', 'Rifle Flashlight', 118, 1, 1, 1, NULL),
	('at_flashlight_smg', 'SMG Flashlight', 118, 1, 1, 1, NULL),
	('at_grip_smg', 'SMG Grip', 5, 1, 1, 1, NULL),
	('at_suppressor_rifle', 'Rifle Suppressor', 75, 1, 1, 1, NULL),
	('at_suppressor_smg', 'SMG Suppressor', 75, 1, 1, 1, NULL),
	('at_suppressor_sniper', 'Sniper Suppressor', 100, 1, 1, 1, NULL),
	('at_suppressor_pistol', 'Pistol Suppressor', 70, 1, 1, 1, NULL),
	('at_suppressor_shotgun', 'Shotgun Suppressor', 80, 1, 1, 1, NULL),
	('at_grip_rifle', 'Rifle Grip', 250, 1, 1, 1, NULL),
	('at_grip_sniper', 'Sniper Grip', 250, 1, 1, 1, NULL),
	('at_grip_shotgun', 'Shotgun Grip', 250, 1, 1, 1, NULL),
	('at_grip_mg', 'MG Grip', 250, 1, 1, 1, NULL),
	('at_clip_extended_pistol', 'Extended Pistol Clip', 5, 1, 1, 1, NULL),
	('at_clip_extended_rifle', 'Extended Rifle Clip', 5, 1, 1, 1, NULL),
	('at_clip_extended_smg', 'Extended SMG Clip', 5, 1, 1, 1, NULL),
	('at_clip_extended_sniper', 'Extended Sniper Clip', 5, 1, 1, 1, NULL),
	('at_clip_drum_smg', 'SMG Drum Clip', 5, 1, 1, 1, NULL),
	('at_clip_drum_pistol', 'Pistol Drum Clip', 5, 1, 1, 1, NULL),
	('at_clip_extended_mg', 'Extended MG Clip', 5, 1, 1, 1, NULL),
	('at_clip_extended_shotgun', 'Extended Shotgun Clip', 5, 1, 1, 1, NULL),
	('at_clip_drum_shotgun', 'Shotgun Drum Clip', 5, 1, 1, 1, NULL),
	('at_clip_drum_rifle', 'Rifle Drum Clip', 5, 1, 1, 1, NULL),
	('ammo-musket', 'Musket ammo', 30, 1, 1, 0, NULL),
	('ammo-rifle', '5.56', 4, 1, 1, 0, NULL),
	('ammo-rifle2', '7.62', 8, 1, 1, 0, NULL),
	('ammo-45', '.45 ACP', 9, 1, 1, 0, NULL),
	('ammo-shotgun', '12 Gauge', 38, 1, 1, 0, NULL),
	('ammo-heavysniper', '.50 BMG', 45, 1, 1, 0, NULL),
	('ammo-50', '.50 AE', 19, 1, 1, 0, NULL),
	('ammo-22', '.22 Long Rifle', 3, 1, 1, 0, NULL),
	('ammo-flare', 'Flare', 38, 1, 1, 0, NULL),
	('ammo-sniper', '7.62 NATO', 11, 1, 1, 0, NULL),
	('ammo-9', '9mm', 8, 1, 1, 0, NULL),
	('ammo-38', '.38 Long Colt', 10, 1, 1, 0, NULL),
	('ammo-44', '.44 Magnum', 16, 1, 1, 0, NULL),
	('GADGET_PARACHUTE', 'Parachute', 8000, 1, 1, 0, NULL),
	('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', 3180, 1, 0, 0, NULL),
	('WEAPON_APPISTOL', 'AP Pistol', 1220, 1, 0, 0, NULL),
	('WEAPON_ASSAULTRIFLE', 'Assault Rifle', 3470, 1, 0, 0, NULL),
	('WEAPON_ASSAULTRIFLE_MK2', 'Assault Rifle MK2', 3300, 1, 0, 0, NULL),
	('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 3100, 1, 0, 0, NULL),
	('WEAPON_ASSAULTSMG', 'Assault SMG', 2850, 1, 0, 0, NULL),
	('WEAPON_BALL', 'Ball', 149, 1, 0, 0, NULL),
	('WEAPON_BAT', 'Bat', 1134, 1, 0, 0, NULL),
	('WEAPON_BOTTLE', 'Bottle', 350, 1, 0, 0, NULL),
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', 2900, 1, 0, 0, NULL),
	('WEAPON_BULLPUPRIFLE_MK2', 'Bullpup Rifle MK2', 2900, 1, 0, 0, NULL),
	('WEAPON_BULLPUPSHOTGUN', 'Bullpup Shotgun', 3100, 1, 0, 0, NULL),
	('WEAPON_BZGAS', 'BZ Gas', 600, 1, 0, 0, NULL),
	('WEAPON_CARBINERIFLE', 'Carbine Rifle', 3100, 1, 0, 0, NULL),
	('WEAPON_CARBINERIFLE_MK2', 'Carbiner Rifle MK2', 3000, 1, 0, 0, NULL),
	('WEAPON_COMBATMG', 'Combat MG', 10000, 1, 0, 0, NULL),
	('WEAPON_COMBATMG_MK2', 'Combat MG MK2', 10500, 1, 0, 0, NULL),
	('WEAPON_COMBATPDW', 'Combat PDW', 2700, 1, 0, 0, NULL),
	('WEAPON_COMBATPISTOL', 'Combat Pistol', 970, 1, 0, 0, NULL),
	('WEAPON_COMPACTRIFLE', 'Compact Rifle', 2700, 1, 0, 0, NULL),
	('WEAPON_CROWBAR', 'Crowbar', 2500, 1, 0, 0, NULL),
	('WEAPON_DAGGER', 'Dagger', 800, 1, 0, 0, NULL),
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', 3175, 1, 0, 0, NULL),
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', 940, 1, 0, 0, NULL),
	('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', 8616, 1, 0, 0, NULL),
	('WEAPON_FIREWORK', 'Firework Launcher', 1000, 1, 0, 0, NULL),
	('WEAPON_FLARE', 'Flare', 235, 1, 0, 0, NULL),
	('WEAPON_FLAREGUN', 'Flare Gun', 1000, 1, 0, 0, NULL),
	('WEAPON_FLASHLIGHT', 'Flashlight', 125, 1, 0, 0, NULL),
	('WEAPON_GOLFCLUB', 'Golf Club', 330, 1, 0, 0, NULL),
	('WEAPON_GRENADE', 'Grenade', 600, 1, 0, 0, NULL),
	('WEAPON_GUSENBERG', 'Gusenberg', 4900, 1, 0, 0, NULL),
	('WEAPON_HAMMER', 'Hammer', 1200, 1, 0, 0, NULL),
	('WEAPON_HATCHET', 'Hatchet', 1000, 1, 0, 0, NULL),
	('WEAPON_HAZARDCAN', 'Hazard Can', 12000, 1, 0, 0, NULL),
	('WEAPON_HEAVYPISTOL', 'Heavy Pistol', 1100, 1, 0, 0, NULL),
	('WEAPON_HEAVYSHOTGUN', 'Heavy Shotgun', 3600, 1, 0, 0, NULL),
	('WEAPON_HEAVYSNIPER', 'Heavy Sniper', 14000, 1, 0, 0, NULL),
	('WEAPON_HEAVYSNIPER_MK2', 'Heavy Sniper MK2', 10432, 1, 0, 0, NULL),
	('WEAPON_KNIFE', 'Knife', 300, 1, 0, 0, NULL),
	('WEAPON_KNUCKLE', 'Knuckle Dusters', 300, 1, 0, 0, NULL),
	('WEAPON_MACHETE', 'Machete', 1000, 1, 0, 0, NULL),
	('WEAPON_MACHINEPISTOL', 'Machine Pistol', 1400, 1, 0, 0, NULL),
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', 1588, 1, 0, 0, NULL),
	('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', 7500, 1, 0, 0, NULL),
	('WEAPON_MARKSMANRIFLE_MK2', 'Marksman Rifle', 4000, 1, 0, 0, NULL),
	('WEAPON_MG', 'Machine Gun', 9000, 1, 0, 0, NULL),
	('WEAPON_MICROSMG', 'Micro SMG', 4000, 1, 0, 0, NULL),
	('WEAPON_MINISMG', 'Mini SMG', 2770, 1, 0, 0, NULL),
	('WEAPON_MOLOTOV', 'Molotov', 1800, 1, 0, 0, NULL),
	('WEAPON_NIGHTSTICK', 'Nightstick', 1000, 1, 0, 0, NULL),
	('WEAPON_PETROLCAN', 'Gas Can', 12000, 1, 0, 0, NULL),
	('WEAPON_PIPEBOMB', 'Pipe Bomb', 1800, 1, 0, 0, NULL),
	('WEAPON_PISTOL', 'Pistol', 970, 1, 0, 0, NULL),
	('WEAPON_PISTOL50', 'Pistol .50', 2000, 1, 0, 0, NULL),
	('WEAPON_PISTOL_MK2', 'Pistol MK2', 970, 1, 0, 0, NULL),
	('WEAPON_POOLCUE', 'Pool Cue', 146, 1, 0, 0, NULL),
	('WEAPON_PROXMINE', 'Proximity Mine', 2500, 1, 0, 0, NULL),
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 3400, 1, 0, 0, NULL),
	('WEAPON_PUMPSHOTGUN_MK2', 'Pump Shotgun MK2', 3200, 1, 0, 0, NULL),
	('WEAPON_REVOLVER', 'Revolver', 2260, 1, 0, 0, NULL),
	('WEAPON_REVOLVER_MK2', 'Revolver MK2', 1500, 1, 0, 0, NULL),
	('WEAPON_SAWNOFFSHOTGUN', 'Sawn Off Shotgun', 2380, 1, 0, 0, NULL),
	('WEAPON_SMG', 'SMG', 3084, 1, 0, 0, NULL),
	('WEAPON_SMG_MK2', 'SMG Mk2', 2700, 1, 0, 0, NULL),
	('WEAPON_SMOKEGRENADE', 'Smoke Grenade', 600, 1, 0, 0, NULL),
	('WEAPON_SNIPERRIFLE', 'Sniper Rifle', 6500, 1, 0, 0, NULL),
	('WEAPON_SNOWBALL', 'Snow Ball', 5, 1, 0, 0, NULL),
	('WEAPON_SNSPISTOL', 'SNS Pistol', 465, 1, 0, 0, NULL),
	('WEAPON_SNSPISTOL_MK2', 'SNS Pistol MK2', 465, 1, 0, 0, NULL),
	('WEAPON_SPECIALCARBINE', 'Special Carbine', 3000, 1, 0, 0, NULL),
	('WEAPON_SPECIALCARBINE_MK2', 'Special Carbine MK2', 3370, 1, 0, 0, NULL),
	('WEAPON_STICKYBOMB', 'Sticky Bomb', 1000, 1, 0, 0, NULL),
	('WEAPON_STUNGUN', 'Tazer', 227, 1, 0, 0, NULL),
	('WEAPON_SWEEPERSHOTGUN', 'Sweeper Shotgun', 4400, 1, 0, 0, NULL),
	('WEAPON_SWITCHBLADE', 'Switch Blade', 300, 1, 0, 0, NULL),
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', 100, 1, 0, 0, NULL),
	('WEAPON_WRENCH', 'Wrench', 2500, 1, 0, 0, NULL),
	('WEAPON_MUSKET', 'Musket', 4500, 1, 0, 0, NULL),
	('WEAPON_BATTLEAXE', 'Battle Axe', 1200, 1, 0, 0, NULL),
	('WEAPON_STONE_HATCHET', 'Stone Hatchet', 800, 1, 0, 0, NULL),
	('WEAPON_CERAMICPISTOL', 'Ceramic Pistol', 700, 1, 0, 0, NULL),
	('WEAPON_COMBATSHOTGUN', 'Combat Shotgun', 4400, 1, 0, 0, NULL),
	('WEAPON_MILITARYRIFLE', 'Military Rifle', 3600, 1, 0, 0, NULL),
	('WEAPON_NAVYREVOLVER', 'Navy Revolver', 2000, 1, 1, 0, NULL);
