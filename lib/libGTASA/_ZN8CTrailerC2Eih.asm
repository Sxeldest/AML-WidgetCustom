; =========================================================
; Game Engine Function: _ZN8CTrailerC2Eih
; Address            : 0x57AEAC - 0x57AF0E
; =========================================================

57AEAC:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTrailer::CTrailer(int, unsigned char)'
57AEAE:  ADD             R7, SP, #8
57AEB0:  MOVS            R3, #0; unsigned __int8
57AEB2:  MOV             R4, R0
57AEB4:  BLX             j__ZN11CAutomobileC2Eihh_0; CAutomobile::CAutomobile(int,uchar,uchar)
57AEB8:  LDR             R0, =(_ZTV8CTrailer_ptr - 0x57AEC8)
57AEBA:  MOV.W           R1, #0x3F800000
57AEBE:  MOVS            R2, #0xB
57AEC0:  STR.W           R1, [R4,#0x9F4]
57AEC4:  ADD             R0, PC; _ZTV8CTrailer_ptr
57AEC6:  STR.W           R2, [R4,#0x5A4]
57AECA:  STR.W           R1, [R4,#0x9F8]
57AECE:  STR.W           R1, [R4,#0xA00]
57AED2:  STR.W           R1, [R4,#0xA04]
57AED6:  LDR             R0, [R0]; `vtable for'CTrailer ...
57AED8:  LDRSH.W         R1, [R4,#0x26]
57AEDC:  ADDS            R0, #8
57AEDE:  STR             R0, [R4]
57AEE0:  MOVW            R0, #0x12F
57AEE4:  CMP.W           R0, R1,LSR#1
57AEE8:  ITTTT EQ
57AEEA:  ADDEQ.W         R0, R4, #0xA00
57AEEE:  MOVEQ           R1, #0
57AEF0:  MOVTEQ          R1, #0xC47A
57AEF4:  STREQ           R1, [R0]
57AEF6:  MOV             R0, R4; this
57AEF8:  BLX             j__ZN8CTrailer20SetupSuspensionLinesEv; CTrailer::SetupSuspensionLines(void)
57AEFC:  LDRB.W          R0, [R4,#0x3A]
57AF00:  MOVS            R1, #4
57AF02:  BFI.W           R0, R1, #3, #0x1D
57AF06:  STRB.W          R0, [R4,#0x3A]
57AF0A:  MOV             R0, R4
57AF0C:  POP             {R4,R6,R7,PC}
