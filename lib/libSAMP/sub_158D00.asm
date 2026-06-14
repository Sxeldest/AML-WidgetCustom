; =========================================================
; Game Engine Function: sub_158D00
; Address            : 0x158D00 - 0x158D16
; =========================================================

158D00:  PUSH            {R7,LR}
158D02:  MOV             R7, SP
158D04:  LDR             R0, [R0,#8]
158D06:  BL              sub_164BBC
158D0A:  SUBS            R1, R0, #1
158D0C:  MOVS            R0, #0
158D0E:  CMP             R1, #2
158D10:  IT CC
158D12:  MOVCC           R0, #1
158D14:  POP             {R7,PC}
