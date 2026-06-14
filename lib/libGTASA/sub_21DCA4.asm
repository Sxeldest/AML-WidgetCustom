; =========================================================
; Game Engine Function: sub_21DCA4
; Address            : 0x21DCA4 - 0x21DCDE
; =========================================================

21DCA4:  PUSH            {R4,R6,R7,LR}
21DCA6:  ADD             R7, SP, #8
21DCA8:  LDR             R1, =(dword_6BD638 - 0x21DCB4)
21DCAA:  MOVS            R2, #0
21DCAC:  LDR.W           R12, =(loc_21EBCC+1 - 0x21DCBC)
21DCB0:  ADD             R1, PC; dword_6BD638
21DCB2:  LDR.W           LR, =(loc_21EBA0+1 - 0x21DCC0)
21DCB6:  LDR             R4, =(sub_21E95C+1 - 0x21DCC2)
21DCB8:  ADD             R12, PC; loc_21EBCC
21DCBA:  LDR             R1, [R1]
21DCBC:  ADD             LR, PC; loc_21EBA0
21DCBE:  ADD             R4, PC; sub_21E95C
21DCC0:  STR             R2, [R0,R1]
21DCC2:  ADD             R1, R0
21DCC4:  STRD.W          R2, R2, [R1,#4]
21DCC8:  LDR             R3, [R0,#0x18]
21DCCA:  STR             R3, [R1,#0x10]
21DCCC:  LDR             R3, [R0,#0x1C]
21DCCE:  STR             R3, [R1,#0x14]
21DCD0:  LDR             R3, [R0,#0x10]
21DCD2:  STR             R3, [R1,#0x18]
21DCD4:  STRD.W          LR, R12, [R0,#0x18]
21DCD8:  STR             R4, [R0,#0x10]
21DCDA:  STR             R2, [R1,#0xC]
21DCDC:  POP             {R4,R6,R7,PC}
