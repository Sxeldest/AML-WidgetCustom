; =========================================================
; Game Engine Function: sub_21CBF0
; Address            : 0x21CBF0 - 0x21CC1C
; =========================================================

21CBF0:  PUSH            {R4,R5,R7,LR}
21CBF2:  ADD             R7, SP, #8
21CBF4:  MOV             R4, R1
21CBF6:  LDR             R1, =(aEnableIf - 0x21CC00); " [enable_if:" ...
21CBF8:  MOV             R5, R0
21CBFA:  MOV             R0, R4
21CBFC:  ADD             R1, PC; " [enable_if:"
21CBFE:  ADD.W           R2, R1, #0xC
21CC02:  BL              sub_216F98
21CC06:  ADD.W           R0, R5, #8
21CC0A:  MOV             R1, R4
21CC0C:  BL              sub_21AC38
21CC10:  MOV             R0, R4
21CC12:  MOVS            R1, #0x5D ; ']'
21CC14:  POP.W           {R4,R5,R7,LR}
21CC18:  B.W             sub_2154F2
