//	@file Version: 1.1
//	@file Name: gearLevel2.sqf
//	@file Author: Cael817, based of something i found
//	@file Created: 20140808 15:11


if (((getPlayerUID player) in call gearLevel2)) then {

player setVariable ["cmoney", (player getVariable "cmoney") + 1500, true];

removeAllWeapons player;
//removeUniform player;
//removeallitems player;
//removeVest player;
//removeBackpack player;
//removeGoggles player;
//removeHeadgear player;

player addBackpack "";
//player addUniform "U_B_CTRG_1";
player addVest "";	
player linkItem "";
player linkItem "";
player addWeapon "Binocular";
player addMagazines ["MiniGrenade", 1];
player addMagazines ["SmokeShellRed", 2];
player addItem "ToolKit";
player addItem "MediKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addGoggles "";
player addHeadgear "";

player addMagazines ["11Rnd_45ACP_Mag", 3];
player addWeapon "hgun_Pistol_heavy_01_F";
player addhandGunItem "optic_MRD";
player addhandGunItem "muzzle_snds_acp";

player addMagazines [""];
player addWeapon "";
player addPrimaryWeaponItem "";
player addPrimaryWeaponItem "";
player addPrimaryWeaponItem "";
player selectWeapon "";

};
