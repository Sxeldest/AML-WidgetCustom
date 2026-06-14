; =========================================================
; Game Engine Function: _ZN6CCheat17SunnyWeatherCheatEv
; Address            : 0x2FD600 - 0x2FD606
; =========================================================

2FD600:  MOVS            R0, #(stderr+1); this
2FD602:  B.W             j_j__ZN8CWeather15ForceWeatherNowEs; j_CWeather::ForceWeatherNow(short)
