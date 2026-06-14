; =========================================================
; Game Engine Function: silk_PLC_Reset
; Address            : 0xB3980 - 0xB39AE
; =========================================================

B3980:  MOVW            R1, #0x1098
B3984:  MOV.W           R2, #0x10000
B3988:  STR             R2, [R0,R1]
B398A:  MOVW            R1, #0x1094
B398E:  MOVS            R3, #0x14
B3990:  STR             R2, [R0,R1]
B3992:  MOV.W           R1, #0x10A0
B3996:  MOVS            R2, #2
B3998:  STR             R2, [R0,R1]
B399A:  MOVW            R1, #0x10A4
B399E:  LDR.W           R2, [R0,#0x918]
B39A2:  STR             R3, [R0,R1]
B39A4:  LSLS            R1, R2, #7
B39A6:  MOVW            R2, #0x104C
B39AA:  STR             R1, [R0,R2]
B39AC:  BX              LR
