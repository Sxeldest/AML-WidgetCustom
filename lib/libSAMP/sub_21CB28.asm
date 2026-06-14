; =========================================================
; Game Engine Function: sub_21CB28
; Address            : 0x21CB28 - 0x21CB72
; =========================================================

21CB28:  PUSH            {R4,R5,R7,LR}
21CB2A:  ADD             R7, SP, #8
21CB2C:  MOV             R4, R1
21CB2E:  LDR             R1, =(unk_82C59 - 0x21CB38)
21CB30:  MOV             R5, R0
21CB32:  MOV             R0, R4
21CB34:  ADD             R1, PC; unk_82C59
21CB36:  ADDS            R2, R1, #1
21CB38:  BL              sub_216F98
21CB3C:  ADD.W           R0, R5, #8
21CB40:  MOV             R1, R4
21CB42:  BL              sub_21AC38
21CB46:  LDR             R0, [R4,#4]
21CB48:  CBZ             R0, loc_21CB62
21CB4A:  LDR             R1, [R4]
21CB4C:  ADD             R0, R1
21CB4E:  LDRB.W          R0, [R0,#-1]
21CB52:  CMP             R0, #0x3E ; '>'
21CB54:  BNE             loc_21CB62
21CB56:  LDR             R1, =(asc_84C32 - 0x21CB5E); " " ...
21CB58:  MOV             R0, R4
21CB5A:  ADD             R1, PC; " "
21CB5C:  ADDS            R2, R1, #1
21CB5E:  BL              sub_216F98
21CB62:  LDR             R1, =(aW7+6 - 0x21CB6A); ">" ...
21CB64:  MOV             R0, R4
21CB66:  ADD             R1, PC; ">"
21CB68:  ADDS            R2, R1, #1
21CB6A:  POP.W           {R4,R5,R7,LR}
21CB6E:  B.W             sub_216F98
