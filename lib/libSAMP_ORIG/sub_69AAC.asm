; =========================================================
; Game Engine Function: sub_69AAC
; Address            : 0x69AAC - 0x69BEC
; =========================================================

69AAC:  PUSH            {R4-R7,LR}
69AAE:  ADD             R7, SP, #0xC
69AB0:  PUSH.W          {R8-R11}
69AB4:  SUB             SP, SP, #0xC
69AB6:  MOV             R9, R1
69AB8:  MOV             R8, R0
69ABA:  BL              sub_68E3C
69ABE:  CMP             R0, #0
69AC0:  BEQ             loc_69B50
69AC2:  MOV             R5, R0
69AC4:  LDR             R0, [R0]
69AC6:  LDR             R1, =(aJavaLangString - 0x69ACE); "java/lang/String" ...
69AC8:  LDR             R2, [R0,#0x18]
69ACA:  ADD             R1, PC; "java/lang/String"
69ACC:  MOV             R0, R5
69ACE:  BLX             R2
69AD0:  MOV             R11, R0
69AD2:  LDR             R0, [R5]
69AD4:  LDR             R2, =(aInit - 0x69AE2); "<init>" ...
69AD6:  MOV             R1, R11
69AD8:  LDR             R3, =(aBljavaLangStri - 0x69AE4); "([BLjava/lang/String;)V" ...
69ADA:  LDR.W           R4, [R0,#0x84]
69ADE:  ADD             R2, PC; "<init>"
69AE0:  ADD             R3, PC; "([BLjava/lang/String;)V"
69AE2:  MOV             R0, R5
69AE4:  BLX             R4
69AE6:  STR             R0, [SP,#0x28+var_20]
69AE8:  LDR             R0, [R5]
69AEA:  LDR             R1, =(aUtf8 - 0x69AF4); "UTF-8" ...
69AEC:  LDR.W           R2, [R0,#0x29C]
69AF0:  ADD             R1, PC; "UTF-8"
69AF2:  MOV             R0, R5
69AF4:  BLX             R2
69AF6:  MOV             R10, R0
69AF8:  MOV             R0, R9; s
69AFA:  BLX             strlen
69AFE:  MOV             R1, R0
69B00:  LDR             R0, [R5]
69B02:  LDR.W           R2, [R0,#0x2C0]
69B06:  MOV             R0, R5
69B08:  BLX             R2
69B0A:  MOV             R4, R0
69B0C:  MOV             R0, R9; s
69B0E:  BLX             strlen
69B12:  MOV             R3, R0
69B14:  LDR             R0, [R5]
69B16:  MOV             R1, R4
69B18:  MOVS            R2, #0
69B1A:  LDR.W           R6, [R0,#0x340]
69B1E:  MOV             R0, R5
69B20:  STR.W           R9, [SP,#0x28+var_28]
69B24:  BLX             R6
69B26:  STR.W           R10, [SP,#0x28+var_28]
69B2A:  MOV             R0, R5
69B2C:  LDR             R2, [SP,#0x28+var_20]
69B2E:  MOV             R1, R11
69B30:  MOV             R3, R4
69B32:  BL              sub_6918C
69B36:  MOV             R3, R0
69B38:  LDR.W           R1, [R8,#4]
69B3C:  LDR.W           R2, [R8,#0x60]
69B40:  MOV             R0, R5
69B42:  ADD             SP, SP, #0xC
69B44:  POP.W           {R8-R11}
69B48:  POP.W           {R4-R7,LR}
69B4C:  B.W             sub_69070
69B50:  LDR             R0, =(byte_1A42B8 - 0x69B56)
69B52:  ADD             R0, PC; byte_1A42B8
69B54:  LDRB            R0, [R0]
69B56:  DMB.W           ISH
69B5A:  LDR             R4, =(dword_1A42B0 - 0x69B60)
69B5C:  ADD             R4, PC; dword_1A42B0
69B5E:  LSLS            R0, R0, #0x1F
69B60:  BEQ             loc_69BB4
69B62:  LDRB            R0, [R4,#(byte_1A42B6 - 0x1A42B0)]
69B64:  CBZ             R0, loc_69B9C
69B66:  LDRB            R1, [R4]
69B68:  EOR.W           R0, R0, #0x5A ; 'Z'
69B6C:  LDRB            R2, [R4,#(dword_1A42B0+1 - 0x1A42B0)]
69B6E:  STRB            R0, [R4,#(byte_1A42B6 - 0x1A42B0)]
69B70:  EOR.W           R1, R1, #0x5A ; 'Z'
69B74:  LDRB            R0, [R4,#(word_1A42B4 - 0x1A42B0)]
69B76:  LDRB            R3, [R4,#(dword_1A42B0+2 - 0x1A42B0)]
69B78:  STRB            R1, [R4]
69B7A:  EOR.W           R1, R2, #0x5A ; 'Z'
69B7E:  LDRB            R6, [R4,#(dword_1A42B0+3 - 0x1A42B0)]
69B80:  EOR.W           R0, R0, #0x5A ; 'Z'
69B84:  LDRB            R5, [R4,#(word_1A42B4+1 - 0x1A42B0)]
69B86:  STRB            R1, [R4,#(dword_1A42B0+1 - 0x1A42B0)]
69B88:  EOR.W           R1, R3, #0x5A ; 'Z'
69B8C:  STRB            R1, [R4,#(dword_1A42B0+2 - 0x1A42B0)]
69B8E:  EOR.W           R1, R6, #0x5A ; 'Z'
69B92:  STRB            R0, [R4,#(word_1A42B4 - 0x1A42B0)]
69B94:  EOR.W           R0, R5, #0x5A ; 'Z'
69B98:  STRB            R1, [R4,#(dword_1A42B0+3 - 0x1A42B0)]
69B9A:  STRB            R0, [R4,#(word_1A42B4+1 - 0x1A42B0)]
69B9C:  LDR             R1, =(aSampOrig - 0x69BA6); "SAMP_ORIG" ...
69B9E:  MOVS            R0, #4
69BA0:  LDR             R2, =(dword_1A42B0 - 0x69BA8)
69BA2:  ADD             R1, PC; "SAMP_ORIG"
69BA4:  ADD             R2, PC; dword_1A42B0
69BA6:  ADD             SP, SP, #0xC
69BA8:  POP.W           {R8-R11}
69BAC:  POP.W           {R4-R7,LR}
69BB0:  B.W             sub_10C158
69BB4:  LDR             R0, =(byte_1A42B8 - 0x69BBA)
69BB6:  ADD             R0, PC; byte_1A42B8 ; __guard *
69BB8:  BLX             j___cxa_guard_acquire
69BBC:  CMP             R0, #0
69BBE:  BEQ             loc_69B62
69BC0:  MOVS            R1, #0x5A ; 'Z'
69BC2:  LDR             R0, =(sub_66E8E+1 - 0x69BDA)
69BC4:  LDR             R2, =(off_110560 - 0x69BDC)
69BC6:  STRB            R1, [R4,#(byte_1A42B6 - 0x1A42B0)]
69BC8:  MOVW            R1, #0x2C34
69BCC:  STRH            R1, [R4,#(word_1A42B4 - 0x1A42B0)]
69BCE:  MOV             R1, #0x3F7A3514
69BD6:  ADD             R0, PC; sub_66E8E ; lpfunc
69BD8:  ADD             R2, PC; off_110560 ; lpdso_handle
69BDA:  STR             R1, [R4]
69BDC:  MOV             R1, R4; obj
69BDE:  BLX             __cxa_atexit
69BE2:  LDR             R0, =(byte_1A42B8 - 0x69BE8)
69BE4:  ADD             R0, PC; byte_1A42B8 ; __guard *
69BE6:  BLX             j___cxa_guard_release
69BEA:  B               loc_69B62
