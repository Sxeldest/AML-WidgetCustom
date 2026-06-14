; =========================================================
; Game Engine Function: _ZN7CMatrixaSERKS_
; Address            : 0x44EAC6 - 0x44EB3C
; =========================================================

44EAC6:  PUSH            {R4,R6,R7,LR}
44EAC8:  ADD             R7, SP, #8
44EACA:  MOV             R4, R0
44EACC:  MOV             R0, R1
44EACE:  VLD1.32         {D16-D17}, [R0]!
44EAD2:  VLD1.32         {D18-D19}, [R0]
44EAD6:  ADD.W           R0, R1, #0x20 ; ' '
44EADA:  ADDS            R1, #0x30 ; '0'
44EADC:  VLD1.32         {D22-D23}, [R1]
44EAE0:  ADD.W           R1, R4, #0x30 ; '0'
44EAE4:  VLD1.32         {D20-D21}, [R0]
44EAE8:  LDR             R0, [R4,#0x40]
44EAEA:  VST1.32         {D22-D23}, [R1]
44EAEE:  ADD.W           R1, R4, #0x20 ; ' '
44EAF2:  CMP             R0, #0
44EAF4:  VST1.32         {D20-D21}, [R1]
44EAF8:  MOV             R1, R4
44EAFA:  VST1.32         {D16-D17}, [R1]!
44EAFE:  VST1.32         {D18-D19}, [R1]
44EB02:  BEQ             loc_44EB38
44EB04:  LDR             R1, [R4]
44EB06:  STR             R1, [R0]
44EB08:  LDR             R1, [R4,#4]
44EB0A:  STR             R1, [R0,#4]
44EB0C:  LDR             R1, [R4,#8]
44EB0E:  STR             R1, [R0,#8]
44EB10:  LDR             R1, [R4,#0x10]
44EB12:  STR             R1, [R0,#0x10]
44EB14:  LDR             R1, [R4,#0x14]
44EB16:  STR             R1, [R0,#0x14]
44EB18:  LDR             R1, [R4,#0x18]
44EB1A:  STR             R1, [R0,#0x18]
44EB1C:  LDR             R1, [R4,#0x20]
44EB1E:  STR             R1, [R0,#0x20]
44EB20:  LDR             R1, [R4,#0x24]
44EB22:  STR             R1, [R0,#0x24]
44EB24:  LDR             R1, [R4,#0x28]
44EB26:  STR             R1, [R0,#0x28]
44EB28:  LDR             R1, [R4,#0x30]
44EB2A:  STR             R1, [R0,#0x30]
44EB2C:  LDR             R1, [R4,#0x34]
44EB2E:  STR             R1, [R0,#0x34]
44EB30:  LDR             R1, [R4,#0x38]
44EB32:  STR             R1, [R0,#0x38]
44EB34:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
44EB38:  MOV             R0, R4
44EB3A:  POP             {R4,R6,R7,PC}
