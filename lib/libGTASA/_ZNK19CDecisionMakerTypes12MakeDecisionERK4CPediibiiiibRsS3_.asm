; =========================================================
; Game Engine Function: _ZNK19CDecisionMakerTypes12MakeDecisionERK4CPediibiiiibRsS3_
; Address            : 0x4BDDF0 - 0x4BDEAC
; =========================================================

4BDDF0:  PUSH            {R4-R7,LR}
4BDDF2:  ADD             R7, SP, #0xC
4BDDF4:  PUSH.W          {R8-R11}
4BDDF8:  SUB             SP, SP, #0x14
4BDDFA:  MOV             R12, R3
4BDDFC:  LDRD.W          R9, R8, [R7,#arg_C]
4BDE00:  LDR             R3, [R7,#arg_14]
4BDE02:  ADD.W           R2, R0, R2,LSL#2
4BDE06:  LDR.W           R5, [R1,#0x440]
4BDE0A:  MOVW            R4, #0xC034
4BDE0E:  LDR             R4, [R2,R4]
4BDE10:  CMP             R3, #0
4BDE12:  ADD.W           R2, R5, #0xB4
4BDE16:  LDR.W           R11, [R7,#arg_18]
4BDE1A:  IT NE
4BDE1C:  ADDNE.W         R2, R5, #0xB8
4BDE20:  LDR.W           LR, [R7,#arg_1C]
4BDE24:  LDR             R5, [R2]
4BDE26:  MOVS            R2, #0xC8
4BDE28:  STRH.W          R2, [R11]
4BDE2C:  MOVW            R2, #0xFFFF
4BDE30:  STRH.W          R2, [LR]
4BDE34:  ADDS            R6, R5, #1
4BDE36:  LDR.W           R10, [R7,#arg_8]
4BDE3A:  LDRD.W          R2, R3, [R7,#arg_0]; int
4BDE3E:  BEQ             loc_4BDE5C
4BDE40:  ADDS            R1, R5, #2
4BDE42:  BNE             loc_4BDE82
4BDE44:  ADD             R1, SP, #0x30+var_28
4BDE46:  STRD.W          R10, R9, [SP,#0x30+var_30]
4BDE4A:  STM.W           R1, {R8,R11,LR}
4BDE4E:  RSB.W           R1, R4, R4,LSL#4
4BDE52:  ADD.W           R0, R0, R1,LSL#2
4BDE56:  MOVW            R1, #0xD4EC
4BDE5A:  B               loc_4BDE7E
4BDE5C:  LDRB.W          R1, [R1,#0x448]
4BDE60:  STRD.W          R10, R9, [SP,#0x30+var_30]
4BDE64:  CMP             R1, #2
4BDE66:  ADD             R1, SP, #0x30+var_28
4BDE68:  STM.W           R1, {R8,R11,LR}
4BDE6C:  RSB.W           R1, R4, R4,LSL#4
4BDE70:  ADD.W           R0, R0, R1,LSL#2
4BDE74:  ITE NE
4BDE76:  MOVWNE          R1, #0xC1B4
4BDE7A:  MOVWEQ          R1, #0xCB50
4BDE7E:  ADD             R0, R1
4BDE80:  B               loc_4BDE9E
4BDE82:  MOVW            R1, #0x99C
4BDE86:  STRD.W          R10, R9, [SP,#0x30+var_30]; int
4BDE8A:  MLA.W           R0, R5, R1, R0
4BDE8E:  ADD             R1, SP, #0x30+var_28
4BDE90:  STM.W           R1, {R8,R11,LR}
4BDE94:  RSB.W           R1, R4, R4,LSL#4
4BDE98:  ADD.W           R0, R0, R1,LSL#2
4BDE9C:  ADDS            R0, #4; this
4BDE9E:  MOV             R1, R12; int
4BDEA0:  BLX             j__ZNK9CDecision12MakeDecisionEibiiiiRsS0_; CDecision::MakeDecision(int,bool,int,int,int,int,short &,short &)
4BDEA4:  ADD             SP, SP, #0x14
4BDEA6:  POP.W           {R8-R11}
4BDEAA:  POP             {R4-R7,PC}
