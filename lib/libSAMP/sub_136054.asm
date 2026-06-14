; =========================================================
; Game Engine Function: sub_136054
; Address            : 0x136054 - 0x1360EC
; =========================================================

136054:  PUSH            {R4-R7,LR}
136056:  ADD             R7, SP, #0xC
136058:  PUSH.W          {R11}
13605C:  SUB             SP, SP, #0x20
13605E:  MOV             R5, R0
136060:  LDR             R0, [R0,#4]
136062:  LDR.W           R2, [R0,#0x84]
136066:  CBZ             R2, loc_1360E4
136068:  VLDR            S0, [R0,#0x88]
13606C:  ADD             R6, SP, #0x30+var_2C
13606E:  VLDR            S2, [R2]
136072:  LDR             R4, [R0,#0x74]
136074:  MOV             R0, R6; this
136076:  VSUB.F32        S0, S2, S0
13607A:  VMOV            R1, S0; float
13607E:  VSTR            S0, [R2]
136082:  BLX             j__ZNSt6__ndk19to_stringEf; std::to_string(float)
136086:  LDRB            R0, [R5,#8]
136088:  LDRD.W          R3, R2, [R5,#0xC]
13608C:  ANDS.W          R1, R0, #1
136090:  ITT EQ
136092:  ADDEQ.W         R2, R5, #9
136096:  LSREQ           R3, R0, #1
136098:  MOV             R0, R6
13609A:  MOVS            R1, #0
13609C:  MOVS            R5, #0
13609E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj; std::string::insert(uint,char const*,uint)
1360A2:  LDR             R1, [R0,#8]
1360A4:  VLDR            D16, [R0]
1360A8:  STR             R1, [SP,#0x30+var_18]
1360AA:  VSTR            D16, [SP,#0x30+var_20]
1360AE:  STRD.W          R5, R5, [R0]
1360B2:  STR             R5, [R0,#8]
1360B4:  ADD             R1, SP, #0x30+var_20
1360B6:  MOV             R0, R4
1360B8:  BL              sub_13D450
1360BC:  LDRB.W          R0, [SP,#0x30+var_20]
1360C0:  LSLS            R0, R0, #0x1F
1360C2:  ITT NE
1360C4:  LDRNE           R0, [SP,#0x30+var_18]; void *
1360C6:  BLXNE           j__ZdlPv; operator delete(void *)
1360CA:  LDRB.W          R0, [SP,#0x30+var_2C]
1360CE:  LSLS            R0, R0, #0x1F
1360D0:  ITT NE
1360D2:  LDRNE           R0, [SP,#0x30+var_24]; void *
1360D4:  BLXNE           j__ZdlPv; operator delete(void *)
1360D8:  LDR             R0, =(off_234A20 - 0x1360DE)
1360DA:  ADD             R0, PC; off_234A20
1360DC:  LDR             R0, [R0]; dword_23DF0C
1360DE:  LDR             R0, [R0]
1360E0:  BL              sub_148190
1360E4:  ADD             SP, SP, #0x20 ; ' '
1360E6:  POP.W           {R11}
1360EA:  POP             {R4-R7,PC}
