; =========================================================
; Game Engine Function: sub_97C90
; Address            : 0x97C90 - 0x97D96
; =========================================================

97C90:  PUSH            {R4-R7,LR}
97C92:  ADD             R7, SP, #0xC
97C94:  PUSH.W          {R8,R9,R11}
97C98:  SUB             SP, SP, #8
97C9A:  LDR             R6, =(dword_1ACF68 - 0x97CA4)
97C9C:  MOVW            R1, #0x19AC
97CA0:  ADD             R6, PC; dword_1ACF68
97CA2:  LDR.W           R12, [R6]
97CA6:  LDR.W           R5, [R12,R1]
97CAA:  LDRD.W          R1, LR, [R5,#0x1C4]
97CAE:  LDR.W           R8, [R5,#0x1CC]
97CB2:  CMP             R1, LR
97CB4:  ADD.W           R3, R8, R1,LSL#2
97CB8:  LDR.W           R2, [R3,#-4]
97CBC:  LDR             R3, =(unk_52D88 - 0x97CCA)
97CBE:  MVN.W           R2, R2
97CC2:  EOR.W           R4, R2, R0
97CC6:  ADD             R3, PC; unk_52D88
97CC8:  UXTB            R4, R4
97CCA:  LDR.W           R4, [R3,R4,LSL#2]
97CCE:  EOR.W           R2, R4, R2,LSR#8
97CD2:  EOR.W           R4, R2, R0,LSR#8
97CD6:  UXTB            R4, R4
97CD8:  LDR.W           R4, [R3,R4,LSL#2]
97CDC:  EOR.W           R2, R4, R2,LSR#8
97CE0:  EOR.W           R4, R2, R0,LSR#16
97CE4:  UXTB            R4, R4
97CE6:  LDR.W           R4, [R3,R4,LSL#2]
97CEA:  EOR.W           R2, R4, R2,LSR#8
97CEE:  UXTB            R4, R2
97CF0:  EOR.W           R0, R4, R0,LSR#24
97CF4:  LDR.W           R0, [R3,R0,LSL#2]
97CF8:  EOR.W           R0, R0, R2,LSR#8
97CFC:  MVN.W           R0, R0
97D00:  STR             R0, [SP,#0x20+var_1C]
97D02:  BNE             loc_97D7E
97D04:  MOV             R4, R6
97D06:  CMP             R1, #0
97D08:  ADD.W           R6, R1, #1
97D0C:  ITTE NE
97D0E:  ADDNE.W         R0, R1, R1,LSR#31
97D12:  ADDNE.W         R0, R1, R0,ASR#1
97D16:  MOVEQ           R0, #8
97D18:  CMP             R0, R6
97D1A:  IT GT
97D1C:  MOVGT           R6, R0
97D1E:  CMP             R1, R6
97D20:  BGE             loc_97D7E
97D22:  LDR             R0, =(off_117248 - 0x97D2A)
97D24:  LDR             R1, =(dword_1ACF70 - 0x97D30)
97D26:  ADD             R0, PC; off_117248
97D28:  LDR.W           R2, [R12,#0x370]
97D2C:  ADD             R1, PC; dword_1ACF70
97D2E:  LDR             R3, [R0]; sub_9A720
97D30:  ADDS            R0, R2, #1
97D32:  MOV             R9, R1
97D34:  LDR             R1, [R1]
97D36:  STR.W           R0, [R12,#0x370]
97D3A:  LSLS            R0, R6, #2
97D3C:  BLX             R3; sub_9A720
97D3E:  LDR.W           R1, [R5,#0x1CC]; src
97D42:  MOV             R8, R0
97D44:  CBZ             R1, loc_97D76
97D46:  LDR.W           R0, [R5,#0x1C4]
97D4A:  LSLS            R2, R0, #2; n
97D4C:  MOV             R0, R8; dest
97D4E:  BLX             j_memcpy
97D52:  LDR.W           R0, [R5,#0x1CC]
97D56:  CMP             R0, #0
97D58:  ITTTT NE
97D5A:  LDRNE           R1, [R4]
97D5C:  CMPNE           R1, #0
97D5E:  LDRNE.W         R2, [R1,#0x370]
97D62:  SUBNE           R2, #1
97D64:  IT NE
97D66:  STRNE.W         R2, [R1,#0x370]
97D6A:  LDR             R2, =(off_11724C - 0x97D74)
97D6C:  LDR.W           R1, [R9]
97D70:  ADD             R2, PC; off_11724C
97D72:  LDR             R2, [R2]; j_opus_decoder_destroy_0
97D74:  BLX             R2; j_opus_decoder_destroy_0
97D76:  LDR.W           R1, [R5,#0x1C4]
97D7A:  STRD.W          R6, R8, [R5,#0x1C8]
97D7E:  LDR             R0, [SP,#0x20+var_1C]
97D80:  STR.W           R0, [R8,R1,LSL#2]
97D84:  LDR.W           R0, [R5,#0x1C4]
97D88:  ADDS            R0, #1
97D8A:  STR.W           R0, [R5,#0x1C4]
97D8E:  ADD             SP, SP, #8
97D90:  POP.W           {R8,R9,R11}
97D94:  POP             {R4-R7,PC}
