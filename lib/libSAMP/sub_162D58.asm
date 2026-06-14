; =========================================================
; Game Engine Function: sub_162D58
; Address            : 0x162D58 - 0x162E14
; =========================================================

162D58:  PUSH            {R4-R7,LR}
162D5A:  ADD             R7, SP, #0xC
162D5C:  PUSH.W          {R8-R11}
162D60:  SUB             SP, SP, #0x54
162D62:  MOV             R8, R0
162D64:  ADD             R0, SP, #0x70+var_4C
162D66:  MOV             R6, R3
162D68:  MOV             R11, R2
162D6A:  MOV             R9, R1
162D6C:  BL              sub_F06B2
162D70:  BL              sub_F0734
162D74:  MOV             R4, R0
162D76:  ADD.W           LR, R7, #8
162D7A:  LDRB            R2, [R4]
162D7C:  LDR.W           R12, [R7,#arg_C]
162D80:  LDM.W           LR, {R0,R10,LR}
162D84:  LSLS            R2, R2, #0x1F
162D86:  BNE             loc_162D8E
162D88:  MOVS            R2, #0
162D8A:  STRH            R2, [R4]
162D8C:  B               loc_162D9E
162D8E:  LDR             R2, [R4,#8]
162D90:  MOVS            R1, #0
162D92:  STRB            R1, [R2]
162D94:  LDRB            R3, [R4]
162D96:  LDR             R2, [R4]
162D98:  STR             R1, [R4,#4]
162D9A:  LSLS            R1, R3, #0x1F
162D9C:  BNE             loc_162DA2
162D9E:  MOVS            R2, #9
162DA0:  B               loc_162DA8
162DA2:  SUBS            R1, R2, #2
162DA4:  BIC.W           R2, R1, #1
162DA8:  LDR             R1, [R6]
162DAA:  MOVS            R3, #0
162DAC:  LDR.W           R5, [R12]
162DB0:  ADD.W           R12, SP, #0x70+var_40
162DB4:  LDR             R0, [R0]
162DB6:  LDR.W           R6, [LR]
162DBA:  LDR.W           R10, [R10]
162DBE:  STR             R3, [SP,#0x70+var_24]
162DC0:  STRD.W          R3, R5, [SP,#0x70+var_2C]
162DC4:  STRD.W          R3, R6, [SP,#0x70+var_34]
162DC8:  STM.W           R12, {R0,R3,R10}
162DCC:  STRD.W          R1, R3, [SP,#0x70+var_48]
162DD0:  MOVW            R1, #:lower16:(aZnst6Ndk16Tree_0+0xA4); "destroyEPNS_11__tree_nodeIS8_PvEE"
162DD4:  ADD             R0, SP, #0x70+var_48
162DD6:  MOVT            R1, #:upper16:(aZnst6Ndk16Tree_0+0xA4); "destroyEPNS_11__tree_nodeIS8_PvEE"
162DDA:  STRD.W          R0, R3, [SP,#0x70+var_60]
162DDE:  ADD             R0, SP, #0x70+var_54
162DE0:  STRD.W          R1, R3, [SP,#0x70+var_68]
162DE4:  MOV             R1, R4
162DE6:  MOV             R3, R9
162DE8:  STR.W           R11, [SP,#0x70+var_70]
162DEC:  BL              sub_DCA40
162DF0:  LDRB            R0, [R4]
162DF2:  LDRD.W          R2, R1, [R4,#4]
162DF6:  ANDS.W          R3, R0, #1
162DFA:  ITT EQ
162DFC:  ADDEQ           R1, R4, #1; text
162DFE:  LSREQ           R2, R0, #1
162E00:  MOV             R0, R8; int
162E02:  BL              sub_ED4F8
162E06:  ADD             R0, SP, #0x70+var_4C
162E08:  BL              sub_F0720
162E0C:  ADD             SP, SP, #0x54 ; 'T'
162E0E:  POP.W           {R8-R11}
162E12:  POP             {R4-R7,PC}
