; =========================================================
; Game Engine Function: sub_F1050
; Address            : 0xF1050 - 0xF10EE
; =========================================================

F1050:  PUSH            {R4,R5,R7,LR}
F1052:  ADD             R7, SP, #8
F1054:  SUB             SP, SP, #8
F1056:  LDR             R0, =(off_234A58 - 0xF105C)
F1058:  ADD             R0, PC; off_234A58
F105A:  LDR             R5, [R0]; dword_2631B0
F105C:  LDR             R0, [R5]
F105E:  CBZ             R0, loc_F1064
F1060:  ADD             SP, SP, #8
F1062:  POP             {R4,R5,R7,PC}
F1064:  MOVS            R0, #0x70 ; 'p'; unsigned int
F1066:  BLX             j__Znwj; operator new(uint)
F106A:  MOV             R4, R0
F106C:  BL              sub_F1310
F1070:  ADD.W           R1, R4, #0xC
F1074:  MOV             R0, SP
F1076:  STR             R4, [SP,#0x10+var_C]
F1078:  MOV             R2, R1
F107A:  STR             R1, [SP,#0x10+var_10]
F107C:  BL              sub_F139E
F1080:  LDR             R4, [R5,#(dword_2631B4 - 0x2631B0)]
F1082:  LDRD.W          R0, R1, [SP,#0x10+var_10]
F1086:  STR             R0, [R5]
F1088:  MOVS            R0, #0
F108A:  CMP             R4, #0
F108C:  STR             R1, [R5,#(dword_2631B4 - 0x2631B0)]
F108E:  STRD.W          R0, R0, [SP,#0x10+var_10]
F1092:  BEQ             loc_F1060
F1094:  ADDS            R0, R4, #4
F1096:  DMB.W           ISH
F109A:  LDREX.W         R1, [R0]
F109E:  SUBS            R2, R1, #1
F10A0:  STREX.W         R3, R2, [R0]
F10A4:  CMP             R3, #0
F10A6:  BNE             loc_F109A
F10A8:  DMB.W           ISH
F10AC:  CBNZ            R1, loc_F10BC
F10AE:  LDR             R0, [R4]
F10B0:  LDR             R1, [R0,#8]
F10B2:  MOV             R0, R4
F10B4:  BLX             R1
F10B6:  MOV             R0, R4; this
F10B8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F10BC:  LDR             R4, [SP,#0x10+var_C]
F10BE:  CMP             R4, #0
F10C0:  BEQ             loc_F1060
F10C2:  ADDS            R0, R4, #4
F10C4:  DMB.W           ISH
F10C8:  LDREX.W         R1, [R0]
F10CC:  SUBS            R2, R1, #1
F10CE:  STREX.W         R3, R2, [R0]
F10D2:  CMP             R3, #0
F10D4:  BNE             loc_F10C8
F10D6:  CMP             R1, #0
F10D8:  DMB.W           ISH
F10DC:  BNE             loc_F1060
F10DE:  LDR             R0, [R4]
F10E0:  LDR             R1, [R0,#8]
F10E2:  MOV             R0, R4
F10E4:  BLX             R1
F10E6:  MOV             R0, R4; this
F10E8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F10EC:  B               loc_F1060
