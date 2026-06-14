; =========================================================
; Game Engine Function: sub_E7264
; Address            : 0xE7264 - 0xE72A2
; =========================================================

E7264:  PUSH            {R4,R6,R7,LR}
E7266:  ADD             R7, SP, #8
E7268:  MOV             R4, R0
E726A:  LDR             R0, [R0,#4]
E726C:  LDRD.W          R1, R2, [R0,#0xC]
E7270:  CMP             R1, R2
E7272:  BEQ             loc_E727C
E7274:  ADDS            R2, R1, #1
E7276:  STR             R2, [R0,#0xC]
E7278:  LDRB            R0, [R1]
E727A:  POP             {R4,R6,R7,PC}
E727C:  LDR             R1, [R0]
E727E:  LDR             R1, [R1,#0x28]
E7280:  BLX             R1
E7282:  ADDS            R1, R0, #1
E7284:  IT NE
E7286:  POPNE           {R4,R6,R7,PC}
E7288:  LDR             R0, [R4]
E728A:  LDR             R1, [R0]
E728C:  LDR.W           R1, [R1,#-0xC]
E7290:  ADD             R0, R1; this
E7292:  LDR             R1, [R0,#0x10]
E7294:  ORR.W           R1, R1, #2; unsigned int
E7298:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
E729C:  MOV.W           R0, #0xFFFFFFFF
E72A0:  POP             {R4,R6,R7,PC}
