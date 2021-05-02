
//=========[Anti C-Bug Filterscript By LilMoon(Ahmed)]===================//

#include <a_samp>
new ISCBUGING [MAX_PLAYERS];

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{

        if(newkeys & KEY_FIRE && oldkeys & KEY_CROUCH || newkeys  & KEY_CROUCH && oldkeys & KEY_FIRE)
        {
        	CallLocalFunction("MakeCBug", "i", playerid);

        }
		return 1;
}

forward MakeCBug(playerid);
public MakeCBug(playerid)
{
    if(ISCBUGING[playerid]) return 0;
	new Float:spx, Float:spy, Float:spz;
	GetPlayerPos(playerid, spx, spy, spz); 
    SetPlayerPos(playerid, spx, spy, spz+2); // this will make the player fly. You can change it to the action you want.
    GameTextForPlayer(playerid, "Do not use C-Bug", 2000, 3);
    PlayerPlaySound(playerid, 1130, 0.0, 0.0, 0.0); // this will play Slapping sound.
    ISCBUGING [playerid] == 1;
    SetTimerEx("CbugTime", 3000, false, "d", playerid);
    return 1;
}

forward CbugTime(playerid);
public CbugTime(playerid)
{
    ISCBUGING [playerid] == 0;
    return 1;
}
// Made by Lil$Moon.
