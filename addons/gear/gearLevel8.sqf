//	@file Version: 1.1
//	@file Name: gearLevel8.sqf
//	@file Author: Cael817, based of something i found
//	@file Created: 20140808 15:21


if (((getPlayerUID player) in call gearLevel8)) then {

player setVariable ["cmoney", (player getVariable "cmoney") + 3500, true];

removeAllWeapons player;
//removeUniform player;
//removeallitems player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadgear player;

player addBackpack "B_Carryall_mcamo";
//player addUniform "U_B_CTRG_1";
player addVest "V_PlateCarrierSpec_rgr";	
player addWeapon "Binocular";
player addItem "ToolKit";
player addItem "MediKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addGoggles "";
player addHeadgear "H_Shemag_khk";

player addMagazines ["11Rnd_45ACP_Mag", 3];
player addWeapon "hgun_Pistol_heavy_01_F";
player addhandGunItem "optic_MRD";
player addhandGunItem "muzzle_snds_acp";

player addMagazines ["30Rnd_65x39_caseless_mag_Tracer", 3];
player addWeapon "arifle_MX_F";
player addPrimaryWeaponItem "optic_Aco";
player selectWeapon "arifle_MX_F";

};
