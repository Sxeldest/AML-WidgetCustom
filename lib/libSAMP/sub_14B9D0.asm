; =========================================================
; Game Engine Function: sub_14B9D0
; Address            : 0x14B9D0 - 0x14BA3A
; =========================================================

14B9D0:  PUSH            {R7,LR}
14B9D2:  MOV             R7, SP
14B9D4:  SUB             SP, SP, #0x130
14B9D6:  LDRD.W          R1, R0, [R0]; src
14B9DA:  MOVS            R3, #0
14B9DC:  ASRS            R2, R0, #0x1F
14B9DE:  ADD.W           R0, R0, R2,LSR#29
14B9E2:  MOVS            R2, #1
14B9E4:  ADD.W           R2, R2, R0,ASR#3; size
14B9E8:  ADD             R0, SP, #0x138+var_128; int
14B9EA:  BL              sub_17D4F2
14B9EE:  ADD             R1, SP, #0x138+var_C; int
14B9F0:  MOVS            R2, #0x20 ; ' '
14B9F2:  MOVS            R3, #1
14B9F4:  BL              sub_17D786
14B9F8:  ADD             R0, SP, #0x138+var_128; int
14B9FA:  ADD             R1, SP, #0x138+var_10; int
14B9FC:  MOVS            R2, #0x20 ; ' '
14B9FE:  MOVS            R3, #1
14BA00:  BL              sub_17D786
14BA04:  ADD             R0, SP, #0x138+var_128; int
14BA06:  ADD             R1, SP, #0x138+var_14; int
14BA08:  MOVS            R2, #0x20 ; ' '
14BA0A:  MOVS            R3, #1
14BA0C:  BL              sub_17D786
14BA10:  LDR             R0, =(off_234970 - 0x14BA18)
14BA12:  LDR             R1, [SP,#0x138+var_C]; int
14BA14:  ADD             R0, PC; off_234970
14BA16:  LDRD.W          R3, R2, [SP,#0x138+var_14]; int
14BA1A:  LDR             R0, [R0]; dword_23DEF0
14BA1C:  LDR             R0, [R0]
14BA1E:  LDR             R0, [R0,#4]; int
14BA20:  MOV.W           R12, #0
14BA24:  STRD.W          R12, R12, [SP,#0x138+var_138]; float
14BA28:  STR.W           R12, [SP,#0x138+var_130]; float
14BA2C:  BL              sub_F8630
14BA30:  ADD             R0, SP, #0x138+var_128
14BA32:  BL              sub_17D542
14BA36:  ADD             SP, SP, #0x130
14BA38:  POP             {R7,PC}
