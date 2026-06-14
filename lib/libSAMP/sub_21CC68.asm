; =========================================================
; Game Engine Function: sub_21CC68
; Address            : 0x21CC68 - 0x21CD08
; =========================================================

21CC68:  PUSH            {R4,R5,R7,LR}
21CC6A:  ADD             R7, SP, #8
21CC6C:  MOV             R4, R1
21CC6E:  LDR             R1, =(aQjk+6 - 0x21CC78); "(" ...
21CC70:  MOV             R5, R0
21CC72:  MOV             R0, R4
21CC74:  ADD             R1, PC; "("
21CC76:  ADDS            R2, R1, #1
21CC78:  BL              sub_216F98
21CC7C:  ADD.W           R0, R5, #0x10
21CC80:  MOV             R1, R4
21CC82:  BL              sub_21AC38
21CC86:  LDR             R1, =(unk_901C1 - 0x21CC8E)
21CC88:  MOV             R0, R4
21CC8A:  ADD             R1, PC; unk_901C1
21CC8C:  ADDS            R2, R1, #1
21CC8E:  BL              sub_216F98
21CC92:  LDR             R0, [R5,#8]
21CC94:  CBZ             R0, loc_21CC9E
21CC96:  LDR             R1, [R0]
21CC98:  LDR             R2, [R1,#0x14]
21CC9A:  MOV             R1, R4
21CC9C:  BLX             R2
21CC9E:  LDR             R0, [R5,#0x1C]
21CCA0:  LSLS            R1, R0, #0x1F
21CCA2:  BEQ             loc_21CCB2
21CCA4:  LDR             R1, =(aConst - 0x21CCAC); " const" ...
21CCA6:  MOV             R0, R4
21CCA8:  ADD             R1, PC; " const"
21CCAA:  ADDS            R2, R1, #6
21CCAC:  BL              sub_216F98
21CCB0:  LDR             R0, [R5,#0x1C]
21CCB2:  LSLS            R1, R0, #0x1E
21CCB4:  BPL             loc_21CCC6
21CCB6:  LDR             R1, =(aVolatile - 0x21CCBE); " volatile" ...
21CCB8:  MOV             R0, R4
21CCBA:  ADD             R1, PC; " volatile"
21CCBC:  ADD.W           R2, R1, #9
21CCC0:  BL              sub_216F98
21CCC4:  LDR             R0, [R5,#0x1C]
21CCC6:  LSLS            R0, R0, #0x1D
21CCC8:  BPL             loc_21CCD8
21CCCA:  LDR             R1, =(aRestrict - 0x21CCD2); " restrict" ...
21CCCC:  MOV             R0, R4
21CCCE:  ADD             R1, PC; " restrict"
21CCD0:  ADD.W           R2, R1, #9
21CCD4:  BL              sub_216F98
21CCD8:  LDRB.W          R0, [R5,#0x20]
21CCDC:  CMP             R0, #1
21CCDE:  BEQ             loc_21CCEC
21CCE0:  CMP             R0, #2
21CCE2:  BNE             loc_21CCF8
21CCE4:  LDR             R1, =(asc_8B00E - 0x21CCEA); " &&" ...
21CCE6:  ADD             R1, PC; " &&"
21CCE8:  ADDS            R2, R1, #3
21CCEA:  B               loc_21CCF2
21CCEC:  LDR             R1, =(asc_8CCDA - 0x21CCF2); " &" ...
21CCEE:  ADD             R1, PC; " &"
21CCF0:  ADDS            R2, R1, #2
21CCF2:  MOV             R0, R4
21CCF4:  BL              sub_216F98
21CCF8:  LDR             R0, [R5,#0x18]
21CCFA:  CBZ             R0, locret_21CD06
21CCFC:  MOV             R1, R4
21CCFE:  POP.W           {R4,R5,R7,LR}
21CD02:  B.W             sub_2154CC
21CD06:  POP             {R4,R5,R7,PC}
