; =========================================================
; Game Engine Function: sub_138284
; Address            : 0x138284 - 0x1382C6
; =========================================================

138284:  PUSH            {R4-R7,LR}
138286:  ADD             R7, SP, #0xC
138288:  PUSH.W          {R11}
13828C:  SUB             SP, SP, #0x18
13828E:  MOV             R5, R0
138290:  MOV             R6, SP
138292:  ADDS            R0, R6, #4
138294:  STRH.W          R1, [SP,#0x28+var_28]
138298:  MOV             R1, R2
13829A:  MOV             R4, R3
13829C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1382A0:  LDR             R0, [R7,#arg_0]
1382A2:  STRD.W          R4, R0, [SP,#0x28+var_18]
1382A6:  ADD.W           R0, R5, #0x54 ; 'T'
1382AA:  MOV             R1, R6
1382AC:  BL              sub_13959C
1382B0:  LDRB.W          R0, [SP,#0x28+var_24]
1382B4:  LSLS            R0, R0, #0x1F
1382B6:  ITT NE
1382B8:  LDRNE           R0, [SP,#0x28+var_1C]; void *
1382BA:  BLXNE           j__ZdlPv; operator delete(void *)
1382BE:  ADD             SP, SP, #0x18
1382C0:  POP.W           {R11}
1382C4:  POP             {R4-R7,PC}
