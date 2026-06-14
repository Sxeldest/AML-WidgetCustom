; =========================================================
; Game Engine Function: sub_15A0B0
; Address            : 0x15A0B0 - 0x15A0F4
; =========================================================

15A0B0:  PUSH            {R4,R6,R7,LR}
15A0B2:  ADD             R7, SP, #8
15A0B4:  SUB             SP, SP, #0x18
15A0B6:  MOV             R4, R0
15A0B8:  ADD             R0, SP, #0x20+var_14
15A0BA:  BL              sub_15A02C
15A0BE:  LDR             R1, =(aPersistent - 0x15A0C4); "persistent" ...
15A0C0:  ADD             R1, PC; "persistent"
15A0C2:  MOV             R0, SP; int
15A0C4:  MOVS            R2, #0
15A0C6:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IA11_cvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char [11],void>(char [11] const&,std::__fs::filesystem::path::format)
15A0CA:  ADD             R1, SP, #0x20+var_14
15A0CC:  MOV             R2, SP
15A0CE:  MOV             R0, R4
15A0D0:  BL              sub_F1DD4
15A0D4:  LDRB.W          R0, [SP,#0x20+var_20]
15A0D8:  LSLS            R0, R0, #0x1F
15A0DA:  ITT NE
15A0DC:  LDRNE           R0, [SP,#0x20+var_18]; void *
15A0DE:  BLXNE           j__ZdlPv; operator delete(void *)
15A0E2:  LDRB.W          R0, [SP,#0x20+var_14]
15A0E6:  LSLS            R0, R0, #0x1F
15A0E8:  ITT NE
15A0EA:  LDRNE           R0, [SP,#0x20+var_C]; void *
15A0EC:  BLXNE           j__ZdlPv; operator delete(void *)
15A0F0:  ADD             SP, SP, #0x18
15A0F2:  POP             {R4,R6,R7,PC}
