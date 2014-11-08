//	@file Version: 1.1
//	@file Name: gearLevel3.sqf
//	@file Author: Cael817, based of something i found
//	@file Created: 20140808 15:12


if (((getPlayerUID player) in call gearLevel3)) then {

player setVariable ["cmoney", (player getVariable "cmoney") + 1000, true];

removeAllWeapons player;
//removeUniform player;
//removeallitems player;
//removeVest player;
//removeBackpack player;
//removeGoggles player;
//removeHeadgear player;
clearMagazineCargo player;

player addBackpack "B_Carryall_mcamo";
player addUniform "U_OG_leader";
player addVest "V_PlateCarrierIAGL_dgtl";	
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
player addHeadgear "H_HelmetIA";

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
