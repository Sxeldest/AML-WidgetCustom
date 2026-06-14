; =========================================================
; Game Engine Function: sub_1EF13C
; Address            : 0x1EF13C - 0x1EF15A
; =========================================================

1EF13C:  LDRD.W          R1, R0, [R0,#4]
1EF140:  MOV.W           R2, #0xFFFFFFFF
1EF144:  SUBS            R0, R0, R1
1EF146:  MOV.W           R1, R0,ASR#2
1EF14A:  MOV.W           R1, R1,LSL#3
1EF14E:  SUB.W           R1, R1, R0,ASR#2
1EF152:  IT NE
1EF154:  ADDNE.W         R0, R2, R1,LSL#3
1EF158:  BX              LR
