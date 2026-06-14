; =========================================================
; Game Engine Function: _Z28_rpMaterialListStreamGetSizePK14RpMaterialList
; Address            : 0x2179AC - 0x217A08
; =========================================================

2179AC:  PUSH            {R4-R7,LR}
2179AE:  ADD             R7, SP, #0xC
2179B0:  PUSH.W          {R8,R9,R11}
2179B4:  MOV             R9, R0
2179B6:  MOVS            R0, #0x10
2179B8:  LDR.W           R1, [R9,#4]
2179BC:  CMP             R1, #1
2179BE:  ADD.W           R8, R0, R1,LSL#2
2179C2:  BLT             loc_217A00
2179C4:  MOVS            R6, #0
2179C6:  LDR.W           R2, [R9]
2179CA:  MOV             R4, R6
2179CC:  SUBS            R3, R2, #4
2179CE:  CBZ             R4, loc_2179E8
2179D0:  LDR.W           R0, [R3,R4,LSL#2]
2179D4:  SUBS            R5, R4, #1
2179D6:  LDR.W           R4, [R2,R6,LSL#2]
2179DA:  CMP             R0, R4
2179DC:  MOV             R4, R5
2179DE:  BNE             loc_2179CE
2179E0:  ADDS            R2, R5, #1
2179E2:  CMP             R2, #1
2179E4:  BGE             loc_2179FA
2179E6:  B               loc_2179EC
2179E8:  LDR.W           R0, [R2,R6,LSL#2]
2179EC:  BLX             j__Z23RpMaterialStreamGetSizePK10RpMaterial; RpMaterialStreamGetSize(RpMaterial const*)
2179F0:  ADD             R0, R8
2179F2:  LDR.W           R1, [R9,#4]
2179F6:  ADD.W           R8, R0, #0xC
2179FA:  ADDS            R6, #1
2179FC:  CMP             R6, R1
2179FE:  BLT             loc_2179C6
217A00:  MOV             R0, R8
217A02:  POP.W           {R8,R9,R11}
217A06:  POP             {R4-R7,PC}
