//	@file Version: 1.1
//	@file Name: gearLevel10.sqf
//	@file Author: Cael817, based of something i found
//	@file Created: 20140808 15:23


if (((getPlayerUID player) in call gearLevel10)) then {

player setVariable ["cmoney", (player getVariable "cmoney") + 5000, true];

removeAllWeapons player;
//removeUniform player;
//removeallitems player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadgear player;

player addBackpack "B_Carryall_mcamo";
player addUniform "U_B_GhillieSuit";
player addVest "V_PlateCarrierIAGL_dgtl";	
player linkItem "NVGoggles";
player linkItem "ItemGPS";
player addMagazines ["MiniGrenade", 3];
player addMagazines ["Titan_AA", 1];
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

player addMagazines ["20Rnd_762x51_Mag", 8];
player addMagazines ["Titan_AA", 1];
player addWeapon "srifle_EBR_F";
player addWeapon "launch_Titan_F";
player addPrimaryWeaponItem "optic_Nightstalker";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "muzzle_snds_B";
player selectWeapon "srifle_EBR_F";

};
