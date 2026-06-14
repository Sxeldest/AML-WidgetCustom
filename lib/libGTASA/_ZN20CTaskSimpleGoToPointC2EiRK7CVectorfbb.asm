; =========================================================
; Game Engine Function: _ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb
; Address            : 0x51CA8C - 0x51CAE6
; =========================================================

51CA8C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int, CVector const&, float, bool, bool)'
51CA8E:  ADD             R7, SP, #0xC
51CA90:  PUSH.W          {R11}
51CA94:  MOV             R4, R3
51CA96:  MOV             R5, R2
51CA98:  MOV             R6, R1
51CA9A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51CA9E:  LDR             R1, =(_ZTV15CTaskSimpleGoTo_ptr - 0x51CAA6)
51CAA0:  LDR             R2, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x51CAAA)
51CAA2:  ADD             R1, PC; _ZTV15CTaskSimpleGoTo_ptr
51CAA4:  STR             R6, [R0,#8]
51CAA6:  ADD             R2, PC; _ZTV20CTaskSimpleGoToPoint_ptr
51CAA8:  LDR.W           R12, [R7,#arg_4]
51CAAC:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoTo ...
51CAAE:  LDR             R2, [R2]; `vtable for'CTaskSimpleGoToPoint ...
51CAB0:  ADDS            R1, #8
51CAB2:  STR             R1, [R0]
51CAB4:  LDR             R1, [R5,#8]
51CAB6:  LDR             R6, [R7,#arg_0]
51CAB8:  LDRB            R3, [R0,#0x1D]
51CABA:  VLDR            D16, [R5]
51CABE:  LDRB            R5, [R0,#0x1C]
51CAC0:  STR             R1, [R0,#0x14]
51CAC2:  ADD.W           R1, R2, #8
51CAC6:  STR             R1, [R0]
51CAC8:  ORR.W           R1, R6, R12,LSL#3
51CACC:  AND.W           R2, R3, #0xE0
51CAD0:  STR             R4, [R0,#0x18]
51CAD2:  ORRS            R1, R2
51CAD4:  STRB            R1, [R0,#0x1D]
51CAD6:  AND.W           R1, R5, #0xC0
51CADA:  STRB            R1, [R0,#0x1C]
51CADC:  VSTR            D16, [R0,#0xC]
51CAE0:  POP.W           {R11}
51CAE4:  POP             {R4-R7,PC}
