; =========================================================
; Game Engine Function: sub_DCF8C
; Address            : 0xDCF8C - 0xDCFF0
; =========================================================

DCF8C:  PUSH            {R4,R5,R7,LR}
DCF8E:  ADD             R7, SP, #8
DCF90:  SUB             SP, SP, #0x18
DCF92:  MOV             R2, R1
DCF94:  LDR             R1, =(unk_91AF8 - 0xDCFA4)
DCF96:  ORR.W           R3, R2, #1
DCF9A:  MOV             R4, R0
DCF9C:  CLZ.W           R3, R3
DCFA0:  ADD             R1, PC; unk_91AF8
DCFA2:  EOR.W           R3, R3, #0x1F
DCFA6:  LDRD.W          R12, R5, [R0,#8]
DCFAA:  LDR.W           R0, [R1,R3,LSL#3]
DCFAE:  ADD.W           R1, R1, R3,LSL#3
DCFB2:  LDR             R3, [R1,#4]
DCFB4:  ADDS            R0, R0, R2
DCFB6:  ADC.W           R1, R12, R3
DCFBA:  ADC.W           R3, R3, #0
DCFBE:  CMP             R5, R1
DCFC0:  BCC             loc_DCFD4
DCFC2:  LDR             R5, [R4,#4]
DCFC4:  STR             R1, [R4,#8]
DCFC6:  CBZ             R5, loc_DCFD4
DCFC8:  ADD.W           R1, R5, R12
DCFCC:  ADD             R0, SP, #0x20+var_14
DCFCE:  BL              sub_DCEB4
DCFD2:  B               loc_DCFEA
DCFD4:  ADD             R5, SP, #0x20+var_14
DCFD6:  ADD             R0, SP, #0x20+var_1C
DCFD8:  MOV             R1, R5
DCFDA:  BL              sub_DCEB4
DCFDE:  LDR             R1, [SP,#0x20+var_18]
DCFE0:  MOV             R0, R5
DCFE2:  MOV             R2, R4
DCFE4:  BL              sub_DCF1C
DCFE8:  MOV             R4, R0
DCFEA:  MOV             R0, R4
DCFEC:  ADD             SP, SP, #0x18
DCFEE:  POP             {R4,R5,R7,PC}
