; =========================================================
; Game Engine Function: _ZN17InteriorManager_c18GetVectorsInteriorEP7CVector
; Address            : 0x44CAA4 - 0x44CB86
; =========================================================

44CAA4:  PUSH            {R4-R7,LR}
44CAA6:  ADD             R7, SP, #0xC
44CAA8:  PUSH.W          {R8}
44CAAC:  SUB             SP, SP, #8
44CAAE:  MOV             R8, R1
44CAB0:  MOVW            R1, #0x428C
44CAB4:  LDR             R5, [R0,R1]
44CAB6:  MOVS            R4, #0
44CAB8:  CMP             R5, #0
44CABA:  BEQ             loc_44CB7C
44CABC:  MOV             R6, R5
44CABE:  LDR.W           R0, [R6,#0x10]!; int
44CAC2:  CBZ             R0, loc_44CAD4
44CAC4:  MOV             R1, R8; int
44CAC6:  MOVS            R2, #0; int
44CAC8:  MOVS            R3, #0; int
44CACA:  STR             R4, [SP,#0x18+var_18]; float
44CACC:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CAD0:  CMP             R0, #0
44CAD2:  BNE             loc_44CB7A
44CAD4:  MOV             R6, R5
44CAD6:  LDR.W           R0, [R6,#0x14]!; int
44CADA:  CBZ             R0, loc_44CAEC
44CADC:  MOV             R1, R8; int
44CADE:  MOVS            R2, #0; int
44CAE0:  MOVS            R3, #0; int
44CAE2:  STR             R4, [SP,#0x18+var_18]; float
44CAE4:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CAE8:  CMP             R0, #0
44CAEA:  BNE             loc_44CB7A
44CAEC:  MOV             R6, R5
44CAEE:  LDR.W           R0, [R6,#0x18]!; int
44CAF2:  CBZ             R0, loc_44CB02
44CAF4:  MOV             R1, R8; int
44CAF6:  MOVS            R2, #0; int
44CAF8:  MOVS            R3, #0; int
44CAFA:  STR             R4, [SP,#0x18+var_18]; float
44CAFC:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CB00:  CBNZ            R0, loc_44CB7A
44CB02:  MOV             R6, R5
44CB04:  LDR.W           R0, [R6,#0x1C]!; int
44CB08:  CBZ             R0, loc_44CB18
44CB0A:  MOV             R1, R8; int
44CB0C:  MOVS            R2, #0; int
44CB0E:  MOVS            R3, #0; int
44CB10:  STR             R4, [SP,#0x18+var_18]; float
44CB12:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CB16:  CBNZ            R0, loc_44CB7A
44CB18:  MOV             R6, R5
44CB1A:  LDR.W           R0, [R6,#0x20]!; int
44CB1E:  CBZ             R0, loc_44CB2E
44CB20:  MOV             R1, R8; int
44CB22:  MOVS            R2, #0; int
44CB24:  MOVS            R3, #0; int
44CB26:  STR             R4, [SP,#0x18+var_18]; float
44CB28:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CB2C:  CBNZ            R0, loc_44CB7A
44CB2E:  MOV             R6, R5
44CB30:  LDR.W           R0, [R6,#0x24]!; int
44CB34:  CBZ             R0, loc_44CB44
44CB36:  MOV             R1, R8; int
44CB38:  MOVS            R2, #0; int
44CB3A:  MOVS            R3, #0; int
44CB3C:  STR             R4, [SP,#0x18+var_18]; float
44CB3E:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CB42:  CBNZ            R0, loc_44CB7A
44CB44:  MOV             R6, R5
44CB46:  LDR.W           R0, [R6,#0x28]!; int
44CB4A:  CBZ             R0, loc_44CB5A
44CB4C:  MOV             R1, R8; int
44CB4E:  MOVS            R2, #0; int
44CB50:  MOVS            R3, #0; int
44CB52:  STR             R4, [SP,#0x18+var_18]; float
44CB54:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CB58:  CBNZ            R0, loc_44CB7A
44CB5A:  MOV             R6, R5
44CB5C:  LDR.W           R0, [R6,#0x2C]!; int
44CB60:  CBZ             R0, loc_44CB70
44CB62:  MOV             R1, R8; int
44CB64:  MOVS            R2, #0; int
44CB66:  MOVS            R3, #0; int
44CB68:  STR             R4, [SP,#0x18+var_18]; float
44CB6A:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
44CB6E:  CBNZ            R0, loc_44CB7A
44CB70:  LDR             R5, [R5,#4]
44CB72:  CMP             R5, #0
44CB74:  BNE             loc_44CABC
44CB76:  MOVS            R4, #0
44CB78:  B               loc_44CB7C
44CB7A:  LDR             R4, [R6]
44CB7C:  MOV             R0, R4
44CB7E:  ADD             SP, SP, #8
44CB80:  POP.W           {R8}
44CB84:  POP             {R4-R7,PC}
