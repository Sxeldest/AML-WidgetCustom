; =========================================================
; Game Engine Function: _Z27RpMTEffectDictStreamGetSizePK14RpMTEffectDict
; Address            : 0x1C57A8 - 0x1C57FE
; =========================================================

1C57A8:  PUSH            {R4-R7,LR}
1C57AA:  ADD             R7, SP, #0xC
1C57AC:  PUSH.W          {R8-R11}
1C57B0:  SUB             SP, SP, #4
1C57B2:  MOV             R8, R0
1C57B4:  MOVS            R5, #0x10
1C57B6:  LDR.W           R6, [R8]
1C57BA:  CMP             R6, R8
1C57BC:  BEQ             loc_1C57F4
1C57BE:  LDR.W           R10, =(unk_6B7180 - 0x1C57C6)
1C57C2:  ADD             R10, PC; unk_6B7180
1C57C4:  MOV             R4, R6
1C57C6:  LDR.W           R0, [R4,#-0x28]!
1C57CA:  ADD.W           R0, R0, R0,LSL#2
1C57CE:  ADD.W           R11, R10, R0,LSL#2
1C57D2:  SUB.W           R0, R6, #0x20 ; ' '; char *
1C57D6:  BLX             j__Z22_rwStringStreamGetSizePKc; _rwStringStreamGetSize(char const*)
1C57DA:  LDR.W           R1, [R11,#0x10]
1C57DE:  MOV             R9, R0
1C57E0:  MOV             R0, R4
1C57E2:  BLX             R1
1C57E4:  ADD.W           R1, R5, R9
1C57E8:  LDR             R6, [R6]
1C57EA:  ADD             R0, R1
1C57EC:  ADD.W           R5, R0, #0x34 ; '4'
1C57F0:  CMP             R6, R8
1C57F2:  BNE             loc_1C57C4
1C57F4:  MOV             R0, R5
1C57F6:  ADD             SP, SP, #4
1C57F8:  POP.W           {R8-R11}
1C57FC:  POP             {R4-R7,PC}
