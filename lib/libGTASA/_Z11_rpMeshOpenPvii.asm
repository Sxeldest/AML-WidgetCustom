; =========================================================
; Game Engine Function: _Z11_rpMeshOpenPvii
; Address            : 0x217EA4 - 0x217F78
; =========================================================

217EA4:  PUSH            {R4-R7,LR}
217EA6:  ADD             R7, SP, #0xC
217EA8:  PUSH.W          {R8}
217EAC:  MOV             R8, R0
217EAE:  LDR             R0, =(meshModule_ptr - 0x217EB4)
217EB0:  ADD             R0, PC; meshModule_ptr
217EB2:  LDR             R0, [R0]; meshModule
217EB4:  LDR             R2, [R0,#(dword_6BD600 - 0x6BD5FC)]
217EB6:  STR             R1, [R0]
217EB8:  CBNZ            R2, loc_217ED6
217EBA:  MOVS            R0, #0xC; int
217EBC:  MOVS            R1, #0x32 ; '2'; int
217EBE:  MOVS            R2, #4; int
217EC0:  BLX             j__Z16RwFreeListCreateiii; RwFreeListCreate(int,int,int)
217EC4:  LDR             R1, =(dword_6BD604 - 0x217ECC)
217EC6:  CMP             R0, #0
217EC8:  ADD             R1, PC; dword_6BD604
217ECA:  STR             R0, [R1]
217ECC:  BEQ             loc_217F72
217ECE:  LDR             R0, =(meshModule_ptr - 0x217ED4)
217ED0:  ADD             R0, PC; meshModule_ptr
217ED2:  LDR             R0, [R0]; meshModule
217ED4:  LDR             R1, [R0]
217ED6:  LDR             R0, =(RwEngineInstance_ptr - 0x217EE0)
217ED8:  MOVS            R3, #1
217EDA:  LDR             R2, =(meshModule_ptr - 0x217EE2)
217EDC:  ADD             R0, PC; RwEngineInstance_ptr
217EDE:  ADD             R2, PC; meshModule_ptr
217EE0:  LDR             R0, [R0]; RwEngineInstance
217EE2:  LDR             R2, [R2]; meshModule
217EE4:  LDR             R4, [R0]
217EE6:  STRH            R3, [R4,R1]
217EE8:  LDRD.W          R1, R4, [R2]
217EEC:  LDR             R5, [R0]
217EEE:  ADDS            R4, #1
217EF0:  STR             R4, [R2,#(dword_6BD600 - 0x6BD5FC)]
217EF2:  ADD             R1, R5
217EF4:  MOVS            R5, #3
217EF6:  STRB            R5, [R1,#8]
217EF8:  LDR             R1, [R2]
217EFA:  LDR             R5, [R0]
217EFC:  ADD             R1, R5
217EFE:  MOVS            R5, #4
217F00:  STRB            R5, [R1,#9]
217F02:  LDR             R1, [R2]
217F04:  LDR             R4, [R0]
217F06:  ADD             R1, R4
217F08:  MOVS            R4, #5
217F0A:  STRB            R4, [R1,#0xA]
217F0C:  LDR             R1, [R2]
217F0E:  LDR             R4, [R0]
217F10:  ADD             R1, R4
217F12:  STRB            R3, [R1,#0xC]
217F14:  LDR             R1, [R2]
217F16:  LDR             R4, [R0]
217F18:  ADD             R1, R4
217F1A:  MOVS            R4, #2
217F1C:  STRB            R4, [R1,#0x10]
217F1E:  LDR             R1, [R2]
217F20:  LDR             R6, [R0]
217F22:  ADD             R1, R6
217F24:  MOVS            R6, #6
217F26:  STRB            R6, [R1,#0x18]
217F28:  LDR             R1, [R2]
217F2A:  LDR             R6, [R0]
217F2C:  ADD             R1, R6
217F2E:  STRB.W          R5, [R1,#0x28]
217F32:  LDR             R1, [R2]
217F34:  LDR             R6, [R0]
217F36:  ADD             R1, R6
217F38:  MOVS            R6, #8
217F3A:  STRB.W          R6, [R1,#0x29]
217F3E:  LDR             R1, [R2]
217F40:  LDR             R6, [R0]
217F42:  ADD             R1, R6
217F44:  MOVS            R6, #0
217F46:  STRB.W          R6, [R1,#0x2A]
217F4A:  LDR             R1, [R2]
217F4C:  LDR             R6, [R0]
217F4E:  ADD             R1, R6
217F50:  STRB.W          R3, [R1,#0x2B]
217F54:  LDR             R1, [R2]
217F56:  LDR             R3, [R0]
217F58:  ADD             R1, R3
217F5A:  STRB.W          R4, [R1,#0x2C]
217F5E:  LDR             R1, [R2]
217F60:  LDR             R0, [R0]
217F62:  ADD             R0, R1
217F64:  MOVS            R1, #0x10
217F66:  STRB.W          R1, [R0,#0x2D]
217F6A:  MOV             R0, R8
217F6C:  POP.W           {R8}
217F70:  POP             {R4-R7,PC}
217F72:  MOV.W           R8, #0
217F76:  B               loc_217F6A
