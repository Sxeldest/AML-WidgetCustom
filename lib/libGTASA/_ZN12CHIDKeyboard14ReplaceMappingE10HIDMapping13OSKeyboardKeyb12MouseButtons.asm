; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard14ReplaceMappingE10HIDMapping13OSKeyboardKeyb12MouseButtons
; Address            : 0x2954DA - 0x29552A
; =========================================================

2954DA:  PUSH            {R4-R7,LR}
2954DC:  ADD             R7, SP, #0xC
2954DE:  PUSH.W          {R8,R9,R11}
2954E2:  LDR.W           LR, [R0,#8]
2954E6:  CMP.W           LR, #0
2954EA:  BEQ             loc_295524
2954EC:  LDR.W           R12, [R7,#arg_0]
2954F0:  MOVS            R4, #0
2954F2:  MOVS            R5, #0
2954F4:  LDR.W           R8, [R0,#0xC]
2954F8:  ADD.W           R9, R8, R4
2954FC:  LDR.W           R6, [R9,#4]
295500:  CMP             R6, R1
295502:  ITT EQ
295504:  LDRBEQ.W        R6, [R9,#8]
295508:  CMPEQ           R6, R3
29550A:  BNE             loc_29551C
29550C:  STR.W           R2, [R8,R4]
295510:  LDR             R6, [R0,#0xC]
295512:  ADD             R6, R4
295514:  STR.W           R12, [R6,#0xC]
295518:  LDR.W           LR, [R0,#8]
29551C:  ADDS            R5, #1
29551E:  ADDS            R4, #0x14
295520:  CMP             R5, LR
295522:  BCC             loc_2954F4
295524:  POP.W           {R8,R9,R11}
295528:  POP             {R4-R7,PC}
