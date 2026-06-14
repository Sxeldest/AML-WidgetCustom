; =========================================================
; Game Engine Function: sub_143A60
; Address            : 0x143A60 - 0x143AB2
; =========================================================

143A60:  PUSH            {R7,LR}
143A62:  MOV             R7, SP
143A64:  SUB             SP, SP, #8
143A66:  MOV             R0, R1; int
143A68:  MOVS            R1, #0
143A6A:  STRB.W          R1, [R7,#-1]
143A6E:  SUBS            R1, R7, #1; int
143A70:  MOVS            R2, #8
143A72:  MOVS            R3, #1
143A74:  BL              sub_17D786
143A78:  LDR             R0, =(off_2349A8 - 0x143A7E)
143A7A:  ADD             R0, PC; off_2349A8
143A7C:  LDR             R0, [R0]; dword_381BF4
143A7E:  LDR             R0, [R0]
143A80:  LDRB.W          R1, [R0,#0x84]
143A84:  CBZ             R1, loc_143A96
143A86:  LDRB.W          R1, [R7,#-1]
143A8A:  CMP             R1, #0
143A8C:  IT NE
143A8E:  MOVNE           R1, #1
143A90:  BL              sub_17CA90
143A94:  B               loc_143AAE
143A96:  LDR             R0, =(off_234A24 - 0x143AA0)
143A98:  LDRB.W          R1, [R7,#-1]
143A9C:  ADD             R0, PC; off_234A24
143A9E:  CMP             R1, #0
143AA0:  LDR             R0, [R0]; dword_23DEEC
143AA2:  LDR             R0, [R0]
143AA4:  LDR             R0, [R0,#0x68]
143AA6:  IT NE
143AA8:  MOVNE           R1, #1
143AAA:  BL              sub_13A160
143AAE:  ADD             SP, SP, #8
143AB0:  POP             {R7,PC}
