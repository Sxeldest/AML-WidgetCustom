; =========================================================
; Game Engine Function: _celt_lpc
; Address            : 0x1A0BAC - 0x1A0D3C
; =========================================================

1A0BAC:  PUSH            {R4-R7,LR}
1A0BAE:  ADD             R7, SP, #0xC
1A0BB0:  PUSH.W          {R8-R11}
1A0BB4:  SUB             SP, SP, #0x7C
1A0BB6:  STR             R0, [SP,#0x98+var_94]
1A0BB8:  MOV             R9, R2
1A0BBA:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A0BC6)
1A0BBC:  MOV             R8, R1
1A0BBE:  MOV.W           R1, R9,LSL#2; n
1A0BC2:  ADD             R0, PC; __stack_chk_guard_ptr
1A0BC4:  LDR             R0, [R0]; __stack_chk_guard
1A0BC6:  LDR             R0, [R0]
1A0BC8:  STR             R0, [SP,#0x98+var_20]
1A0BCA:  ADD             R0, SP, #0x98+var_80; int
1A0BCC:  LDR.W           R10, [R8]
1A0BD0:  BLX             sub_22178C
1A0BD4:  CMP.W           R10, #0
1A0BD8:  BEQ.W           loc_1A0D02
1A0BDC:  ADD             R0, SP, #0x98+var_80
1A0BDE:  MOV.W           R11, #0
1A0BE2:  SUBS            R0, #4
1A0BE4:  STR             R0, [SP,#0x98+var_84]
1A0BE6:  STR.W           R9, [SP,#0x98+var_90]
1A0BEA:  CMP             R11, R9
1A0BEC:  BGE.W           loc_1A0D02
1A0BF0:  MOVS            R0, #0
1A0BF2:  CMP.W           R11, #1
1A0BF6:  BLT             loc_1A0C2C
1A0BF8:  ADD             R1, SP, #0x98+var_80
1A0BFA:  MOV             R2, R11
1A0BFC:  LDR.W           R3, [R8,R2,LSL#2]
1A0C00:  SUBS            R2, #1
1A0C02:  LDR.W           R5, [R1],#4
1A0C06:  UXTH            R4, R3
1A0C08:  MOV.W           R6, R5,ASR#16
1A0C0C:  MUL.W           R6, R4, R6
1A0C10:  SMULTT.W        R4, R5, R3
1A0C14:  MOV.W           R3, R3,ASR#16
1A0C18:  UXTH            R5, R5
1A0C1A:  MUL.W           R3, R5, R3
1A0C1E:  ADD.W           R0, R0, R6,ASR#15
1A0C22:  ADD.W           R0, R0, R4,LSL#1
1A0C26:  ADD.W           R0, R0, R3,ASR#15
1A0C2A:  BNE             loc_1A0BFC
1A0C2C:  ADD.W           R4, R11, #1
1A0C30:  LDR.W           R1, [R8,R4,LSL#2]
1A0C34:  ADD.W           R0, R1, R0,LSL#3
1A0C38:  MOV             R1, R10
1A0C3A:  BIC.W           R0, R0, #7
1A0C3E:  BLX             j_frac_div32
1A0C42:  NEGS            R1, R0
1A0C44:  ADD             R2, SP, #0x98+var_80
1A0C46:  ASRS            R0, R1, #3
1A0C48:  STR.W           R0, [R2,R11,LSL#2]
1A0C4C:  ASRS            R2, R4, #1
1A0C4E:  CMP             R2, #0
1A0C50:  BLE             loc_1A0CB4
1A0C52:  STRD.W          R4, R10, [SP,#0x98+var_8C]
1A0C56:  MOV.W           LR, R1,ASR#16
1A0C5A:  LDR             R4, [SP,#0x98+var_84]
1A0C5C:  ADD             R5, SP, #0x98+var_80
1A0C5E:  UXTH.W          R12, R1
1A0C62:  MOV.W           R11, LR,LSL#1
1A0C66:  LDR             R6, [R4]
1A0C68:  SUBS            R2, #1
1A0C6A:  LDR             R1, [R5]
1A0C6C:  UXTH            R0, R6
1A0C6E:  MOV.W           R3, R6,ASR#16
1A0C72:  MUL.W           R0, R0, LR
1A0C76:  MOV.W           R9, R1,ASR#16
1A0C7A:  MUL.W           R10, R9, R12
1A0C7E:  ADD.W           R0, R1, R0,ASR#15
1A0C82:  UXTH            R1, R1
1A0C84:  MUL.W           R1, R1, LR
1A0C88:  MLA.W           R0, R11, R3, R0
1A0C8C:  MUL.W           R3, R3, R12
1A0C90:  ADD.W           R1, R6, R1,ASR#15
1A0C94:  MLA.W           R1, R11, R9, R1
1A0C98:  ADD.W           R0, R0, R3,ASR#15
1A0C9C:  STR.W           R0, [R5],#4
1A0CA0:  ADD.W           R0, R1, R10,ASR#15
1A0CA4:  STR.W           R0, [R4],#-4
1A0CA8:  BNE             loc_1A0C66
1A0CAA:  LDR.W           R10, [SP,#0x98+var_88]
1A0CAE:  LDRD.W          R9, R4, [SP,#0x98+var_90]
1A0CB2:  B               loc_1A0CBC
1A0CB4:  UXTH.W          R12, R1
1A0CB8:  MOV.W           LR, R1,ASR#16
1A0CBC:  MUL.W           R0, LR, R12
1A0CC0:  UXTH.W          R2, R10
1A0CC4:  MOV.W           R3, R10,ASR#16
1A0CC8:  SMULBB.W        R1, LR, LR
1A0CCC:  MOV             R11, R4
1A0CCE:  ADD.W           R0, R1, R0,ASR#15
1A0CD2:  SBFX.W          R1, R0, #0xF, #0x10
1A0CD6:  LSLS            R0, R0, #1
1A0CD8:  MULS            R1, R2
1A0CDA:  UXTH            R2, R0
1A0CDC:  MULS            R2, R3
1A0CDE:  LDR.W           R3, [R8]
1A0CE2:  SMULTT.W        R0, R10, R0
1A0CE6:  SUB.W           R1, R10, R1,ASR#15
1A0CEA:  SUB.W           R1, R1, R2,ASR#15
1A0CEE:  SUB.W           R10, R1, R0,LSL#1
1A0CF2:  LDR             R0, [SP,#0x98+var_84]
1A0CF4:  CMP.W           R10, R3,ASR#10
1A0CF8:  ADD.W           R0, R0, #4
1A0CFC:  STR             R0, [SP,#0x98+var_84]
1A0CFE:  BGE.W           loc_1A0BEA
1A0D02:  LDR             R2, [SP,#0x98+var_94]
1A0D04:  CMP.W           R9, #1
1A0D08:  BLT             loc_1A0D22
1A0D0A:  ADD             R0, SP, #0x98+var_80
1A0D0C:  LDR.W           R1, [R0],#4
1A0D10:  SUBS.W          R9, R9, #1
1A0D14:  ADD.W           R1, R1, #0x8000
1A0D18:  MOV.W           R1, R1,LSR#16
1A0D1C:  STRH.W          R1, [R2],#2
1A0D20:  BNE             loc_1A0D0C
1A0D22:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A0D2A)
1A0D24:  LDR             R1, [SP,#0x98+var_20]
1A0D26:  ADD             R0, PC; __stack_chk_guard_ptr
1A0D28:  LDR             R0, [R0]; __stack_chk_guard
1A0D2A:  LDR             R0, [R0]
1A0D2C:  SUBS            R0, R0, R1
1A0D2E:  ITTT EQ
1A0D30:  ADDEQ           SP, SP, #0x7C ; '|'
1A0D32:  POPEQ.W         {R8-R11}
1A0D36:  POPEQ           {R4-R7,PC}
1A0D38:  BLX             __stack_chk_fail
