//	@file Version: 1.1
//	@file Name: gearLevel1.sqf
//	@file Author: Cael817, based of something i found
//	@file Created: 20140808 15:11


if (((getPlayerUID player) in call gearLevel1)) then {

player setVariable ["cmoney", (player getVariable "cmoney") + 0, true];

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
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "";
player addGoggles "";
player addHeadgear "";

player addMagazines [""];
player addWeapon "hgun_ACPC2_F";
player addhandGunItem "";
player addhandGunItem "";

player addMagazines [""];
player addWeapon "";
player addPrimaryWeaponItem "";
player addPrimaryWeaponItem "";
player addPrimaryWeaponItem "";
player selectWeapon "";

};
