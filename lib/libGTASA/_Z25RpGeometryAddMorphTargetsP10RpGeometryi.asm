; =========================================================
; Game Engine Function: _Z25RpGeometryAddMorphTargetsP10RpGeometryi
; Address            : 0x215C88 - 0x215DD4
; =========================================================

215C88:  PUSH            {R4-R7,LR}
215C8A:  ADD             R7, SP, #0xC
215C8C:  PUSH.W          {R8,R9,R11}
215C90:  SUB             SP, SP, #8
215C92:  MOV             R5, R0
215C94:  MOVW            R8, #0x13
215C98:  LDR             R0, [R5,#8]
215C9A:  MOV             R9, R1
215C9C:  MOVT            R8, #0x8000
215CA0:  TST.W           R0, #0x1000000
215CA4:  BNE             loc_215CC0
215CA6:  LDR             R1, [R5,#0x14]
215CA8:  LSLS            R0, R0, #0x1B
215CAA:  ADD.W           R1, R1, R1,LSL#1
215CAE:  MOV.W           R2, R1,LSL#2
215CB2:  ADD.W           R2, R2, R1,LSL#2
215CB6:  IT PL
215CB8:  LSLPL           R2, R1, #2
215CBA:  ADD.W           R4, R2, #0x1C
215CBE:  B               loc_215CC2
215CC0:  MOVS            R4, #0x1C
215CC2:  LDR             R1, =(RwEngineInstance_ptr - 0x215CCA)
215CC4:  LDR             R2, [R5,#0x18]
215CC6:  ADD             R1, PC; RwEngineInstance_ptr
215CC8:  LDR             R0, [R5,#0x60]
215CCA:  ADD             R2, R9
215CCC:  LDR             R1, [R1]; RwEngineInstance
215CCE:  CMP             R0, #0
215CD0:  MUL.W           R6, R2, R4
215CD4:  LDR             R1, [R1]
215CD6:  BEQ             loc_215D16
215CD8:  LDR.W           R2, [R1,#0x134]
215CDC:  MOV             R1, R6
215CDE:  BLX             R2
215CE0:  CMP             R0, #0
215CE2:  BEQ             loc_215DB4
215CE4:  LDR             R2, [R5,#0x18]
215CE6:  MUL.W           R1, R2, R4
215CEA:  SUB.W           R3, R2, R2,LSL#3
215CEE:  ADD.W           R1, R1, R3,LSL#2
215CF2:  CBZ             R1, loc_215D22
215CF4:  SUB.W           R3, R4, #0x1C
215CF8:  MLA.W           R1, R2, R4, R0
215CFC:  MULS            R2, R3
215CFE:  RSB.W           R3, R9, R9,LSL#3
215D02:  LSLS            R3, R3, #2
215D04:  SUBS            R1, #1
215D06:  NEGS            R2, R2
215D08:  LDRB            R6, [R1]
215D0A:  ADDS            R2, #1
215D0C:  STRB            R6, [R3,R1]
215D0E:  SUB.W           R1, R1, #1
215D12:  BNE             loc_215D08
215D14:  B               loc_215D22
215D16:  LDR.W           R1, [R1,#0x12C]
215D1A:  MOV             R0, R6
215D1C:  BLX             R1
215D1E:  CMP             R0, #0
215D20:  BEQ             loc_215DB4
215D22:  LDR             R1, [R5,#0x18]
215D24:  STR             R0, [R5,#0x60]
215D26:  ADD.W           R4, R1, R9
215D2A:  STR             R4, [R5,#0x18]
215D2C:  CMP             R4, #1
215D2E:  BLT             loc_215D7C
215D30:  RSB.W           R1, R4, R4,LSL#3
215D34:  MOVS            R2, #1
215D36:  MOV.W           R12, #0
215D3A:  MOVS            R6, #0
215D3C:  ADD.W           R1, R0, R1,LSL#2
215D40:  B               loc_215D48
215D42:  ADDS            R6, #0x1C
215D44:  LDR             R0, [R5,#0x60]
215D46:  ADDS            R2, #1
215D48:  ADD             R0, R6
215D4A:  STRD.W          R12, R12, [R0,#0x14]
215D4E:  LDRB            R4, [R5,#0xB]
215D50:  LSLS            R4, R4, #0x1F
215D52:  BNE             loc_215D76
215D54:  LDR             R4, [R5,#0x14]
215D56:  CBZ             R4, loc_215D76
215D58:  STR             R1, [R0,#0x14]
215D5A:  LDR             R4, [R5,#0x14]
215D5C:  LDRB            R3, [R5,#8]
215D5E:  ADD.W           R4, R4, R4,LSL#1
215D62:  LSLS            R3, R3, #0x1B
215D64:  ADD.W           R1, R1, R4,LSL#2
215D68:  ITTTT MI
215D6A:  STRMI           R1, [R0,#0x18]
215D6C:  LDRMI           R0, [R5,#0x14]
215D6E:  ADDMI.W         R0, R0, R0,LSL#1
215D72:  ADDMI.W         R1, R1, R0,LSL#2
215D76:  LDR             R4, [R5,#0x18]
215D78:  CMP             R2, R4
215D7A:  BLT             loc_215D42
215D7C:  CMP.W           R9, #1
215D80:  BLT             loc_215DAE
215D82:  RSB.W           R1, R4, R4,LSL#3
215D86:  RSB.W           R2, R9, R9,LSL#3
215D8A:  VMOV.I32        Q8, #0
215D8E:  SUB.W           R0, R4, R9
215D92:  LSLS            R1, R1, #2
215D94:  SUB.W           R1, R1, R2,LSL#2
215D98:  LDR             R2, [R5,#0x60]
215D9A:  ADDS            R0, #1
215D9C:  ADD             R2, R1
215D9E:  ADDS            R1, #0x1C
215DA0:  STR.W           R5, [R2],#4
215DA4:  VST1.32         {D16-D17}, [R2]
215DA8:  LDR             R4, [R5,#0x18]
215DAA:  CMP             R0, R4
215DAC:  BLT             loc_215D98
215DAE:  SUB.W           R0, R4, R9
215DB2:  B               loc_215DCC
215DB4:  MOVS            R0, #0
215DB6:  MOV             R1, R6
215DB8:  STR             R0, [SP,#0x20+var_20]
215DBA:  MOV             R0, R8; int
215DBC:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
215DC0:  STR             R0, [SP,#0x20+var_1C]
215DC2:  MOV             R0, SP
215DC4:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
215DC8:  MOV.W           R0, #0xFFFFFFFF
215DCC:  ADD             SP, SP, #8
215DCE:  POP.W           {R8,R9,R11}
215DD2:  POP             {R4-R7,PC}
