; =========================================================
; Game Engine Function: _Z22RtCharsetPrintBufferedP8RwRasterPKciii
; Address            : 0x1ECA58 - 0x1ECB68
; =========================================================

1ECA58:  PUSH            {R4-R7,LR}
1ECA5A:  ADD             R7, SP, #0xC
1ECA5C:  PUSH.W          {R8-R11}
1ECA60:  SUB             SP, SP, #0x3C
1ECA62:  MOV             R9, R0
1ECA64:  LDR             R0, =(RwEngineInstance_ptr - 0x1ECA6E)
1ECA66:  STR             R3, [SP,#0x58+var_40]
1ECA68:  MOV             R6, R1
1ECA6A:  ADD             R0, PC; RwEngineInstance_ptr
1ECA6C:  MOV             R8, R2
1ECA6E:  LDR             R0, [R0]; RwEngineInstance
1ECA70:  LDR             R0, [R0]
1ECA72:  LDR.W           R1, [R0,#0x118]
1ECA76:  MOV             R0, R6
1ECA78:  BLX             R1
1ECA7A:  CMP             R0, #0
1ECA7C:  BEQ             loc_1ECB28
1ECA7E:  ADD             R0, SP, #0x58+var_38
1ECA80:  ADD             R1, SP, #0x58+var_3C
1ECA82:  BLX             j__Z22_rtCharsetAtariFontGetP13RtCharsetDescPi; _rtCharsetAtariFontGet(RtCharsetDesc *,int *)
1ECA86:  LDR             R0, =(_rtgBuffer_ptr - 0x1ECA8C)
1ECA88:  ADD             R0, PC; _rtgBuffer_ptr
1ECA8A:  LDR             R0, [R0]; _rtgBuffer
1ECA8C:  LDR             R0, [R0,#(dword_6BD518 - 0x6BD514)]
1ECA8E:  CBZ             R0, loc_1ECA98
1ECA90:  CMP             R0, R9
1ECA92:  IT NE
1ECA94:  BLXNE           j__Z20RtCharsetBufferFlushv; RtCharsetBufferFlush(void)
1ECA98:  LDR             R0, =(_rtgBuffer_ptr - 0x1ECA9E)
1ECA9A:  ADD             R0, PC; _rtgBuffer_ptr
1ECA9C:  LDR             R4, [R0]; _rtgBuffer
1ECA9E:  MOV             R0, R6; char *
1ECAA0:  STR.W           R9, [R4,#(dword_6BD518 - 0x6BD514)]
1ECAA4:  BLX             strlen
1ECAA8:  MOV             R1, R0
1ECAAA:  LDR             R0, [R4,#(dword_6BD51C - 0x6BD514)]
1ECAAC:  CBZ             R1, loc_1ECB24
1ECAAE:  LDR             R2, =(_rtgBuffer_ptr - 0x1ECAB4)
1ECAB0:  ADD             R2, PC; _rtgBuffer_ptr
1ECAB2:  LDR.W           R11, [R2]; _rtgBuffer
1ECAB6:  LDR             R2, =(_rtgBuffer_ptr - 0x1ECABC)
1ECAB8:  ADD             R2, PC; _rtgBuffer_ptr
1ECABA:  LDR.W           R10, [R2]; _rtgBuffer
1ECABE:  ADD.W           R5, R0, R0,LSL#1
1ECAC2:  LDRD.W          R3, R2, [R11,#(dword_6BD520 - 0x6BD514)]
1ECAC6:  RSB.W           R4, R0, #0x400
1ECACA:  ADD.W           R2, R2, R5,LSL#2
1ECACE:  RSB.W           R5, R0, R0,LSL#3
1ECAD2:  CMP             R1, R4
1ECAD4:  ADD.W           R3, R3, R5,LSL#4
1ECAD8:  MOV.W           R5, R0,LSL#2
1ECADC:  UXTH            R0, R5
1ECADE:  BCC             loc_1ECB2E
1ECAE0:  LDR             R1, [SP,#0x58+var_40]
1ECAE2:  STRD.W          R1, R3, [SP,#0x58+var_58]
1ECAE6:  MOV             R1, R4
1ECAE8:  STRD.W          R2, R0, [SP,#0x58+var_50]
1ECAEC:  MOV             R2, R9
1ECAEE:  LDR             R0, [R7,#arg_0]
1ECAF0:  MOV             R3, R8
1ECAF2:  STR             R0, [SP,#0x58+var_48]
1ECAF4:  MOV             R0, R6
1ECAF6:  BL              sub_1ECB84
1ECAFA:  LDR.W           R1, [R10,#(dword_6BD51C - 0x6BD514)]
1ECAFE:  ADD             R0, R1
1ECB00:  STR.W           R0, [R10,#(dword_6BD51C - 0x6BD514)]
1ECB04:  BLX             j__Z20RtCharsetBufferFlushv; RtCharsetBufferFlush(void)
1ECB08:  LDR             R0, [SP,#0x58+var_38]
1ECB0A:  ADD             R6, R4
1ECB0C:  STR.W           R9, [R10,#(dword_6BD518 - 0x6BD514)]
1ECB10:  MLA.W           R8, R0, R4, R8
1ECB14:  MOV             R0, R6; char *
1ECB16:  BLX             strlen
1ECB1A:  MOV             R1, R0
1ECB1C:  LDR.W           R0, [R10,#(dword_6BD51C - 0x6BD514)]
1ECB20:  CMP             R1, #0
1ECB22:  BNE             loc_1ECABE
1ECB24:  CBNZ            R0, loc_1ECB5E
1ECB26:  B               loc_1ECB54
1ECB28:  MOV.W           R9, #0
1ECB2C:  B               loc_1ECB5E
1ECB2E:  LDR             R5, [SP,#0x58+var_40]
1ECB30:  STRD.W          R5, R3, [SP,#0x58+var_58]
1ECB34:  MOV             R3, R8
1ECB36:  STRD.W          R2, R0, [SP,#0x58+var_50]
1ECB3A:  MOV             R2, R9
1ECB3C:  LDR             R0, [R7,#arg_0]
1ECB3E:  STR             R0, [SP,#0x58+var_48]
1ECB40:  MOV             R0, R6
1ECB42:  BL              sub_1ECB84
1ECB46:  LDR             R1, =(_rtgBuffer_ptr - 0x1ECB4C)
1ECB48:  ADD             R1, PC; _rtgBuffer_ptr
1ECB4A:  LDR             R1, [R1]; _rtgBuffer
1ECB4C:  LDR             R2, [R1,#(dword_6BD51C - 0x6BD514)]
1ECB4E:  ADD             R0, R2
1ECB50:  STR             R0, [R1,#(dword_6BD51C - 0x6BD514)]
1ECB52:  CBNZ            R0, loc_1ECB5E
1ECB54:  LDR             R0, =(_rtgBuffer_ptr - 0x1ECB5C)
1ECB56:  MOVS            R1, #0
1ECB58:  ADD             R0, PC; _rtgBuffer_ptr
1ECB5A:  LDR             R0, [R0]; _rtgBuffer
1ECB5C:  STR             R1, [R0,#(dword_6BD518 - 0x6BD514)]
1ECB5E:  MOV             R0, R9
1ECB60:  ADD             SP, SP, #0x3C ; '<'
1ECB62:  POP.W           {R8-R11}
1ECB66:  POP             {R4-R7,PC}
