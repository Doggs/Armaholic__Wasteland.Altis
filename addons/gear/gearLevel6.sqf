//	@file Version: 1.1
//	@file Name: gearLevel6.sqf
//	@file Author: Cael817, based of something i found
//	@file Created: 20140808 15:19


if (((getPlayerUID player) in call gearLevel6)) then {

player setVariable ["cmoney", (player getVariable "cmoney") + 2500, true];

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
player addItem "ToolKit";
player addItem "MediKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addGoggles "";
player addHeadgear "H_Shemag_khk";

player addMagazines ["11Rnd_45ACP_Mag", 5];
player addWeapon "hgun_Pistol_heavy_01_F";
player selectWeapon "hgun_Pistol_heavy_01_F";

};
