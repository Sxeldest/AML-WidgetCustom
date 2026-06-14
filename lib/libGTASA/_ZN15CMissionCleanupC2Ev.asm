; =========================================================
; Game Engine Function: _ZN15CMissionCleanupC2Ev
; Address            : 0x32731C - 0x327336
; =========================================================

32731C:  MOVS            R1, #0; Alternative name is 'CMissionCleanup::CMissionCleanup(void)'
32731E:  MOVS            R2, #0
327320:  STRB.W          R1, [R0,#0x258]
327324:  STRB.W          R1, [R0,R2,LSL#3]
327328:  ADD.W           R3, R0, R2,LSL#3
32732C:  ADDS            R2, #1
32732E:  CMP             R2, #0x4B ; 'K'
327330:  STR             R1, [R3,#4]
327332:  BNE             loc_327324
327334:  BX              LR
