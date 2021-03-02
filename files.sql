CREATE TABLE `hsn_inventory` (
	`name` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci', 
	`data` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

ALTER TABLE `items`
	ADD `stackable` INT(11) NULL DEFAULT '1', 
     ADD `closeonuse` INT(11) NULL DEFAULT '1', 
ADD `description` VARCHAR(50) NULL DEFAULT ''
;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `stackable`, `closeonuse`, `description`) VALUES
    ('ammo-musket', 'Musket ammo', 30, 0, 1, 1, 0, ''),
    ('ammo-rifle', '5.56', 4, 0, 1, 1, 0, ''),
    ('ammo-rifle2', '7.62', 8, 0, 1, 1, 0, ''),
    ('ammo-45', '.45 ACP', 9, 0, 1, 1, 0, ''),
    ('ammo-shotgun', '12 Gauge', 38, 0, 1, 1, 0, ''),
    ('ammo-heavysniper', '.50 BMG', 45, 0, 1, 1, 0, ''),
    ('ammo-50', '.50 AE', 19, 0, 1, 1, 0, ''),
    ('ammo-22', '.22 Long Rifle', 3, 0, 1, 1, 0, ''),
    ('ammo-flare', 'Flare', 38, 0, 1, 1, 0, ''),
    ('ammo-sniper', '7.62 NATO', 11, 0, 1, 1, 0, ''),
    ('ammo-9', '9mm', 8, 0, 1, 1, 0, ''),
    ('ammo-38', '.38 Long Colt', 10, 0, 1, 1, 0, ''),
    ('ammo-44', '.44 Magnum', 16, 0, 1, 1, 0, ''),
    ('water', 'Water', 600, 0, 1, 1, 1, ''),
    ('burger', 'Burger', 220, 0, 1, 1, 1, ''),
    ('cola', 'eCola', 350, 0, 1, 1, 1, ''),
    ('money', 'Money', 0, 0, 1, 1, 1, ''),
    ('identification', 'Identification', 0, 0, 1, 1, 1, ''),
    ('black_money', 'Money', 0, 0, 1, 1, 1, ''),
    ('keys', 'Set of keys', 21, 0, 1, 1, 1, ''),
    ('GADGET_PARACHUTE', 'Parachute', 8000, 0, 1, 1, 0, ''),
    ('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', 3180, 0, 1, 1, 0, ''),
    ('WEAPON_APPISTOL', 'AP Pistol', 1220, 0, 1, 1, 0, ''),
    ('WEAPON_ASSAULTRIFLE', 'Assault Rifle', 3470, 0, 1, 1, 0, ''),
    ('WEAPON_ASSAULTRIFLE_MK2', 'Assault Rifle MK2', 3300, 0, 1, 1, 0, ''),
    ('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 3100, 0, 1, 1, 0, ''),
    ('WEAPON_ASSAULTSMG', 'Assault SMG', 2850, 0, 1, 1, 0, ''),
    ('WEAPON_BALL', 'Ball', 149, 0, 1, 1, 0, ''),
    ('WEAPON_BAT', 'Bat', 1134, 0, 1, 1, 0, ''),
    ('WEAPON_BOTTLE', 'Bottle', 350, 0, 1, 1, 0, ''),
    ('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', 2900, 0, 1, 1, 0, ''),
    ('WEAPON_BULLPUPRIFLE_MK2', 'Bullpup Rifle MK2', 2900, 0, 1, 1, 0, ''),
    ('WEAPON_BULLPUPSHOTGUN', 'Bullpup Shotgun', 3100, 0, 1, 1, 0, ''),
    ('WEAPON_BZGAS', 'BZ Gas', 600, 0, 1, 1, 0, ''),
    ('WEAPON_CARBINERIFLE', 'Carbine Rifle', 3100, 0, 1, 1, 0, ''),
    ('WEAPON_CARBINERIFLE_MK2', 'Carbiner Rifle MK2', 3000, 0, 1, 1, 0, ''),
    ('WEAPON_COMBATMG', 'Combat MG', 10000, 0, 1, 1, 0, ''),
    ('WEAPON_COMBATMG_MK2', 'Combat MG MK2', 10500, 0, 1, 1, 0, ''),
    ('WEAPON_COMBATPDW', 'Combat PDW', 2700, 0, 1, 1, 0, ''),
    ('WEAPON_COMBATPISTOL', 'Combat Pistol', 970, 0, 1, 1, 0, ''),
    ('WEAPON_COMPACTRIFLE', 'Compact Rifle', 2700, 0, 1, 1, 0, ''),
    ('WEAPON_CROWBAR', 'Crowbar', 2500, 0, 1, 1, 0, ''),
    ('WEAPON_DAGGER', 'Dagger', 800, 0, 1, 1, 0, ''),
    ('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', 3175, 0, 1, 1, 0, ''),
    ('WEAPON_DOUBLEACTION', 'Double Action Revolver', 940, 0, 1, 1, 0, ''),
    ('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', 8616, 0, 1, 1, 0, ''),
    ('WEAPON_FIREWORK', 'Firework Launcher', 1000, 0, 1, 1, 0, ''),
    ('WEAPON_FLARE', 'Flare', 235, 0, 1, 1, 0, ''),
    ('WEAPON_FLAREGUN', 'Flare Gun', 1000, 0, 1, 1, 0, ''),
    ('WEAPON_FLASHLIGHT', 'Flashlight', 125, 0, 1, 1, 0, ''),
    ('WEAPON_GOLFCLUB', 'Golf Club', 330, 0, 1, 1, 0, ''),
    ('WEAPON_GRENADE', 'Grenade', 600, 0, 1, 1, 0, ''),
    ('WEAPON_GUSENBERG', 'Gusenberg', 4900, 0, 1, 1, 0, ''),
    ('WEAPON_HAMMER', 'Hammer', 1200, 0, 1, 1, 0, ''),
    ('WEAPON_HATCHET', 'Hatchet', 1000, 0, 1, 1, 0, ''),
    ('WEAPON_HAZARDCAN', 'Hazard Can', 12000, 0, 1, 1, 0, ''),
    ('WEAPON_HEAVYPISTOL', 'Heavy Pistol', 1100, 0, 1, 1, 0, ''),
    ('WEAPON_HEAVYSHOTGUN', 'Heavy Shotgun', 3600, 0, 1, 1, 0, ''),
    ('WEAPON_HEAVYSNIPER', 'Heavy Sniper', 14000, 0, 1, 1, 0, ''),
    ('WEAPON_HEAVYSNIPER_MK2', 'Heavy Sniper MK2', 10432, 0, 1, 1, 0, ''),
    ('WEAPON_KNIFE', 'Knife', 300, 0, 1, 1, 0, ''),
    ('WEAPON_KNUCKLE', 'Knuckle Dusters', 300, 0, 1, 1, 0, ''),
    ('WEAPON_MACHETE', 'Machete', 1000, 0, 1, 1, 0, ''),
    ('WEAPON_MACHINEPISTOL', 'Machine Pistol', 1400, 0, 1, 1, 0, ''),
    ('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', 1588, 0, 1, 1, 0, ''),
    ('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', 7500, 0, 1, 1, 0, ''),
    ('WEAPON_MARKSMANRIFLE_MK2', 'Marksman Rifle', 4000, 0, 1, 1, 0, ''),
    ('WEAPON_MG', 'Machine Gun', 9000, 0, 1, 1, 0, ''),
    ('WEAPON_MICROSMG', 'Micro SMG', 4000, 0, 1, 1, 0, ''),
    ('WEAPON_MINISMG', 'Mini SMG', 2770, 0, 1, 1, 0, ''),
    ('WEAPON_MOLOTOV', 'Molotov', 1800, 0, 1, 1, 0, ''),
    ('WEAPON_NIGHTSTICK', 'Nightstick', 1000, 0, 1, 1, 0, ''),
    ('WEAPON_PETROLCAN', 'Gas Can', 12000, 0, 1, 1, 0, ''),
    ('WEAPON_PIPEBOMB', 'Pipe Bomb', 1800, 0, 1, 1, 0, ''),
    ('WEAPON_PISTOL', 'Pistol', 970, 0, 1, 1, 0, ''),
    ('WEAPON_PISTOL50', 'PIstol .50', 2000, 0, 1, 1, 0, ''),
    ('WEAPON_PISTOL_MK2', 'Pistol MK2', 970, 0, 1, 1, 0, ''),
    ('WEAPON_POOLCUE', 'Pool Cue', 146, 0, 1, 1, 0, ''),
    ('WEAPON_PROXMINE', 'Proximity Mine', 2500, 0, 1, 1, 0, ''),
    ('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 3400, 0, 1, 1, 0, ''),
    ('WEAPON_PUMPSHOTGUN_MK2', 'Pump Shotgun MK2', 3200, 0, 1, 1, 0, ''),
    ('WEAPON_REVOLVER', 'Revolver', 2260, 0, 1, 1, 0, ''),
    ('WEAPON_REVOLVER_MK2', 'Revolver MK2', 1500, 0, 1, 1, 0, ''),
    ('WEAPON_SAWNOFFSHOTGUN', 'Sawn Off Shotgun', 2380, 0, 1, 1, 0, ''),
    ('WEAPON_SMG', 'SMG', 3084, 0, 1, 1, 0, ''),
    ('WEAPON_SMG_MK2', 'SMG Mk2', 2700, 0, 1, 1, 0, ''),
    ('WEAPON_SMOKEGRENADE', 'Smoke Gernade', 600, 0, 1, 1, 0, ''),
    ('WEAPON_SNIPERRIFLE', 'Sniper Rifle', 6500, 0, 1, 1, 0, ''),
    ('WEAPON_SNOWBALL', 'Snow Ball', 5, 0, 1, 1, 0, ''),
    ('WEAPON_SNSPISTOL', 'SNS Pistol', 465, 0, 1, 1, 0, ''),
    ('WEAPON_SNSPISTOL_MK2', 'SNS Pistol MK2', 465, 0, 1, 1, 0, ''),
    ('WEAPON_SPECIALCARBINE', 'Special Carbine', 3000, 0, 1, 1, 0, ''),
    ('WEAPON_SPECIALCARBINE_MK2', 'Special Carbine MK2', 3370, 0, 1, 1, 0, ''),
    ('WEAPON_STICKYBOMB', 'Sticky Bomb', 1000, 0, 1, 1, 0, ''),
    ('WEAPON_STUNGUN', 'Tazer', 227, 0, 1, 1, 0, ''),
    ('WEAPON_SWEEPERSHOTGUN', 'Sweeper Shotgun', 4400, 0, 1, 1, 0, ''),
    ('WEAPON_SWITCHBLADE', 'Switch Blade', 300, 0, 1, 1, 0, ''),
    ('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', 100, 0, 1, 1, 0, ''),
    ('WEAPON_WRENCH', 'Wrench', 2500, 0, 1, 1, 0, ''),
    ('WEAPON_MUSKET', 'Musket', 4500, 0, 1, 1, 0, ''),
    ('WEAPON_BATTLEAXE', 'Battleaxe', 1200, 0, 1, 1, 0, ''),
    ('WEAPON_STONE_HATCHET', 'Stone hatchet', 800, 0, 1, 1, 0, '');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
