; =========================================================
; Game Engine Function: sub_F0FA0
; Address            : 0xF0FA0 - 0xF1040
; =========================================================

F0FA0:  PUSH            {R4,R5,R7,LR}
F0FA2:  ADD             R7, SP, #8
F0FA4:  SUB             SP, SP, #8
F0FA6:  LDR             R0, =(off_234A54 - 0xF0FAC)
F0FA8:  ADD             R0, PC; off_234A54
F0FAA:  LDR             R5, [R0]; dword_381A0C
F0FAC:  LDR             R0, [R5]
F0FAE:  CBZ             R0, loc_F0FB4
F0FB0:  ADD             SP, SP, #8
F0FB2:  POP             {R4,R5,R7,PC}
F0FB4:  MOVS            R0, #0xA8; unsigned int
F0FB6:  BLX             j__Znwj; operator new(uint)
F0FBA:  MOV             R4, R0
F0FBC:  BL              sub_F120C
F0FC0:  ADD.W           R2, R4, #0x10
F0FC4:  ADD.W           R1, R4, #0x14
F0FC8:  MOV             R0, SP
F0FCA:  STR             R4, [SP,#0x10+var_C]
F0FCC:  STR             R2, [SP,#0x10+var_10]
F0FCE:  BL              sub_F129A
F0FD2:  LDR             R4, [R5,#(dword_381A10 - 0x381A0C)]
F0FD4:  LDRD.W          R0, R1, [SP,#0x10+var_10]
F0FD8:  STR             R0, [R5]
F0FDA:  MOVS            R0, #0
F0FDC:  CMP             R4, #0
F0FDE:  STR             R1, [R5,#(dword_381A10 - 0x381A0C)]
F0FE0:  STRD.W          R0, R0, [SP,#0x10+var_10]
F0FE4:  BEQ             loc_F0FB0
F0FE6:  ADDS            R0, R4, #4
F0FE8:  DMB.W           ISH
F0FEC:  LDREX.W         R1, [R0]
F0FF0:  SUBS            R2, R1, #1
F0FF2:  STREX.W         R3, R2, [R0]
F0FF6:  CMP             R3, #0
F0FF8:  BNE             loc_F0FEC
F0FFA:  DMB.W           ISH
F0FFE:  CBNZ            R1, loc_F100E
F1000:  LDR             R0, [R4]
F1002:  LDR             R1, [R0,#8]
F1004:  MOV             R0, R4
F1006:  BLX             R1
F1008:  MOV             R0, R4; this
F100A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F100E:  LDR             R4, [SP,#0x10+var_C]
F1010:  CMP             R4, #0
F1012:  BEQ             loc_F0FB0
F1014:  ADDS            R0, R4, #4
F1016:  DMB.W           ISH
F101A:  LDREX.W         R1, [R0]
F101E:  SUBS            R2, R1, #1
F1020:  STREX.W         R3, R2, [R0]
F1024:  CMP             R3, #0
F1026:  BNE             loc_F101A
F1028:  CMP             R1, #0
F102A:  DMB.W           ISH
F102E:  BNE             loc_F0FB0
F1030:  LDR             R0, [R4]
F1032:  LDR             R1, [R0,#8]
F1034:  MOV             R0, R4
F1036:  BLX             R1
F1038:  MOV             R0, R4; this
F103A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
F103E:  B               loc_F0FB0
