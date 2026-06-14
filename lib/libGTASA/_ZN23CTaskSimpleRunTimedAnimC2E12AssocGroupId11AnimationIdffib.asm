; =========================================================
; Game Engine Function: _ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffib
; Address            : 0x4D7120 - 0x4D7172
; =========================================================

4D7120:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId, AnimationId, float, float, int, bool)'
4D7122:  ADD             R7, SP, #0xC
4D7124:  PUSH.W          {R11}
4D7128:  MOV             R4, R3
4D712A:  MOV             R5, R2
4D712C:  MOV             R6, R1
4D712E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D7132:  LDR             R1, =(_ZTV23CTaskSimpleRunTimedAnim_ptr - 0x4D7142)
4D7134:  MOVS            R2, #0
4D7136:  VLDR            S0, [R7,#arg_0]
4D713A:  LDRD.W          R3, R12, [R7,#arg_4]
4D713E:  ADD             R1, PC; _ZTV23CTaskSimpleRunTimedAnim_ptr
4D7140:  STR             R2, [R0,#8]
4D7142:  STRD.W          R6, R5, [R0,#0x10]
4D7146:  MOV.W           R6, #0x192
4D714A:  STR             R4, [R0,#0x18]
4D714C:  VSTR            S0, [R0,#0x1C]
4D7150:  STR             R3, [R0,#0x20]
4D7152:  STRH            R2, [R0,#0x2C]
4D7154:  LDRB            R3, [R0,#0xC]
4D7156:  LDR             R1, [R1]; `vtable for'CTaskSimpleRunTimedAnim ...
4D7158:  STRH            R6, [R0,#0x30]
4D715A:  STRD.W          R2, R2, [R0,#0x24]
4D715E:  AND.W           R2, R3, #0xF8
4D7162:  ORR.W           R2, R2, R12,LSL#2
4D7166:  STRB            R2, [R0,#0xC]
4D7168:  ADDS            R1, #8
4D716A:  STR             R1, [R0]
4D716C:  POP.W           {R11}
4D7170:  POP             {R4-R7,PC}
