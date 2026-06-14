; =========================================================
; Game Engine Function: sub_15EA00
; Address            : 0x15EA00 - 0x15EA48
; =========================================================

15EA00:  PUSH            {R4,R5,R7,LR}
15EA02:  ADD             R7, SP, #8
15EA04:  SUB             SP, SP, #0x20
15EA06:  MOV             R5, R0
15EA08:  LDR             R0, [R0]
15EA0A:  STR             R2, [SP,#0x28+var_1C]
15EA0C:  CBZ             R0, loc_15EA44
15EA0E:  MOV             R4, R1
15EA10:  STR             R1, [SP,#0x28+var_10]
15EA12:  ADD             R1, SP, #0x28+var_10
15EA14:  BL              sub_15FAE4
15EA18:  CBZ             R0, loc_15EA44
15EA1A:  MOV             R0, R5
15EA1C:  MOV             R1, R4
15EA1E:  BL              sub_15E798
15EA22:  LDR             R3, =(unk_BA757 - 0x15EA36)
15EA24:  ADD             R1, SP, #0x28+var_18
15EA26:  ADD             R2, SP, #0x28+var_1C
15EA28:  ADD             R5, SP, #0x28+var_14
15EA2A:  STRD.W          R5, R1, [SP,#0x28+var_28]
15EA2E:  ADD.W           R1, R0, #0x14
15EA32:  ADD             R3, PC; unk_BA757
15EA34:  ADD             R0, SP, #0x28+var_10
15EA36:  STR             R2, [SP,#0x28+var_14]
15EA38:  BL              sub_15F6EC
15EA3C:  LDR             R0, [SP,#0x28+var_10]
15EA3E:  MOVS            R1, #0
15EA40:  STRB.W          R1, [R0,#0x50]
15EA44:  ADD             SP, SP, #0x20 ; ' '
15EA46:  POP             {R4,R5,R7,PC}
