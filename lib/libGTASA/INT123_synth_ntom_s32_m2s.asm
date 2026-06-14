; =========================================================
; Game Engine Function: INT123_synth_ntom_s32_m2s
; Address            : 0x23AD4E - 0x23AD9C
; =========================================================

23AD4E:  PUSH            {R4-R7,LR}
23AD50:  ADD             R7, SP, #0xC
23AD52:  PUSH.W          {R8}
23AD56:  MOV             R4, R1
23AD58:  MOVW            R1, #0xB2A0
23AD5C:  LDR.W           R8, [R4,R1]
23AD60:  MOVW            R6, #0xB2A8
23AD64:  MOVS            R1, #0
23AD66:  MOV             R2, R4
23AD68:  MOVS            R3, #1
23AD6A:  LDR             R5, [R4,R6]
23AD6C:  BLX             j_INT123_synth_ntom_s32
23AD70:  LDR             R1, [R4,R6]
23AD72:  SUBS            R1, R1, R5
23AD74:  CMP             R1, #8
23AD76:  BCC             loc_23AD96
23AD78:  ADDS            R1, R4, R6
23AD7A:  ADD.W           R2, R8, R5
23AD7E:  MOVS            R3, #0
23AD80:  LDR.W           R6, [R2,R3,LSL#3]
23AD84:  ADD.W           R4, R2, R3,LSL#3
23AD88:  ADDS            R3, #1
23AD8A:  STR             R6, [R4,#4]
23AD8C:  LDR             R6, [R1]
23AD8E:  SUBS            R6, R6, R5
23AD90:  CMP.W           R3, R6,LSR#3
23AD94:  BCC             loc_23AD80
23AD96:  POP.W           {R8}
23AD9A:  POP             {R4-R7,PC}
