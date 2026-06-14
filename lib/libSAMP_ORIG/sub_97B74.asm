; =========================================================
; Game Engine Function: sub_97B74
; Address            : 0x97B74 - 0x97C7A
; =========================================================

97B74:  PUSH            {R4-R7,LR}
97B76:  ADD             R7, SP, #0xC
97B78:  PUSH.W          {R8,R9,R11}
97B7C:  SUB             SP, SP, #8
97B7E:  LDR             R6, =(dword_1ACF68 - 0x97B88)
97B80:  MOVW            R1, #0x19AC
97B84:  ADD             R6, PC; dword_1ACF68
97B86:  LDR.W           R12, [R6]
97B8A:  LDR.W           R5, [R12,R1]
97B8E:  LDRD.W          R1, LR, [R5,#0x1C4]
97B92:  LDR.W           R8, [R5,#0x1CC]
97B96:  CMP             R1, LR
97B98:  ADD.W           R3, R8, R1,LSL#2
97B9C:  LDR.W           R2, [R3,#-4]
97BA0:  LDR             R3, =(unk_52D88 - 0x97BAE)
97BA2:  MVN.W           R2, R2
97BA6:  EOR.W           R4, R2, R0
97BAA:  ADD             R3, PC; unk_52D88
97BAC:  UXTB            R4, R4
97BAE:  LDR.W           R4, [R3,R4,LSL#2]
97BB2:  EOR.W           R2, R4, R2,LSR#8
97BB6:  EOR.W           R4, R2, R0,LSR#8
97BBA:  UXTB            R4, R4
97BBC:  LDR.W           R4, [R3,R4,LSL#2]
97BC0:  EOR.W           R2, R4, R2,LSR#8
97BC4:  EOR.W           R4, R2, R0,LSR#16
97BC8:  UXTB            R4, R4
97BCA:  LDR.W           R4, [R3,R4,LSL#2]
97BCE:  EOR.W           R2, R4, R2,LSR#8
97BD2:  UXTB            R4, R2
97BD4:  EOR.W           R0, R4, R0,LSR#24
97BD8:  LDR.W           R0, [R3,R0,LSL#2]
97BDC:  EOR.W           R0, R0, R2,LSR#8
97BE0:  MVN.W           R0, R0
97BE4:  STR             R0, [SP,#0x20+var_1C]
97BE6:  BNE             loc_97C62
97BE8:  MOV             R4, R6
97BEA:  CMP             R1, #0
97BEC:  ADD.W           R6, R1, #1
97BF0:  ITTE NE
97BF2:  ADDNE.W         R0, R1, R1,LSR#31
97BF6:  ADDNE.W         R0, R1, R0,ASR#1
97BFA:  MOVEQ           R0, #8
97BFC:  CMP             R0, R6
97BFE:  IT GT
97C00:  MOVGT           R6, R0
97C02:  CMP             R1, R6
97C04:  BGE             loc_97C62
97C06:  LDR             R0, =(off_117248 - 0x97C0E)
97C08:  LDR             R1, =(dword_1ACF70 - 0x97C14)
97C0A:  ADD             R0, PC; off_117248
97C0C:  LDR.W           R2, [R12,#0x370]
97C10:  ADD             R1, PC; dword_1ACF70
97C12:  LDR             R3, [R0]; sub_9A720
97C14:  ADDS            R0, R2, #1
97C16:  MOV             R9, R1
97C18:  LDR             R1, [R1]
97C1A:  STR.W           R0, [R12,#0x370]
97C1E:  LSLS            R0, R6, #2
97C20:  BLX             R3; sub_9A720
97C22:  LDR.W           R1, [R5,#0x1CC]; src
97C26:  MOV             R8, R0
97C28:  CBZ             R1, loc_97C5A
97C2A:  LDR.W           R0, [R5,#0x1C4]
97C2E:  LSLS            R2, R0, #2; n
97C30:  MOV             R0, R8; dest
97C32:  BLX             j_memcpy
97C36:  LDR.W           R0, [R5,#0x1CC]
97C3A:  CMP             R0, #0
97C3C:  ITTTT NE
97C3E:  LDRNE           R1, [R4]
97C40:  CMPNE           R1, #0
97C42:  LDRNE.W         R2, [R1,#0x370]
97C46:  SUBNE           R2, #1
97C48:  IT NE
97C4A:  STRNE.W         R2, [R1,#0x370]
97C4E:  LDR             R2, =(off_11724C - 0x97C58)
97C50:  LDR.W           R1, [R9]
97C54:  ADD             R2, PC; off_11724C
97C56:  LDR             R2, [R2]; j_opus_decoder_destroy_0
97C58:  BLX             R2; j_opus_decoder_destroy_0
97C5A:  LDR.W           R1, [R5,#0x1C4]
97C5E:  STRD.W          R6, R8, [R5,#0x1C8]
97C62:  LDR             R0, [SP,#0x20+var_1C]
97C64:  STR.W           R0, [R8,R1,LSL#2]
97C68:  LDR.W           R0, [R5,#0x1C4]
97C6C:  ADDS            R0, #1
97C6E:  STR.W           R0, [R5,#0x1C4]
97C72:  ADD             SP, SP, #8
97C74:  POP.W           {R8,R9,R11}
97C78:  POP             {R4-R7,PC}
