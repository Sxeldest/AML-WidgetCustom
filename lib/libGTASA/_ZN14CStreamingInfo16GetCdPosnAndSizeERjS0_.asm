; =========================================================
; Game Engine Function: _ZN14CStreamingInfo16GetCdPosnAndSizeERjS0_
; Address            : 0x2CF520 - 0x2CF554
; =========================================================

2CF520:  LDR             R3, [R0,#0xC]
2CF522:  CMP             R3, #0
2CF524:  ITT EQ
2CF526:  MOVEQ           R0, #0
2CF528:  BXEQ            LR
2CF52A:  PUSH            {R4,R6,R7,LR}
2CF52C:  ADD             R7, SP, #0x10+var_8
2CF52E:  LDR.W           R12, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF538)
2CF532:  LDRB            R4, [R0,#7]
2CF534:  ADD             R12, PC; _ZN10CStreaming8ms_filesE_ptr
2CF536:  LDR.W           LR, [R0,#8]
2CF53A:  LDR.W           R3, [R12]; CStreaming::ms_files ...
2CF53E:  ADD.W           R4, R4, R4,LSL#1
2CF542:  ADD.W           R3, R3, R4,LSL#4
2CF546:  LDR             R3, [R3,#0x2C]
2CF548:  ADD             R3, LR
2CF54A:  STR             R3, [R1]
2CF54C:  LDR             R0, [R0,#0xC]
2CF54E:  STR             R0, [R2]
2CF550:  MOVS            R0, #1
2CF552:  POP             {R4,R6,R7,PC}
