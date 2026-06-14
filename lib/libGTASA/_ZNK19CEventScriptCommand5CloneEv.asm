; =========================================================
; Game Engine Function: _ZNK19CEventScriptCommand5CloneEv
; Address            : 0x3764B4 - 0x376540
; =========================================================

3764B4:  PUSH            {R4-R7,LR}
3764B6:  ADD             R7, SP, #0xC
3764B8:  PUSH.W          {R8}
3764BC:  MOV             R8, R0
3764BE:  LDR.W           R0, [R8]
3764C2:  LDR             R1, [R0,#0x44]
3764C4:  MOV             R0, R8
3764C6:  BLX             R1
3764C8:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3764D0)
3764CA:  MOVS            R4, #0
3764CC:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3764CE:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3764D0:  LDR             R2, [R1]; CPools::ms_pEventPool
3764D2:  LDRD.W          R3, R1, [R2,#8]
3764D6:  ADDS            R1, #1
3764D8:  STR             R1, [R2,#0xC]
3764DA:  CMP             R1, R3
3764DC:  BNE             loc_3764E8
3764DE:  MOVS            R1, #0
3764E0:  LSLS            R6, R4, #0x1F
3764E2:  STR             R1, [R2,#0xC]
3764E4:  BNE             loc_376518
3764E6:  MOVS            R4, #1
3764E8:  LDR             R5, [R2,#4]
3764EA:  LDRSB           R6, [R5,R1]
3764EC:  CMP.W           R6, #0xFFFFFFFF
3764F0:  BGT             loc_3764D6
3764F2:  AND.W           R3, R6, #0x7F
3764F6:  STRB            R3, [R5,R1]
3764F8:  LDR             R1, [R2,#4]
3764FA:  LDR             R3, [R2,#0xC]
3764FC:  LDRB            R6, [R1,R3]
3764FE:  AND.W           R5, R6, #0x80
376502:  ADDS            R6, #1
376504:  AND.W           R6, R6, #0x7F
376508:  ORRS            R6, R5
37650A:  STRB            R6, [R1,R3]
37650C:  LDR             R1, [R2]
37650E:  LDR             R2, [R2,#0xC]
376510:  ADD.W           R2, R2, R2,LSL#4
376514:  ADD.W           R1, R1, R2,LSL#2
376518:  LDR             R2, =(_ZTV19CEventScriptCommand_ptr - 0x376524)
37651A:  MOVS            R6, #0
37651C:  LDR.W           R5, [R8,#0xC]
376520:  ADD             R2, PC; _ZTV19CEventScriptCommand_ptr
376522:  LDRB.W          R3, [R8,#0x14]
376526:  STRB            R6, [R1,#8]
376528:  LDR             R2, [R2]; `vtable for'CEventScriptCommand ...
37652A:  STR             R6, [R1,#4]
37652C:  STR             R5, [R1,#0xC]
37652E:  STR             R0, [R1,#0x10]
376530:  ADD.W           R0, R2, #8
376534:  STRB            R3, [R1,#0x14]
376536:  STR             R0, [R1]
376538:  MOV             R0, R1
37653A:  POP.W           {R8}
37653E:  POP             {R4-R7,PC}
