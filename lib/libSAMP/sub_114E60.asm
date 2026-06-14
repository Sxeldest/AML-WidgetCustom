; =========================================================
; Game Engine Function: sub_114E60
; Address            : 0x114E60 - 0x114ED4
; =========================================================

114E60:  PUSH            {R4,R5,R7,LR}
114E62:  ADD             R7, SP, #8
114E64:  MOV             R4, R1
114E66:  MOV             R5, R0
114E68:  LDR             R0, =(unk_B50FC - 0x114E78)
114E6A:  VMOV.F32        S0, #1.0
114E6E:  LDR             R1, =(unk_B50EC - 0x114E7C)
114E70:  CMP             R4, #0
114E72:  LDR             R2, =(unk_B510C - 0x114E88)
114E74:  ADD             R0, PC; unk_B50FC
114E76:  LDR             R3, =(unk_B511C - 0x114E86)
114E78:  ADD             R1, PC; unk_B50EC
114E7A:  IT EQ
114E7C:  MOVEQ           R1, R0
114E7E:  VLD1.32         {D16-D17}, [R1]
114E82:  ADD             R3, PC; unk_B511C
114E84:  ADD             R2, PC; unk_B510C
114E86:  VLDR            S2, =1.4142
114E8A:  ITT NE
114E8C:  MOVNE           R3, R2
114E8E:  VMOVNE.F32      S0, S2
114E92:  ADD.W           R1, R5, #0x10
114E96:  VLD1.32         {D18-D19}, [R3]
114E9A:  MOVS            R2, #0x18
114E9C:  VST1.32         {D16-D17}, [R1]!
114EA0:  LDR             R0, [R5,#0x50]
114EA2:  VST1.32         {D18-D19}, [R1],R2
114EA6:  VSTR            S0, [R1]
114EAA:  CBZ             R0, loc_114EC8
114EAC:  LDR             R2, =(aHudTicks - 0x114EB8); "hud_ticks" ...
114EAE:  ADDS            R0, #8
114EB0:  LDR             R1, =(aSquaretick - 0x114EBA); "SquareTick" ...
114EB2:  CMP             R4, #0
114EB4:  ADD             R2, PC; "hud_ticks"
114EB6:  ADD             R1, PC; "SquareTick"
114EB8:  IT EQ
114EBA:  MOVEQ           R1, R2
114EBC:  BL              sub_163C24
114EC0:  LDR             R0, [R5,#0x50]
114EC2:  STRB.W          R4, [R0,#0x20]
114EC6:  B               loc_114ECE
114EC8:  MOVS            R0, #1
114ECA:  STRB.W          R0, [R5,#0x54]
114ECE:  STRB.W          R4, [R5,#0x55]
114ED2:  POP             {R4,R5,R7,PC}
