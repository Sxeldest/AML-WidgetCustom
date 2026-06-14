; =========================================================
; Game Engine Function: sub_134B6C
; Address            : 0x134B6C - 0x134BA0
; =========================================================

134B6C:  PUSH            {R4,R6,R7,LR}
134B6E:  ADD             R7, SP, #8
134B70:  LDR             R4, [R0,#4]
134B72:  LDRB.W          R0, [R4,#0x50]
134B76:  CBZ             R0, loc_134B82
134B78:  LDR             R0, [R4]
134B7A:  MOVS            R1, #0
134B7C:  LDR             R2, [R0,#0x24]
134B7E:  MOV             R0, R4
134B80:  BLX             R2
134B82:  LDR             R0, =(off_23496C - 0x134B8E)
134B84:  MOVS            R1, #0
134B86:  STRB.W          R1, [R4,#0x50]
134B8A:  ADD             R0, PC; off_23496C
134B8C:  LDR             R0, [R0]; dword_23DEF4
134B8E:  LDR             R0, [R0]
134B90:  CBZ             R0, locret_134B9E
134B92:  LDR             R1, =(aReport - 0x134B98); "/report" ...
134B94:  ADD             R1, PC; "/report"
134B96:  POP.W           {R4,R6,R7,LR}
134B9A:  B.W             sub_144460
134B9E:  POP             {R4,R6,R7,PC}
