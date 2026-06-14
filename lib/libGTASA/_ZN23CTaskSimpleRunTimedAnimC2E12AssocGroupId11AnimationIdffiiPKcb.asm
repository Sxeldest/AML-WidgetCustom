; =========================================================
; Game Engine Function: _ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb
; Address            : 0x4D7178 - 0x4D71D0
; =========================================================

4D7178:  PUSH            {R4-R7,LR}
4D717A:  ADD             R7, SP, #0xC
4D717C:  PUSH.W          {R8}
4D7180:  MOV             R4, R3
4D7182:  MOV             R5, R2
4D7184:  MOV             R6, R1
4D7186:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D718A:  LDR.W           R12, =(_ZTV23CTaskSimpleRunTimedAnim_ptr - 0x4D719A)
4D718E:  MOVS            R3, #0
4D7190:  LDRD.W          R1, R8, [R7,#arg_4]
4D7194:  STR             R3, [R0,#8]
4D7196:  ADD             R12, PC; _ZTV23CTaskSimpleRunTimedAnim_ptr
4D7198:  VLDR            S0, [R7,#arg_0]
4D719C:  LDRB            R2, [R0,#0xC]
4D719E:  LDR.W           LR, [R7,#arg_10]
4D71A2:  STRD.W          R6, R5, [R0,#0x10]
4D71A6:  AND.W           R2, R2, #0xF8
4D71AA:  STR             R4, [R0,#0x18]
4D71AC:  VSTR            S0, [R0,#0x1C]
4D71B0:  ORR.W           R2, R2, LR,LSL#2
4D71B4:  STR             R1, [R0,#0x20]
4D71B6:  LDR.W           R1, [R12]; `vtable for'CTaskSimpleRunTimedAnim ...
4D71BA:  STRH            R3, [R0,#0x2C]
4D71BC:  STRH.W          R8, [R0,#0x30]
4D71C0:  ADDS            R1, #8
4D71C2:  STRD.W          R3, R3, [R0,#0x24]
4D71C6:  STRB            R2, [R0,#0xC]
4D71C8:  STR             R1, [R0]
4D71CA:  POP.W           {R8}
4D71CE:  POP             {R4-R7,PC}
