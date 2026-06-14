; =========================================================
; Game Engine Function: sub_1DFBEC
; Address            : 0x1DFBEC - 0x1DFD00
; =========================================================

1DFBEC:  PUSH            {R4-R7,LR}
1DFBEE:  ADD             R7, SP, #0xC
1DFBF0:  PUSH.W          {R8,R9,R11}
1DFBF4:  SUB             SP, SP, #8
1DFBF6:  VMOV.I32        Q8, #0
1DFBFA:  MOV             R9, R2
1DFBFC:  MOV             R5, R1
1DFBFE:  MOV             R8, R0
1DFC00:  LDR.W           R6, [R9,#0x2C]
1DFC04:  MOVS            R4, #0
1DFC06:  MOV             R0, R5
1DFC08:  STRD.W          R4, R4, [R5,#0x20]
1DFC0C:  VST1.32         {D16-D17}, [R0]!
1DFC10:  CMP             R6, #0x21 ; '!'
1DFC12:  VST1.32         {D16-D17}, [R0]
1DFC16:  BCC             loc_1DFC2A
1DFC18:  MOVS            R0, #0x29 ; ')'; int
1DFC1A:  STR             R4, [SP,#0x20+var_20]
1DFC1C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DFC20:  STR             R0, [SP,#0x20+var_1C]
1DFC22:  MOV             R0, SP
1DFC24:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DFC28:  B               loc_1DFC2C
1DFC2A:  MOVS            R4, #1
1DFC2C:  LDR.W           R0, [R9,#0x20]
1DFC30:  CMP             R0, #0x21 ; '!'
1DFC32:  BCC             loc_1DFC46
1DFC34:  MOVS            R4, #0
1DFC36:  MOVS            R0, #0x28 ; '('; int
1DFC38:  STR             R4, [SP,#0x20+var_20]
1DFC3A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DFC3E:  STR             R0, [SP,#0x20+var_1C]
1DFC40:  MOV             R0, SP
1DFC42:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DFC46:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x1DFC4E)
1DFC48:  LDR             R1, =(RwEngineInstance_ptr - 0x1DFC50)
1DFC4A:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
1DFC4C:  ADD             R1, PC; RwEngineInstance_ptr
1DFC4E:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
1DFC50:  LDR             R1, [R1]; RwEngineInstance
1DFC52:  LDR             R0, [R0]
1DFC54:  LDR             R1, [R1]
1DFC56:  ADDS            R2, R1, R0
1DFC58:  LDR             R3, [R2,#0x38]
1DFC5A:  CMP             R6, R3
1DFC5C:  BCS             loc_1DFCE0
1DFC5E:  CMP             R4, #0
1DFC60:  BEQ             loc_1DFCF4
1DFC62:  LDRD.W          R12, R2, [R8,#4]
1DFC66:  ADD.W           R3, R3, R3,LSL#2
1DFC6A:  CMP             R6, #0
1DFC6C:  ADD.W           R3, R2, R3,LSL#3
1DFC70:  ADD.W           R2, R3, R12,LSL#7
1DFC74:  STRD.W          R6, R2, [R5,#4]
1DFC78:  BEQ             loc_1DFCA4
1DFC7A:  MOV.W           R0, R12,LSL#5
1DFC7E:  MOVS            R1, #0
1DFC80:  ADD.W           R0, R3, R0,LSL#2
1DFC84:  MOV.W           R2, #0xFFFFFFFF
1DFC88:  STR.W           R2, [R0,R1,LSL#2]
1DFC8C:  ADDS            R1, #1
1DFC8E:  LDR             R3, [R5,#4]
1DFC90:  CMP             R1, R3
1DFC92:  BCC             loc_1DFC88
1DFC94:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x1DFC9C)
1DFC96:  LDR             R1, =(RwEngineInstance_ptr - 0x1DFC9E)
1DFC98:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
1DFC9A:  ADD             R1, PC; RwEngineInstance_ptr
1DFC9C:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
1DFC9E:  LDR             R1, [R1]; RwEngineInstance
1DFCA0:  LDR             R0, [R0]
1DFCA2:  LDR             R1, [R1]
1DFCA4:  ADD             R0, R1
1DFCA6:  LDR             R0, [R0,#0x38]
1DFCA8:  LDRD.W          R1, R2, [R8,#4]
1DFCAC:  ADD.W           R3, R0, R0,LSL#2
1DFCB0:  ADD.W           R1, R1, R1,LSL#1
1DFCB4:  ADD.W           R2, R2, R3,LSL#3
1DFCB8:  ADD.W           R0, R2, R0,LSL#7
1DFCBC:  MOVS            R2, #0
1DFCBE:  STR.W           R2, [R0,R1,LSL#2]
1DFCC2:  ADD.W           R0, R0, R1,LSL#2
1DFCC6:  STRD.W          R2, R2, [R0,#4]
1DFCCA:  STRD.W          R0, R2, [R5,#0x1C]
1DFCCE:  STR             R2, [R5,#0x24]
1DFCD0:  STR.W           R9, [R5]
1DFCD4:  LDR.W           R0, [R8,#4]
1DFCD8:  ADDS            R0, #1
1DFCDA:  STR.W           R0, [R8,#4]
1DFCDE:  B               loc_1DFCF6
1DFCE0:  MOVS            R4, #0
1DFCE2:  MOVS            R0, #0x2A ; '*'; int
1DFCE4:  STR             R4, [SP,#0x20+var_20]
1DFCE6:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DFCEA:  STR             R0, [SP,#0x20+var_1C]
1DFCEC:  MOV             R0, SP
1DFCEE:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DFCF2:  B               loc_1DFCF6
1DFCF4:  MOVS            R4, #0
1DFCF6:  MOV             R0, R4
1DFCF8:  ADD             SP, SP, #8
1DFCFA:  POP.W           {R8,R9,R11}
1DFCFE:  POP             {R4-R7,PC}
