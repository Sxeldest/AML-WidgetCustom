; =========================================================
; Game Engine Function: sub_126FA8
; Address            : 0x126FA8 - 0x127030
; =========================================================

126FA8:  PUSH            {R4-R7,LR}
126FAA:  ADD             R7, SP, #0xC
126FAC:  PUSH.W          {R8,R9,R11}
126FB0:  SUB             SP, SP, #0x30
126FB2:  MOV             R8, R0
126FB4:  ADD             R0, SP, #0x48+var_24
126FB6:  MOV             R6, R3
126FB8:  MOV             R5, R2
126FBA:  MOV             R9, R1
126FBC:  BL              sub_F06B2
126FC0:  BL              sub_F0734
126FC4:  MOV             R4, R0
126FC6:  LDRB            R0, [R0]
126FC8:  LSLS            R0, R0, #0x1F
126FCA:  BNE             loc_126FD2
126FCC:  MOVS            R0, #0
126FCE:  STRH            R0, [R4]
126FD0:  B               loc_126FE2
126FD2:  LDR             R0, [R4,#8]
126FD4:  MOVS            R1, #0
126FD6:  STRB            R1, [R0]
126FD8:  LDRB            R2, [R4]
126FDA:  LDR             R0, [R4]
126FDC:  STR             R1, [R4,#4]
126FDE:  LSLS            R1, R2, #0x1F
126FE0:  BNE             loc_126FE6
126FE2:  MOVS            R2, #9
126FE4:  B               loc_126FEC
126FE6:  SUBS            R0, #2
126FE8:  BIC.W           R2, R0, #1
126FEC:  LDR             R0, [R6]
126FEE:  MOVS            R1, #0
126FF0:  STRD.W          R0, R1, [SP,#0x48+var_20]
126FF4:  ADD             R0, SP, #0x48+var_20
126FF6:  MOVS            R3, #1
126FF8:  STRD.W          R0, R1, [SP,#0x48+var_38]
126FFC:  ADD             R0, SP, #0x48+var_2C
126FFE:  STRD.W          R3, R1, [SP,#0x48+var_40]
127002:  MOV             R1, R4
127004:  MOV             R3, R9
127006:  STR             R5, [SP,#0x48+var_48]
127008:  BL              sub_DCA40
12700C:  LDRB            R0, [R4]
12700E:  LDRD.W          R2, R1, [R4,#4]
127012:  ANDS.W          R3, R0, #1
127016:  ITT EQ
127018:  ADDEQ           R1, R4, #1; text
12701A:  LSREQ           R2, R0, #1
12701C:  MOV             R0, R8; int
12701E:  BL              sub_ED4F8
127022:  ADD             R0, SP, #0x48+var_24
127024:  BL              sub_F0720
127028:  ADD             SP, SP, #0x30 ; '0'
12702A:  POP.W           {R8,R9,R11}
12702E:  POP             {R4-R7,PC}
