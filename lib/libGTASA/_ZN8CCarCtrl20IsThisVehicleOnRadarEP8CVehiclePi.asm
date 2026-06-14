; =========================================================
; Game Engine Function: _ZN8CCarCtrl20IsThisVehicleOnRadarEP8CVehiclePi
; Address            : 0x2FADE0 - 0x2FADFA
; =========================================================

2FADE0:  LDR.W           R2, [R0,#0x42C]
2FADE4:  MOVS            R0, #2
2FADE6:  TST.W           R2, #1
2FADEA:  ITT EQ
2FADEC:  ANDEQ.W         R0, R0, R2,LSR#2
2FADF0:  ORREQ.W         R0, R0, #1
2FADF4:  STR             R0, [R1]
2FADF6:  MOVS            R0, #1
2FADF8:  BX              LR
