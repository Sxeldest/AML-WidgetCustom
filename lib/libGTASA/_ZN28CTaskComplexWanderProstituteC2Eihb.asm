; =========================================================
; Game Engine Function: _ZN28CTaskComplexWanderProstituteC2Eihb
; Address            : 0x5241E8 - 0x524238
; =========================================================

5241E8:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexWanderProstitute::CTaskComplexWanderProstitute(int, unsigned char, bool)'
5241EA:  ADD             R7, SP, #0xC
5241EC:  PUSH.W          {R11}
5241F0:  MOV             R4, R3
5241F2:  MOV             R5, R2
5241F4:  MOV             R6, R1
5241F6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5241FA:  LDR             R1, =(_ZTV28CTaskComplexWanderProstitute_ptr - 0x52420A)
5241FC:  MOV.W           R2, #0x3F000000
524200:  STRB            R5, [R0,#0x10]
524202:  MOVS            R3, #0
524204:  STR             R6, [R0,#0xC]
524206:  ADD             R1, PC; _ZTV28CTaskComplexWanderProstitute_ptr
524208:  STR             R2, [R0,#0x14]
52420A:  MOVW            R2, #0xFFFF
52420E:  STRH            R2, [R0,#0x18]
524210:  STRH            R2, [R0,#0x1C]
524212:  LDRB.W          R2, [R0,#0x24]
524216:  LDR             R1, [R1]; `vtable for'CTaskComplexWanderProstitute ...
524218:  AND.W           R2, R2, #0xF0
52421C:  STR             R3, [R0,#0x20]
52421E:  STRH            R3, [R0,#0x30]
524220:  ORRS            R2, R4
524222:  STRD.W          R3, R3, [R0,#0x34]
524226:  ADDS            R1, #8
524228:  STRD.W          R3, R3, [R0,#0x28]
52422C:  STRB.W          R2, [R0,#0x24]
524230:  STR             R1, [R0]
524232:  POP.W           {R11}
524236:  POP             {R4-R7,PC}
