; =========================================================
; Game Engine Function: _ZNK19CDecisionMakerTypes12MakeDecisionERK9CPedGroupiibiiii
; Address            : 0x4BDEAC - 0x4BDF44
; =========================================================

4BDEAC:  PUSH            {R4-R7,LR}
4BDEAE:  ADD             R7, SP, #0xC
4BDEB0:  PUSH.W          {R8,R9,R11}
4BDEB4:  SUB             SP, SP, #0x18
4BDEB6:  ADD.W           R2, R0, R2,LSL#2
4BDEBA:  MOVW            R4, #0xC034
4BDEBE:  LDRD.W          R9, R8, [R7,#arg_C]
4BDEC2:  MOVS            R5, #0xC8
4BDEC4:  LDRD.W          R12, R6, [R7,#arg_4]
4BDEC8:  LDR.W           LR, [R2,R4]
4BDECC:  LDR.W           R4, [R1,#0x2C8]
4BDED0:  LDR             R2, [R7,#arg_0]; bool
4BDED2:  STRH.W          R5, [R7,#var_1A]
4BDED6:  MOVW            R5, #0xFFFF
4BDEDA:  STRH.W          R5, [SP,#0x30+var_1C]
4BDEDE:  ADDS            R5, R4, #1
4BDEE0:  BEQ             loc_4BDF06
4BDEE2:  MOVW            R1, #0x99C
4BDEE6:  STRD.W          R6, R9, [SP,#0x30+var_30]
4BDEEA:  MLA.W           R0, R4, R1, R0
4BDEEE:  SUB.W           R4, R7, #-var_1A
4BDEF2:  ADD             R1, SP, #0x30+var_1C
4BDEF4:  STRD.W          R8, R4, [SP,#0x30+var_28]
4BDEF8:  STR             R1, [SP,#0x30+var_20]
4BDEFA:  RSB.W           R1, LR, LR,LSL#4
4BDEFE:  ADD.W           R0, R0, R1,LSL#2
4BDF02:  ADDS            R0, #4
4BDF04:  B               loc_4BDF30
4BDF06:  LDRB.W          R1, [R1,#0x2D0]
4BDF0A:  SUB.W           R4, R7, #-var_1A
4BDF0E:  STRD.W          R6, R9, [SP,#0x30+var_30]; int
4BDF12:  CMP             R1, #1
4BDF14:  ADD             R1, SP, #0x30+var_1C
4BDF16:  STRD.W          R8, R4, [SP,#0x30+var_28]; int
4BDF1A:  STR             R1, [SP,#0x30+var_20]; __int16 *
4BDF1C:  RSB.W           R1, LR, LR,LSL#4
4BDF20:  ADD.W           R0, R0, R1,LSL#2
4BDF24:  ITE NE
4BDF26:  MOVWNE          R1, #0xDE88
4BDF2A:  MOVWEQ          R1, #0xE824
4BDF2E:  ADD             R0, R1; this
4BDF30:  MOV             R1, R3; int
4BDF32:  MOV             R3, R12; int
4BDF34:  BLX             j__ZNK9CDecision12MakeDecisionEibiiiiRsS0_; CDecision::MakeDecision(int,bool,int,int,int,int,short &,short &)
4BDF38:  LDRSH.W         R0, [R7,#var_1A]
4BDF3C:  ADD             SP, SP, #0x18
4BDF3E:  POP.W           {R8,R9,R11}
4BDF42:  POP             {R4-R7,PC}
