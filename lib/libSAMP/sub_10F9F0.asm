; =========================================================
; Game Engine Function: sub_10F9F0
; Address            : 0x10F9F0 - 0x10FA16
; =========================================================

10F9F0:  PUSH            {R4,R6,R7,LR}
10F9F2:  ADD             R7, SP, #8
10F9F4:  SUB             SP, SP, #8
10F9F6:  MOV             R4, R0
10F9F8:  BL              sub_10FA1C
10F9FC:  LDR             R0, =(unk_2632E8 - 0x10FA04)
10F9FE:  STR             R4, [SP,#0x10+var_C]
10FA00:  ADD             R0, PC; unk_2632E8
10FA02:  LDR             R0, [R0,#(dword_2632F8 - 0x2632E8)]
10FA04:  CBZ             R0, loc_10FA12
10FA06:  LDR             R1, [R0]
10FA08:  LDR             R2, [R1,#0x18]
10FA0A:  ADD             R1, SP, #0x10+var_C
10FA0C:  BLX             R2
10FA0E:  ADD             SP, SP, #8
10FA10:  POP             {R4,R6,R7,PC}
10FA12:  BL              sub_DC92C
