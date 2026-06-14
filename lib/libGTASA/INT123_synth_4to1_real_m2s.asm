; =========================================================
; Game Engine Function: INT123_synth_4to1_real_m2s
; Address            : 0x238E56 - 0x238EC2
; =========================================================

238E56:  PUSH            {R4-R7,LR}
238E58:  ADD             R7, SP, #0xC
238E5A:  PUSH.W          {R11}
238E5E:  MOV             R4, R1
238E60:  MOVW            R1, #0xB2A0
238E64:  LDR             R6, [R4,R1]
238E66:  MOVW            R1, #0x91BC
238E6A:  LDR             R5, [R4,R1]
238E6C:  MOVS            R1, #0
238E6E:  MOV             R2, R4
238E70:  MOVS            R3, #1
238E72:  BLX             R5
238E74:  MOVW            R1, #0xB2A8
238E78:  LDR             R1, [R4,R1]
238E7A:  ADD             R1, R6
238E7C:  VLDR            D16, [R1,#-0x80]
238E80:  VLDR            D17, [R1,#-0x70]
238E84:  VLDR            D18, [R1,#-0x60]
238E88:  VLDR            D19, [R1,#-0x50]
238E8C:  VLDR            D20, [R1,#-0x10]
238E90:  VLDR            D21, [R1,#-0x20]
238E94:  VLDR            D22, [R1,#-0x30]
238E98:  VLDR            D23, [R1,#-0x40]
238E9C:  VSTR            D16, [R1,#-0x78]
238EA0:  VSTR            D17, [R1,#-0x68]
238EA4:  VSTR            D18, [R1,#-0x58]
238EA8:  VSTR            D19, [R1,#-0x48]
238EAC:  VSTR            D23, [R1,#-0x38]
238EB0:  VSTR            D22, [R1,#-0x28]
238EB4:  VSTR            D21, [R1,#-0x18]
238EB8:  VSTR            D20, [R1,#-8]
238EBC:  POP.W           {R11}
238EC0:  POP             {R4-R7,PC}
