; =========================================================
; Game Engine Function: sub_97A54
; Address            : 0x97A54 - 0x97B5E
; =========================================================

97A54:  PUSH            {R4-R7,LR}
97A56:  ADD             R7, SP, #0xC
97A58:  PUSH.W          {R8-R10}
97A5C:  SUB             SP, SP, #8
97A5E:  LDR             R4, =(dword_1ACF68 - 0x97A68)
97A60:  MOVW            R1, #0x19AC
97A64:  ADD             R4, PC; dword_1ACF68
97A66:  LDR.W           R12, [R4]
97A6A:  MOV             R10, R4
97A6C:  LDR.W           R9, [R12,R1]
97A70:  LDR.W           LR, [R9,#0x1C4]
97A74:  LDR.W           R8, [R9,#0x1CC]
97A78:  ADD.W           R2, R8, LR,LSL#2
97A7C:  LDR.W           R3, [R2,#-4]
97A80:  LDRB            R2, [R0]
97A82:  MVNS            R6, R3
97A84:  CBZ             R2, loc_97ABA
97A86:  LDR             R4, =(unk_52D88 - 0x97A90)
97A88:  ADDS            R0, #1
97A8A:  MOV             R3, R6
97A8C:  ADD             R4, PC; unk_52D88
97A8E:  B               loc_97AA0
97A90:  UXTB            R1, R3
97A92:  ADDS            R0, #1
97A94:  EORS            R1, R5
97A96:  LDR.W           R1, [R4,R1,LSL#2]
97A9A:  EOR.W           R3, R1, R3,LSR#8
97A9E:  CBZ             R2, loc_97ABC
97AA0:  MOV             R5, R2
97AA2:  LDRB            R2, [R0]
97AA4:  CMP             R5, #0x23 ; '#'
97AA6:  IT EQ
97AA8:  CMPEQ           R2, #0x23 ; '#'
97AAA:  BNE             loc_97A90
97AAC:  LDRB            R2, [R0,#1]
97AAE:  CMP             R2, #0x23 ; '#'
97AB0:  MOV.W           R2, #0x23 ; '#'
97AB4:  IT EQ
97AB6:  MOVEQ           R3, R6
97AB8:  B               loc_97A90
97ABA:  MOV             R3, R6
97ABC:  LDR.W           R0, [R9,#0x1C8]
97AC0:  MVNS            R1, R3
97AC2:  STR             R1, [SP,#0x20+var_1C]
97AC4:  CMP             LR, R0
97AC6:  BNE             loc_97B46
97AC8:  CMP.W           LR, #0
97ACC:  ADD.W           R6, LR, #1
97AD0:  ITTE NE
97AD2:  ADDNE.W         R0, LR, LR,LSR#31
97AD6:  ADDNE.W         R0, LR, R0,ASR#1
97ADA:  MOVEQ           R0, #8
97ADC:  CMP             R0, R6
97ADE:  IT GT
97AE0:  MOVGT           R6, R0
97AE2:  CMP             LR, R6
97AE4:  BGE             loc_97B46
97AE6:  CMP.W           R12, #0
97AEA:  ITTT NE
97AEC:  LDRNE.W         R1, [R12,#0x370]
97AF0:  ADDNE           R1, #1
97AF2:  STRNE.W         R1, [R12,#0x370]
97AF6:  LDR             R4, =(dword_1ACF70 - 0x97B00)
97AF8:  LSLS            R0, R6, #2
97AFA:  LDR             R2, =(off_117248 - 0x97B02)
97AFC:  ADD             R4, PC; dword_1ACF70
97AFE:  ADD             R2, PC; off_117248
97B00:  LDR             R1, [R4]
97B02:  LDR             R2, [R2]; sub_9A720
97B04:  BLX             R2; sub_9A720
97B06:  LDR.W           R1, [R9,#0x1CC]; src
97B0A:  MOV             R8, R0
97B0C:  CBZ             R1, loc_97B3E
97B0E:  LDR.W           R0, [R9,#0x1C4]
97B12:  LSLS            R2, R0, #2; n
97B14:  MOV             R0, R8; dest
97B16:  BLX             j_memcpy
97B1A:  LDR.W           R0, [R9,#0x1CC]
97B1E:  CMP             R0, #0
97B20:  ITTTT NE
97B22:  LDRNE.W         R1, [R10]
97B26:  CMPNE           R1, #0
97B28:  LDRNE.W         R2, [R1,#0x370]
97B2C:  SUBNE           R2, #1
97B2E:  IT NE
97B30:  STRNE.W         R2, [R1,#0x370]
97B34:  LDR             R2, =(off_11724C - 0x97B3C)
97B36:  LDR             R1, [R4]
97B38:  ADD             R2, PC; off_11724C
97B3A:  LDR             R2, [R2]; j_opus_decoder_destroy_0
97B3C:  BLX             R2; j_opus_decoder_destroy_0
97B3E:  LDR.W           LR, [R9,#0x1C4]
97B42:  STRD.W          R6, R8, [R9,#0x1C8]
97B46:  LDR             R0, [SP,#0x20+var_1C]
97B48:  STR.W           R0, [R8,LR,LSL#2]
97B4C:  LDR.W           R0, [R9,#0x1C4]
97B50:  ADDS            R0, #1
97B52:  STR.W           R0, [R9,#0x1C4]
97B56:  ADD             SP, SP, #8
97B58:  POP.W           {R8-R10}
97B5C:  POP             {R4-R7,PC}
