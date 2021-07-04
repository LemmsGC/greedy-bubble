yy = -20;

if ((!steam_get_achievement("TB10")) && global.points <= 10) steam_set_achievement("TB10");
if ((!steam_get_achievement("R0")) && global.points <= 1) steam_set_achievement("R0");
if ((!steam_get_achievement("RB25")) && global.points >= 25) steam_set_achievement("RB25");
if ((!steam_get_achievement("WPM30")) && global.points >= 30) steam_set_achievement("WPM30");