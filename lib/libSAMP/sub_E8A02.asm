; =========================================================
; Game Engine Function: sub_E8A02
; Address            : 0xE8A02 - 0xE8A5A
; =========================================================

E8A02:  PUSH            {R4,R5,R7,LR}
E8A04:  ADD             R7, SP, #8
E8A06:  SUB             SP, SP, #0x20
E8A08:  MOV             R4, R0
E8A0A:  LDR             R0, [R0,#8]
E8A0C:  CMP.W           R1, R0,LSL#5
E8A10:  BLS             loc_E8A56
E8A12:  MOVS            R5, #0
E8A14:  STR             R5, [SP,#0x28+var_C]
E8A16:  STRD.W          R5, R5, [SP,#0x28+var_14]
E8A1A:  ADD             R0, SP, #0x28+var_14
E8A1C:  BL              sub_E8A66
E8A20:  LDRD.W          R0, R1, [R4]
E8A24:  AND.W           R2, R1, #0x1F
E8A28:  LSRS            R1, R1, #5
E8A2A:  STRD.W          R0, R5, [SP,#0x28+var_1C]
E8A2E:  ADD.W           R0, R0, R1,LSL#2
E8A32:  STR             R2, [SP,#0x28+var_20]
E8A34:  STR             R0, [SP,#0x28+var_24]
E8A36:  ADD             R0, SP, #0x28+var_14
E8A38:  ADD             R1, SP, #0x28+var_1C
E8A3A:  ADD             R2, SP, #0x28+var_24
E8A3C:  BL              sub_E8A8C
E8A40:  ADD             R3, SP, #0x28+var_14
E8A42:  LDM.W           R4, {R0,R5,R12}; void *
E8A46:  LDM             R3, {R1-R3}
E8A48:  STM             R4!, {R1-R3}
E8A4A:  ADD             R1, SP, #0x28+var_14
E8A4C:  STM.W           R1, {R0,R5,R12}
E8A50:  CBZ             R0, loc_E8A56
E8A52:  BLX             j__ZdlPv; operator delete(void *)
E8A56:  ADD             SP, SP, #0x20 ; ' '
E8A58:  POP             {R4,R5,R7,PC}
