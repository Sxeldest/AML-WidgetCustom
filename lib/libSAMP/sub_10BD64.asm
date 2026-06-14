; =========================================================
; Game Engine Function: sub_10BD64
; Address            : 0x10BD64 - 0x10BDA0
; =========================================================

10BD64:  PUSH            {R4,R6,R7,LR}
10BD66:  ADD             R7, SP, #8
10BD68:  SUB             SP, SP, #0x18
10BD6A:  ADD.W           R4, R0, #0x48 ; 'H'
10BD6E:  STRH.W          R1, [R7,#var_12]
10BD72:  SUB.W           R1, R7, #-var_12
10BD76:  MOV             R0, R4
10BD78:  BL              sub_10C464
10BD7C:  CBNZ            R0, loc_10BD9C
10BD7E:  BL              sub_F0B30
10BD82:  MOVS            R2, #0
10BD84:  LDRH.W          R1, [R7,#var_12]
10BD88:  STRD.W          R0, R2, [SP,#0x20+var_1C]
10BD8C:  MOV             R2, SP
10BD8E:  ADD             R0, SP, #0x20+var_10
10BD90:  STRH.W          R1, [SP,#0x20+var_20]
10BD94:  MOV             R1, R4
10BD96:  MOV             R3, R2
10BD98:  BL              sub_10C50A
10BD9C:  ADD             SP, SP, #0x18
10BD9E:  POP             {R4,R6,R7,PC}
