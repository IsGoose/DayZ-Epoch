private["_vehicle"];
_vehicle = _this select 3;

if (DZE_ActionInProgress) exitWith {localize "str_epoch_player_37" call dayz_rollingMessages;};
DZE_ActionInProgress = true;

{player removeAction _x} count s_player_lockunlock;s_player_lockunlock = [];
s_player_lockUnlock_crtl = 1;
{DZE_myVehicle removeAction _x} count s_player_lockUnlockInside;s_player_lockUnlockInside = [];
s_player_lockUnlockInside_ctrl = -1;

PVDZE_veh_Lock = [_vehicle,true];
if(player distance _vehicle < 10) then {
	if (local _vehicle) then {
		PVDZE_veh_Lock spawn local_lockUnlock
	} else {
		publicVariable "PVDZE_veh_Lock";
	};
};

s_player_lockUnlock_crtl = -1;
s_player_lockUnlockInside_ctrl = -1;
DZE_ActionInProgress = false;