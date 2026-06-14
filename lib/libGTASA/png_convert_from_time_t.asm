; =========================================================
; Game Engine Function: png_convert_from_time_t
; Address            : 0x203FC8 - 0x203FFA
; =========================================================

203FC8:  PUSH            {R4,R6,R7,LR}
203FCA:  ADD             R7, SP, #8
203FCC:  SUB             SP, SP, #8
203FCE:  MOV             R4, R0
203FD0:  ADD             R0, SP, #0x10+timer; timer
203FD2:  STR             R1, [SP,#0x10+timer]
203FD4:  BLX             gmtime
203FD8:  LDR             R1, [R0,#0x14]
203FDA:  ADDW            R1, R1, #0x76C
203FDE:  STRH            R1, [R4]
203FE0:  LDR             R1, [R0,#0x10]
203FE2:  ADDS            R1, #1
203FE4:  STRB            R1, [R4,#2]
203FE6:  LDR             R1, [R0,#0xC]
203FE8:  STRB            R1, [R4,#3]
203FEA:  LDR             R1, [R0,#8]
203FEC:  STRB            R1, [R4,#4]
203FEE:  LDR             R1, [R0,#4]
203FF0:  STRB            R1, [R4,#5]
203FF2:  LDR             R0, [R0]
203FF4:  STRB            R0, [R4,#6]
203FF6:  ADD             SP, SP, #8
203FF8:  POP             {R4,R6,R7,PC}
