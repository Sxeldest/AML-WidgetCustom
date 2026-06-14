; =========================================================
; Game Engine Function: sub_15A150
; Address            : 0x15A150 - 0x15A194
; =========================================================

15A150:  PUSH            {R4,R6,R7,LR}
15A152:  ADD             R7, SP, #8
15A154:  SUB             SP, SP, #0x18
15A156:  MOV             R4, R0
15A158:  ADD             R0, SP, #0x20+var_14
15A15A:  BL              sub_15A02C
15A15E:  LDR             R1, =(aTemporary - 0x15A164); "temporary" ...
15A160:  ADD             R1, PC; "temporary"
15A162:  MOV             R0, SP; int
15A164:  MOVS            R2, #0
15A166:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IA10_cvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char [10],void>(char [10] const&,std::__fs::filesystem::path::format)
15A16A:  ADD             R1, SP, #0x20+var_14
15A16C:  MOV             R2, SP
15A16E:  MOV             R0, R4
15A170:  BL              sub_F1DD4
15A174:  LDRB.W          R0, [SP,#0x20+var_20]
15A178:  LSLS            R0, R0, #0x1F
15A17A:  ITT NE
15A17C:  LDRNE           R0, [SP,#0x20+var_18]; void *
15A17E:  BLXNE           j__ZdlPv; operator delete(void *)
15A182:  LDRB.W          R0, [SP,#0x20+var_14]
15A186:  LSLS            R0, R0, #0x1F
15A188:  ITT NE
15A18A:  LDRNE           R0, [SP,#0x20+var_C]; void *
15A18C:  BLXNE           j__ZdlPv; operator delete(void *)
15A190:  ADD             SP, SP, #0x18
15A192:  POP             {R4,R6,R7,PC}
