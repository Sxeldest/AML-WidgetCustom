; =========================================================
; Game Engine Function: _ZN13CAEDataStreamC2EiPciib
; Address            : 0x39530C - 0x395330
; =========================================================

39530C:  PUSH            {R7,LR}; Alternative name is 'CAEDataStream::CAEDataStream(int, char *, int, int, bool)'
39530E:  MOV             R7, SP
395310:  LDRD.W          LR, R12, [R7,#8+arg_0]
395314:  STR             R2, [R0,#8]
395316:  MOVS            R2, #0
395318:  STR             R2, [R0]
39531A:  STRB            R2, [R0,#0xC]
39531C:  STR             R2, [R0,#0x10]
39531E:  STR             R3, [R0,#0x14]
395320:  STR.W           LR, [R0,#0x18]
395324:  STR             R1, [R0,#0x1C]
395326:  MOVS            R1, #1
395328:  STRB.W          R12, [R0,#0x20]
39532C:  STR             R1, [R0,#0x24]
39532E:  POP             {R7,PC}
