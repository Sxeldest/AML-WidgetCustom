; =========================================================
; Game Engine Function: sub_15A2AC
; Address            : 0x15A2AC - 0x15A2E0
; =========================================================

15A2AC:  PUSH            {R4,R5,R7,LR}
15A2AE:  ADD             R7, SP, #8
15A2B0:  SUB             SP, SP, #0x10
15A2B2:  LDR             R1, =(aConfigJson - 0x15A2BE); "config.json" ...
15A2B4:  ADD             R5, SP, #0x18+var_14
15A2B6:  MOV             R4, R0
15A2B8:  MOVS            R2, #0
15A2BA:  ADD             R1, PC; "config.json"
15A2BC:  MOV             R0, R5; int
15A2BE:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IA12_cvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char [12],void>(char [12] const&,std::__fs::filesystem::path::format)
15A2C2:  LDR             R1, =(dword_381A30 - 0x15A2C8)
15A2C4:  ADD             R1, PC; dword_381A30
15A2C6:  MOV             R0, R4
15A2C8:  MOV             R2, R5
15A2CA:  BL              sub_F1DD4
15A2CE:  LDRB.W          R0, [SP,#0x18+var_14]
15A2D2:  LSLS            R0, R0, #0x1F
15A2D4:  ITT NE
15A2D6:  LDRNE           R0, [SP,#0x18+var_C]; void *
15A2D8:  BLXNE           j__ZdlPv; operator delete(void *)
15A2DC:  ADD             SP, SP, #0x10
15A2DE:  POP             {R4,R5,R7,PC}
