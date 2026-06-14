; =========================================================
; Game Engine Function: sub_136208
; Address            : 0x136208 - 0x1362A0
; =========================================================

136208:  PUSH            {R4-R7,LR}
13620A:  ADD             R7, SP, #0xC
13620C:  PUSH.W          {R11}
136210:  SUB             SP, SP, #0x20
136212:  MOV             R5, R0
136214:  LDR             R0, [R0,#4]
136216:  LDR.W           R2, [R0,#0x84]
13621A:  CBZ             R2, loc_136298
13621C:  VLDR            S0, [R2]
136220:  ADD             R6, SP, #0x30+var_2C
136222:  VLDR            S2, [R0,#0x88]
136226:  LDR             R4, [R0,#0x74]
136228:  MOV             R0, R6; this
13622A:  VADD.F32        S0, S2, S0
13622E:  VMOV            R1, S0; float
136232:  VSTR            S0, [R2]
136236:  BLX             j__ZNSt6__ndk19to_stringEf; std::to_string(float)
13623A:  LDRB            R0, [R5,#8]
13623C:  LDRD.W          R3, R2, [R5,#0xC]
136240:  ANDS.W          R1, R0, #1
136244:  ITT EQ
136246:  ADDEQ.W         R2, R5, #9
13624A:  LSREQ           R3, R0, #1
13624C:  MOV             R0, R6
13624E:  MOVS            R1, #0
136250:  MOVS            R5, #0
136252:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj; std::string::insert(uint,char const*,uint)
136256:  LDR             R1, [R0,#8]
136258:  VLDR            D16, [R0]
13625C:  STR             R1, [SP,#0x30+var_18]
13625E:  VSTR            D16, [SP,#0x30+var_20]
136262:  STRD.W          R5, R5, [R0]
136266:  STR             R5, [R0,#8]
136268:  ADD             R1, SP, #0x30+var_20
13626A:  MOV             R0, R4
13626C:  BL              sub_13D450
136270:  LDRB.W          R0, [SP,#0x30+var_20]
136274:  LSLS            R0, R0, #0x1F
136276:  ITT NE
136278:  LDRNE           R0, [SP,#0x30+var_18]; void *
13627A:  BLXNE           j__ZdlPv; operator delete(void *)
13627E:  LDRB.W          R0, [SP,#0x30+var_2C]
136282:  LSLS            R0, R0, #0x1F
136284:  ITT NE
136286:  LDRNE           R0, [SP,#0x30+var_24]; void *
136288:  BLXNE           j__ZdlPv; operator delete(void *)
13628C:  LDR             R0, =(off_234A20 - 0x136292)
13628E:  ADD             R0, PC; off_234A20
136290:  LDR             R0, [R0]; dword_23DF0C
136292:  LDR             R0, [R0]
136294:  BL              sub_148190
136298:  ADD             SP, SP, #0x20 ; ' '
13629A:  POP.W           {R11}
13629E:  POP             {R4-R7,PC}
