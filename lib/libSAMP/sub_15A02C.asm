; =========================================================
; Game Engine Function: sub_15A02C
; Address            : 0x15A02C - 0x15A060
; =========================================================

15A02C:  PUSH            {R4,R5,R7,LR}
15A02E:  ADD             R7, SP, #8
15A030:  SUB             SP, SP, #0x10
15A032:  LDR             R1, =(aSoundStorage - 0x15A03E); "sound_storage" ...
15A034:  ADD             R5, SP, #0x18+var_14
15A036:  MOV             R4, R0
15A038:  MOVS            R2, #0
15A03A:  ADD             R1, PC; "sound_storage"
15A03C:  MOV             R0, R5; int
15A03E:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IA14_cvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char [14],void>(char [14] const&,std::__fs::filesystem::path::format)
15A042:  LDR             R1, =(dword_381A30 - 0x15A048)
15A044:  ADD             R1, PC; dword_381A30
15A046:  MOV             R0, R4
15A048:  MOV             R2, R5
15A04A:  BL              sub_F1DD4
15A04E:  LDRB.W          R0, [SP,#0x18+var_14]
15A052:  LSLS            R0, R0, #0x1F
15A054:  ITT NE
15A056:  LDRNE           R0, [SP,#0x18+var_C]; void *
15A058:  BLXNE           j__ZdlPv; operator delete(void *)
15A05C:  ADD             SP, SP, #0x10
15A05E:  POP             {R4,R5,R7,PC}
