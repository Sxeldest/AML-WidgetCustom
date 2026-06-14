; =========================================================
; Game Engine Function: sub_1489AC
; Address            : 0x1489AC - 0x148A28
; =========================================================

1489AC:  PUSH            {R4,R5,R7,LR}
1489AE:  ADD             R7, SP, #8
1489B0:  SUB             SP, SP, #0x138
1489B2:  ADD.W           R0, R0, #0x23000
1489B6:  MOV.W           R1, #0xFFFFFFFF
1489BA:  ADDS            R0, #4
1489BC:  DMB.W           ISH
1489C0:  LDREX.W         R4, [R0]
1489C4:  STREX.W         R2, R1, [R0]
1489C8:  CMP             R2, #0
1489CA:  BNE             loc_1489C0
1489CC:  ADDS            R0, R4, #1
1489CE:  DMB.W           ISH
1489D2:  BEQ             loc_148A24
1489D4:  ADD             R0, SP, #0x140+var_120
1489D6:  BL              sub_17D4A8
1489DA:  STR             R4, [SP,#0x140+var_C]
1489DC:  ADD             R1, SP, #0x140+var_C
1489DE:  MOVS            R2, #0x20 ; ' '
1489E0:  MOVS            R3, #1
1489E2:  BL              sub_17D628
1489E6:  LDR             R0, =(off_23496C - 0x1489EE)
1489E8:  MOVS            R3, #0
1489EA:  ADD             R0, PC; off_23496C
1489EC:  LDR             R0, [R0]; dword_23DEF4
1489EE:  LDR             R0, [R0]
1489F0:  LDR.W           R0, [R0,#0x210]
1489F4:  LDR             R1, =(off_234D08 - 0x1489FA)
1489F6:  ADD             R1, PC; off_234D08
1489F8:  LDR             R2, [R0]
1489FA:  LDR             R1, [R1]; unk_23C7B8
1489FC:  LDR.W           R12, [R2,#0x6C]
148A00:  MOV.W           LR, #0xFFFFFFFF
148A04:  MOVS            R5, #9
148A06:  ADD             R2, SP, #0x140+var_120
148A08:  MOVW            R4, #0xFFFF
148A0C:  STRD.W          R5, R3, [SP,#0x140+var_140]
148A10:  STRD.W          R3, LR, [SP,#0x140+var_138]
148A14:  STR             R3, [SP,#0x140+var_128]
148A16:  MOVS            R3, #1
148A18:  STRD.W          R4, R4, [SP,#0x140+var_130]
148A1C:  BLX             R12
148A1E:  ADD             R0, SP, #0x140+var_120
148A20:  BL              sub_17D542
148A24:  ADD             SP, SP, #0x138
148A26:  POP             {R4,R5,R7,PC}
