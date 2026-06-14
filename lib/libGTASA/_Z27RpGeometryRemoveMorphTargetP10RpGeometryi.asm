; =========================================================
; Game Engine Function: _Z27RpGeometryRemoveMorphTargetP10RpGeometryi
; Address            : 0x215DDC - 0x215F20
; =========================================================

215DDC:  PUSH            {R4-R7,LR}
215DDE:  ADD             R7, SP, #0xC
215DE0:  PUSH.W          {R8-R11}
215DE4:  SUB             SP, SP, #0xC
215DE6:  MOV             R4, R0
215DE8:  MOV             R8, R1
215DEA:  LDR             R1, [R4,#8]
215DEC:  LDRD.W          R2, R3, [R4,#0x14]
215DF0:  LDR             R0, =(RwEngineInstance_ptr - 0x215DFE)
215DF2:  SBFX.W          R1, R1, #4, #1
215DF6:  ADD.W           R6, R2, R2,LSL#1
215DFA:  ADD             R0, PC; RwEngineInstance_ptr
215DFC:  SUBS            R2, R3, #1
215DFE:  AND.W           R10, R1, R6,LSL#2
215E02:  LDR             R0, [R0]; RwEngineInstance
215E04:  ADD.W           R1, R10, R6,LSL#2
215E08:  ADDS            R1, #0x1C
215E0A:  LDR             R0, [R0]
215E0C:  MUL.W           R5, R1, R2
215E10:  LDR.W           R1, [R0,#0x12C]
215E14:  MOV             R0, R5
215E16:  BLX             R1
215E18:  MOV             R9, R0
215E1A:  CMP.W           R9, #0
215E1E:  BEQ             loc_215EFE
215E20:  LDR             R0, [R4,#0x18]
215E22:  CMP             R0, #1
215E24:  BLT             loc_215E94
215E26:  LSLS            R1, R6, #2
215E28:  MOVS            R3, #0
215E2A:  MOVS            R5, #0
215E2C:  MOVS            R2, #0
215E2E:  CMP             R8, R5
215E30:  BEQ             loc_215E56
215E32:  LDR             R0, [R4,#0x60]
215E34:  RSB.W           R6, R2, R2,LSL#3
215E38:  ADDS            R2, #1
215E3A:  ADD             R0, R3
215E3C:  VLD1.32         {D16-D17}, [R0]
215E40:  ADDS            R0, #0xC
215E42:  VLD1.32         {D18-D19}, [R0]
215E46:  ADD.W           R0, R9, R6,LSL#2
215E4A:  VST1.32         {D16-D17}, [R0]
215E4E:  ADDS            R0, #0xC
215E50:  VST1.32         {D18-D19}, [R0]
215E54:  LDR             R0, [R4,#0x18]
215E56:  ADDS            R5, #1
215E58:  ADDS            R3, #0x1C
215E5A:  CMP             R5, R0
215E5C:  BLT             loc_215E2E
215E5E:  CMP             R0, #1
215E60:  BLT             loc_215E94
215E62:  ADD.W           R11, R10, R1
215E66:  LDR             R1, [R4,#0x60]
215E68:  RSB.W           R3, R0, R0,LSL#3
215E6C:  MOVS            R6, #0
215E6E:  ADD.W           R5, R1, R3,LSL#2
215E72:  RSB.W           R1, R2, R2,LSL#3
215E76:  ADD.W           R10, R9, R1,LSL#2
215E7A:  CMP             R8, R6
215E7C:  BEQ             loc_215E8C
215E7E:  MOV             R0, R10; void *
215E80:  MOV             R1, R5; void *
215E82:  MOV             R2, R11; size_t
215E84:  BLX             memcpy_1
215E88:  LDR             R0, [R4,#0x18]
215E8A:  ADD             R10, R11
215E8C:  ADDS            R6, #1
215E8E:  ADD             R5, R11
215E90:  CMP             R6, R0
215E92:  BLT             loc_215E7A
215E94:  LDR             R0, =(RwEngineInstance_ptr - 0x215E9A)
215E96:  ADD             R0, PC; RwEngineInstance_ptr
215E98:  LDR             R0, [R0]; RwEngineInstance
215E9A:  LDR             R1, [R0]
215E9C:  LDR             R0, [R4,#0x60]
215E9E:  LDR.W           R1, [R1,#0x130]
215EA2:  BLX             R1
215EA4:  LDR             R1, [R4,#0x18]
215EA6:  STR.W           R9, [R4,#0x60]
215EAA:  SUBS            R0, R1, #1
215EAC:  CMP             R1, #2
215EAE:  STR             R0, [R4,#0x18]
215EB0:  BLT             loc_215F16
215EB2:  RSB.W           R0, R0, R0,LSL#3
215EB6:  MOVS            R1, #1
215EB8:  MOV.W           R12, #0
215EBC:  MOVS            R3, #0
215EBE:  ADD.W           R0, R9, R0,LSL#2
215EC2:  B               loc_215ECC
215EC4:  ADDS            R3, #0x1C
215EC6:  LDR.W           R9, [R4,#0x60]
215ECA:  ADDS            R1, #1
215ECC:  ADD.W           R6, R9, R3
215ED0:  STRD.W          R12, R12, [R6,#0x14]
215ED4:  LDR             R5, [R4,#0x14]
215ED6:  CBZ             R5, loc_215EF6
215ED8:  STR             R0, [R6,#0x14]
215EDA:  LDR             R5, [R4,#0x14]
215EDC:  LDRB            R2, [R4,#8]
215EDE:  ADD.W           R5, R5, R5,LSL#1
215EE2:  LSLS            R2, R2, #0x1B
215EE4:  ADD.W           R0, R0, R5,LSL#2
215EE8:  ITTTT MI
215EEA:  STRMI           R0, [R6,#0x18]
215EEC:  LDRMI           R2, [R4,#0x14]
215EEE:  ADDMI.W         R2, R2, R2,LSL#1
215EF2:  ADDMI.W         R0, R0, R2,LSL#2
215EF6:  LDR             R2, [R4,#0x18]
215EF8:  CMP             R1, R2
215EFA:  BLT             loc_215EC4
215EFC:  B               loc_215F16
215EFE:  MOVS            R0, #0x13
215F00:  MOVS            R4, #0
215F02:  MOVT            R0, #0x8000; int
215F06:  MOV             R1, R5
215F08:  STR             R4, [SP,#0x28+var_24]
215F0A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
215F0E:  STR             R0, [SP,#0x28+var_20]
215F10:  ADD             R0, SP, #0x28+var_24
215F12:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
215F16:  MOV             R0, R4
215F18:  ADD             SP, SP, #0xC
215F1A:  POP.W           {R8-R11}
215F1E:  POP             {R4-R7,PC}
