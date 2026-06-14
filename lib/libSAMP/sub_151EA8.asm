; =========================================================
; Game Engine Function: sub_151EA8
; Address            : 0x151EA8 - 0x151F64
; =========================================================

151EA8:  PUSH            {R4-R7,LR}
151EAA:  ADD             R7, SP, #0xC
151EAC:  PUSH.W          {R8-R10}
151EB0:  SUB             SP, SP, #0x20
151EB2:  MOV             R6, R0
151EB4:  LDR             R0, [R0,#0x38]; this
151EB6:  CBZ             R0, loc_151F22
151EB8:  LDR             R1, [R0,#4]
151EBA:  MOVS            R4, #0
151EBC:  ADDS            R1, #1
151EBE:  BEQ             loc_151F5A
151EC0:  STR             R4, [SP,#0x38+var_20]
151EC2:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
151EC6:  MOV             R10, R0
151EC8:  STR             R0, [SP,#0x38+var_1C]
151ECA:  CBZ             R0, loc_151ED0
151ECC:  LDR             R4, [R6,#0x34]
151ECE:  STR             R4, [SP,#0x38+var_20]
151ED0:  MOV             R0, R4
151ED2:  BL              sub_15BDB6
151ED6:  CBZ             R0, loc_151F26
151ED8:  LDRB            R5, [R6,#0x10]
151EDA:  LDRB.W          R8, [R6,#0x30]
151EDE:  ADD             R0, SP, #0x38+var_2C
151EE0:  MOV             R1, R4
151EE2:  BL              sub_15BDD8
151EE6:  LSLS            R1, R5, #2
151EE8:  CMP.W           R8, #0
151EEC:  IT NE
151EEE:  ORRNE.W         R1, R1, #0xA
151EF2:  ADD             R0, SP, #0x38+var_2C
151EF4:  BL              sub_15DED0
151EF8:  MOV             R8, R0
151EFA:  LDRB.W          R0, [SP,#0x38+var_2C]
151EFE:  LSLS            R0, R0, #0x1F
151F00:  BEQ             loc_151F08
151F02:  LDR             R0, [SP,#0x38+var_24]; void *
151F04:  BLX             j__ZdlPv; operator delete(void *)
151F08:  VLDR            D16, [R4,#0x18]
151F0C:  VSTR            D16, [R6,#0x18]
151F10:  MOV             R0, R6
151F12:  MOV             R1, R8
151F14:  BL              sub_151928
151F18:  MOV             R4, R0
151F1A:  CMP             R0, #0
151F1C:  IT NE
151F1E:  MOVNE           R4, #2
151F20:  B               loc_151F28
151F22:  MOVS            R4, #0
151F24:  B               loc_151F5A
151F26:  MOVS            R4, #1
151F28:  CMP.W           R10, #0
151F2C:  BEQ             loc_151F5A
151F2E:  ADD.W           R0, R10, #4
151F32:  DMB.W           ISH
151F36:  LDREX.W         R1, [R0]
151F3A:  SUBS            R2, R1, #1
151F3C:  STREX.W         R3, R2, [R0]
151F40:  CMP             R3, #0
151F42:  BNE             loc_151F36
151F44:  DMB.W           ISH
151F48:  CBNZ            R1, loc_151F5A
151F4A:  LDR.W           R0, [R10]
151F4E:  LDR             R1, [R0,#8]
151F50:  MOV             R0, R10
151F52:  BLX             R1
151F54:  MOV             R0, R10; this
151F56:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
151F5A:  MOV             R0, R4
151F5C:  ADD             SP, SP, #0x20 ; ' '
151F5E:  POP.W           {R8-R10}
151F62:  POP             {R4-R7,PC}
