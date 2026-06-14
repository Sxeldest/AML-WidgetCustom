; =========================================================
; Game Engine Function: sub_9AE60
; Address            : 0x9AE60 - 0x9AF2E
; =========================================================

9AE60:  PUSH            {R4-R7,LR}
9AE62:  ADD             R7, SP, #0xC
9AE64:  PUSH.W          {R8-R11}
9AE68:  SUB             SP, SP, #4
9AE6A:  MOV             R4, R0
9AE6C:  MOV             R8, R2
9AE6E:  LDR             R6, [R4,#8]
9AE70:  LDRD.W          R2, R0, [R0]
9AE74:  SUBS            R1, R1, R6
9AE76:  CMP             R2, R0
9AE78:  MOV.W           R5, R1,ASR#2
9AE7C:  BNE             loc_9AEFE
9AE7E:  CMP             R2, #0
9AE80:  ADD.W           R9, R2, #1
9AE84:  ITTE NE
9AE86:  ADDNE.W         R0, R2, R2,LSR#31
9AE8A:  ADDNE.W         R0, R2, R0,ASR#1
9AE8E:  MOVEQ           R0, #8
9AE90:  CMP             R0, R9
9AE92:  IT GT
9AE94:  MOVGT           R9, R0
9AE96:  CMP             R2, R9
9AE98:  BGE             loc_9AEFE
9AE9A:  LDR             R0, =(dword_1ACF68 - 0x9AEA0)
9AE9C:  ADD             R0, PC; dword_1ACF68
9AE9E:  LDR             R1, [R0]
9AEA0:  MOV             R10, R0
9AEA2:  MOV.W           R0, R9,LSL#2
9AEA6:  CMP             R1, #0
9AEA8:  ITTT NE
9AEAA:  LDRNE.W         R2, [R1,#0x370]
9AEAE:  ADDNE           R2, #1
9AEB0:  STRNE.W         R2, [R1,#0x370]
9AEB4:  LDR             R1, =(dword_1ACF70 - 0x9AEBC)
9AEB6:  LDR             R2, =(off_117248 - 0x9AEBE)
9AEB8:  ADD             R1, PC; dword_1ACF70
9AEBA:  ADD             R2, PC; off_117248
9AEBC:  MOV             R11, R1
9AEBE:  LDR             R1, [R1]
9AEC0:  LDR             R2, [R2]; sub_9A720
9AEC2:  BLX             R2; sub_9A720
9AEC4:  LDR             R1, [R4,#8]; src
9AEC6:  MOV             R6, R0
9AEC8:  CBZ             R1, loc_9AEF8
9AECA:  LDR             R0, [R4]
9AECC:  LSLS            R2, R0, #2; n
9AECE:  MOV             R0, R6; dest
9AED0:  BLX             j_memcpy
9AED4:  LDR             R0, [R4,#8]
9AED6:  CMP             R0, #0
9AED8:  ITTTT NE
9AEDA:  LDRNE.W         R1, [R10]
9AEDE:  CMPNE           R1, #0
9AEE0:  LDRNE.W         R2, [R1,#0x370]
9AEE4:  SUBNE           R2, #1
9AEE6:  IT NE
9AEE8:  STRNE.W         R2, [R1,#0x370]
9AEEC:  LDR             R2, =(off_11724C - 0x9AEF6)
9AEEE:  LDR.W           R1, [R11]
9AEF2:  ADD             R2, PC; off_11724C
9AEF4:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9AEF6:  BLX             R2; j_opus_decoder_destroy_0
9AEF8:  LDR             R2, [R4]
9AEFA:  STRD.W          R9, R6, [R4,#4]
9AEFE:  CMP             R2, R5
9AF00:  BLE             loc_9AF12
9AF02:  SUBS            R2, R2, R5
9AF04:  ADD.W           R1, R6, R5,LSL#2; src
9AF08:  ADDS            R0, R1, #4; dest
9AF0A:  LSLS            R2, R2, #2; n
9AF0C:  BLX             j_memmove
9AF10:  LDR             R6, [R4,#8]
9AF12:  LDR.W           R0, [R8]
9AF16:  STR.W           R0, [R6,R5,LSL#2]
9AF1A:  LDR             R0, [R4]
9AF1C:  LDR             R1, [R4,#8]
9AF1E:  ADDS            R0, #1
9AF20:  STR             R0, [R4]
9AF22:  ADD.W           R0, R1, R5,LSL#2
9AF26:  ADD             SP, SP, #4
9AF28:  POP.W           {R8-R11}
9AF2C:  POP             {R4-R7,PC}
