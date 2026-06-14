; =========================================================
; Game Engine Function: _ZN26CPedScriptedTaskRecordDataC2Ev
; Address            : 0x4C2A10 - 0x4C2A24
; =========================================================

4C2A10:  MOVS            R1, #0; Alternative name is 'CPedScriptedTaskRecordData::CPedScriptedTaskRecordData(void)'
4C2A12:  MOV.W           R2, #0xFFFFFFFF
4C2A16:  MOVS            R3, #3
4C2A18:  STRD.W          R2, R1, [R0]
4C2A1C:  STRD.W          R1, R1, [R0,#8]
4C2A20:  STR             R3, [R0,#0x10]
4C2A22:  BX              LR
