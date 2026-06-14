; =========================================================
; Game Engine Function: _ZN23CTaskComplexFallToDeathC2EiRK7CVectorbb
; Address            : 0x52CEB0 - 0x52CF00
; =========================================================

52CEB0:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexFallToDeath::CTaskComplexFallToDeath(int, CVector const&, bool, bool)'
52CEB2:  ADD             R7, SP, #0xC
52CEB4:  PUSH.W          {R11}
52CEB8:  MOV             R4, R3
52CEBA:  MOV             R5, R2
52CEBC:  MOV             R6, R1
52CEBE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52CEC2:  LDR             R1, =(_ZTV23CTaskComplexFallToDeath_ptr - 0x52CECA)
52CEC4:  LDR             R2, [R7,#arg_0]
52CEC6:  ADD             R1, PC; _ZTV23CTaskComplexFallToDeath_ptr
52CEC8:  LDR             R1, [R1]; `vtable for'CTaskComplexFallToDeath ...
52CECA:  LSLS            R2, R2, #4
52CECC:  ORR.W           R2, R2, R4,LSL#3
52CED0:  ADDS            R1, #8
52CED2:  STR             R1, [R0]
52CED4:  LDRB.W          R1, [R0,#0x21]
52CED8:  VLDR            D16, [R5]
52CEDC:  AND.W           R1, R1, #0xE0
52CEE0:  LDR             R3, [R5,#8]
52CEE2:  MOV.W           R5, #0xFFFFFFFF
52CEE6:  ORRS            R1, R2
52CEE8:  STRD.W          R3, R5, [R0,#0x14]
52CEEC:  STR             R5, [R0,#0x1C]
52CEEE:  STRB.W          R6, [R0,#0x20]
52CEF2:  STRB.W          R1, [R0,#0x21]
52CEF6:  VSTR            D16, [R0,#0xC]
52CEFA:  POP.W           {R11}
52CEFE:  POP             {R4-R7,PC}
