//	@file Version: 1.0
//	@file Name: intro.sqf
//	@file Author: Mike Lowrey, original file by HellsGateGaming.com and IT07
//	@file Created: 20140906 01:45

_onScreenTime = 8;

sleep 8;

_role1 = "Welcome to [Armaholic] ARMA 3 Wasteland";
_role1names = ["This server restarts every 6 hours."];
_role2 = "Server Admin/Founder";
_role2names = ["Mike Lowrey"];
_role3 = "Help and Info";
_role3names = ["Help and Info can be found in the map menu"];
_role4 = "Site/Forum";
_role4names = ["www.armaholic.co.uk"];
_role5 = "Feedback";
_role5names = ["Please report any bugs/feedback to: www.armaholic.co.uk"];
_role6 = "Teamspeak";
_role6names = ["ts.armaholic.co.uk"];
_role7 = "Additional start gear";
_role7names = ["Custom Spawn loadouts for donators"];
_role8 = "Lone Wolf Development";
_role8names = ["Please understand that this is a custom mission, I've made some modifications that aren't part of vanilla. let us know of any bugs!."];
_role9 = "Vehicle Saving";
_role9names = ["We are currently working very hard to bring back vehicle saving, for progress reports see our website"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.50' color='#f2cb0b' align='left'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='left'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names]
];

