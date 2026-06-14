; =========================================================
; Game Engine Function: sub_970FC
; Address            : 0x970FC - 0x971D8
; =========================================================

970FC:  PUSH            {R4-R7,LR}
970FE:  ADD             R7, SP, #0xC
97100:  PUSH.W          {R8-R10}
97104:  LDR             R3, =(dword_1ACF68 - 0x97112)
97106:  VMOV            S0, R0
9710A:  MOVW            R1, #0x19AC
9710E:  ADD             R3, PC; dword_1ACF68
97110:  VCMP.F32        S0, #0.0
97114:  VMRS            APSR_nzcv, FPSCR
97118:  LDR             R2, [R3]
9711A:  ADD.W           R5, R2, R1
9711E:  LDR             R6, [R2,R1]
97120:  IT EQ
97122:  VLDREQ          S0, [R6,#0x234]
97126:  LDRD.W          R0, R1, [R6,#0x184]
9712A:  CMP             R0, R1
9712C:  VSTR            S0, [R6,#0x170]
97130:  BNE             loc_971B0
97132:  CMP             R0, #0
97134:  ADD.W           R4, R0, #1
97138:  ITTE NE
9713A:  ADDNE.W         R1, R0, R0,LSR#31
9713E:  ADDNE.W         R1, R0, R1,ASR#1
97142:  MOVEQ           R1, #8
97144:  CMP             R1, R4
97146:  IT GT
97148:  MOVGT           R4, R1
9714A:  CMP             R0, R4
9714C:  BGE             loc_971B0
9714E:  LDR             R0, =(off_117248 - 0x97158)
97150:  MOV             R9, R3
97152:  LDR             R1, =(dword_1ACF70 - 0x9715E)
97154:  ADD             R0, PC; off_117248
97156:  LDR.W           R3, [R2,#0x370]
9715A:  ADD             R1, PC; dword_1ACF70
9715C:  LDR.W           R12, [R0]; sub_9A720
97160:  ADDS            R0, R3, #1
97162:  MOV             R10, R1
97164:  LDR             R1, [R1]
97166:  STR.W           R0, [R2,#0x370]
9716A:  LSLS            R0, R4, #2
9716C:  BLX             R12; sub_9A720
9716E:  LDR.W           R1, [R6,#0x18C]; src
97172:  MOV             R8, R0
97174:  CBZ             R1, loc_971A8
97176:  LDR.W           R0, [R6,#0x184]
9717A:  LSLS            R2, R0, #2; n
9717C:  MOV             R0, R8; dest
9717E:  BLX             j_memcpy
97182:  LDR.W           R0, [R6,#0x18C]
97186:  CMP             R0, #0
97188:  ITTTT NE
9718A:  LDRNE.W         R1, [R9]
9718E:  CMPNE           R1, #0
97190:  LDRNE.W         R2, [R1,#0x370]
97194:  SUBNE           R2, #1
97196:  IT NE
97198:  STRNE.W         R2, [R1,#0x370]
9719C:  LDR             R2, =(off_11724C - 0x971A6)
9719E:  LDR.W           R1, [R10]
971A2:  ADD             R2, PC; off_11724C
971A4:  LDR             R2, [R2]; j_opus_decoder_destroy_0
971A6:  BLX             R2; j_opus_decoder_destroy_0
971A8:  LDR.W           R0, [R6,#0x184]
971AC:  STRD.W          R4, R8, [R6,#0x188]
971B0:  LDR.W           R2, [R6,#0x18C]
971B4:  LDR.W           R1, [R6,#0x170]
971B8:  STR.W           R1, [R2,R0,LSL#2]
971BC:  LDR.W           R0, [R6,#0x184]
971C0:  LDR.W           R1, [R5,#0xBC]
971C4:  ADDS            R0, #1
971C6:  STR.W           R0, [R6,#0x184]
971CA:  BIC.W           R0, R1, #1
971CE:  STR.W           R0, [R5,#0xBC]
971D2:  POP.W           {R8-R10}
971D6:  POP             {R4-R7,PC}
