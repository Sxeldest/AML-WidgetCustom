; =========================================================
; Game Engine Function: _Z34RxRenderStateVectorLoadDriverStateP19RxRenderStateVector
; Address            : 0x1E1990 - 0x1E1A76
; =========================================================

1E1990:  PUSH            {R4,R6,R7,LR}
1E1992:  ADD             R7, SP, #8
1E1994:  SUB             SP, SP, #0x10
1E1996:  MOV             R4, R0
1E1998:  CMP             R4, #0
1E199A:  BEQ             loc_1E1A5A
1E199C:  MOVS            R0, #0
1E199E:  ADD             R1, SP, #0x18+var_C
1E19A0:  STR             R0, [R4]
1E19A2:  MOVS            R0, #5
1E19A4:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E19A8:  LDR             R0, [SP,#0x18+var_C]
1E19AA:  ADD             R1, SP, #0x18+var_C
1E19AC:  CMP             R0, #0
1E19AE:  ITTT NE
1E19B0:  LDRNE           R0, [R4]
1E19B2:  ORRNE.W         R0, R0, #1
1E19B6:  STRNE           R0, [R4]
1E19B8:  MOVS            R0, #6
1E19BA:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E19BE:  LDR             R0, [SP,#0x18+var_C]
1E19C0:  ADD             R1, SP, #0x18+var_C
1E19C2:  CMP             R0, #0
1E19C4:  ITTT NE
1E19C6:  LDRNE           R0, [R4]
1E19C8:  ORRNE.W         R0, R0, #2
1E19CC:  STRNE           R0, [R4]
1E19CE:  MOVS            R0, #8
1E19D0:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E19D4:  LDR             R0, [SP,#0x18+var_C]
1E19D6:  ADD             R1, SP, #0x18+var_C
1E19D8:  CMP             R0, #0
1E19DA:  ITTT NE
1E19DC:  LDRNE           R0, [R4]
1E19DE:  ORRNE.W         R0, R0, #4
1E19E2:  STRNE           R0, [R4]
1E19E4:  MOVS            R0, #0xC
1E19E6:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E19EA:  LDR             R0, [SP,#0x18+var_C]
1E19EC:  ADDS            R1, R4, #4
1E19EE:  CMP             R0, #0
1E19F0:  ITTT NE
1E19F2:  LDRNE           R0, [R4]
1E19F4:  ORRNE.W         R0, R0, #8
1E19F8:  STRNE           R0, [R4]
1E19FA:  MOVS            R0, #7
1E19FC:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E1A00:  ADD.W           R1, R4, #8
1E1A04:  MOVS            R0, #0xA
1E1A06:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E1A0A:  ADD.W           R1, R4, #0xC
1E1A0E:  MOVS            R0, #0xB
1E1A10:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E1A14:  ADD.W           R1, R4, #0x10
1E1A18:  MOVS            R0, #1
1E1A1A:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E1A1E:  ADD.W           R1, R4, #0x14
1E1A22:  MOVS            R0, #2
1E1A24:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E1A28:  CMP             R0, #0
1E1A2A:  ADD.W           R1, R4, #0x1C
1E1A2E:  ITT NE
1E1A30:  LDRNE           R0, [R4,#0x14]
1E1A32:  STRNE           R0, [R4,#0x18]
1E1A34:  MOVS            R0, #9
1E1A36:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E1A3A:  ADD.W           R1, R4, #0x20 ; ' '
1E1A3E:  MOVS            R0, #0xD
1E1A40:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E1A44:  ADD.W           R1, R4, #0x24 ; '$'
1E1A48:  MOVS            R0, #0x10
1E1A4A:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E1A4E:  ADD.W           R1, R4, #0x28 ; '('
1E1A52:  MOVS            R0, #0xF
1E1A54:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1E1A58:  B               loc_1E1A70
1E1A5A:  MOVS            R0, #0x16
1E1A5C:  MOVS            R4, #0
1E1A5E:  MOVT            R0, #0x8000; int
1E1A62:  STR             R4, [SP,#0x18+var_14]
1E1A64:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E1A68:  STR             R0, [SP,#0x18+var_10]
1E1A6A:  ADD             R0, SP, #0x18+var_14
1E1A6C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E1A70:  MOV             R0, R4
1E1A72:  ADD             SP, SP, #0x10
1E1A74:  POP             {R4,R6,R7,PC}
