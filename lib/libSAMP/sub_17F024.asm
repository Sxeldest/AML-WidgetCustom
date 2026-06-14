; =========================================================
; Game Engine Function: sub_17F024
; Address            : 0x17F024 - 0x17F05E
; =========================================================

17F024:  PUSH            {R4-R7,LR}
17F026:  ADD             R7, SP, #0xC
17F028:  PUSH.W          {R11}
17F02C:  STRD.W          R1, R2, [SP,#0x10+var_18]!
17F030:  ADD.W           R5, R0, #0xAF0
17F034:  MOVS            R6, #0x20 ; ' '
17F036:  MOV             R4, SP
17F038:  SUB.W           R0, R5, #8
17F03C:  MOV             R1, R4
17F03E:  BL              sub_17E580
17F042:  CBNZ            R0, loc_17F052
17F044:  SUBS            R6, #1
17F046:  ADD.W           R5, R5, #0x124
17F04A:  BNE             loc_17F038
17F04C:  MOV.W           R0, #0xFFFFFFFF
17F050:  B               loc_17F056
17F052:  LDRSH.W         R0, [R5]
17F056:  ADD             SP, SP, #8
17F058:  POP.W           {R11}
17F05C:  POP             {R4-R7,PC}
