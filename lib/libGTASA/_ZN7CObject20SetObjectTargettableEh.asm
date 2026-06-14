; =========================================================
; Game Engine Function: _ZN7CObject20SetObjectTargettableEh
; Address            : 0x455B0C - 0x455B22
; =========================================================

455B0C:  LDR.W           R2, [R0,#0x144]
455B10:  AND.W           R1, R1, #1
455B14:  BIC.W           R2, R2, #0x200
455B18:  ORR.W           R1, R2, R1,LSL#9
455B1C:  STR.W           R1, [R0,#0x144]
455B20:  BX              LR
