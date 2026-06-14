; =========================================================
; Game Engine Function: sub_172C12
; Address            : 0x172C12 - 0x172D22
; =========================================================

172C12:  PUSH            {R4-R7,LR}
172C14:  ADD             R7, SP, #0xC
172C16:  PUSH.W          {R11}
172C1A:  SUB             SP, SP, #0x10
172C1C:  MOV             R4, R0
172C1E:  LDR             R6, [R7,#arg_4]
172C20:  LDR             R0, [R0,#0x40]
172C22:  VMOV            S0, R3
172C26:  VLDR            S2, [R7,#arg_0]
172C2A:  VMOV            S6, R2
172C2E:  VMOV            S4, R1
172C32:  STRD.W          R1, R2, [SP,#0x20+var_20]
172C36:  CBZ             R6, loc_172C94
172C38:  CBZ             R0, loc_172C92
172C3A:  LDR             R1, [R4,#0x48]
172C3C:  ADD.W           R1, R1, R0,LSL#4
172C40:  VLDR            S10, [R1,#-0x10]
172C44:  VLDR            S8, [R1,#-0xC]
172C48:  VCMP.F32        S10, S4
172C4C:  VMRS            APSR_nzcv, FPSCR
172C50:  ITT GT
172C52:  VSTRGT          S10, [SP,#0x20+var_20]
172C56:  VMOVGT.F32      S4, S10
172C5A:  VLDR            S12, [R1,#-8]
172C5E:  VCMP.F32        S8, S6
172C62:  VLDR            S10, [R1,#-4]
172C66:  VMRS            APSR_nzcv, FPSCR
172C6A:  VCMP.F32        S12, S0
172C6E:  ITT GT
172C70:  VSTRGT          S8, [SP,#0x20+var_1C]
172C74:  VMOVGT.F32      S6, S8
172C78:  VMRS            APSR_nzcv, FPSCR
172C7C:  VCMP.F32        S10, S2
172C80:  IT MI
172C82:  VMOVMI.F32      S0, S12
172C86:  VMRS            APSR_nzcv, FPSCR
172C8A:  IT MI
172C8C:  VMOVMI.F32      S2, S10
172C90:  B               loc_172C94
172C92:  MOVS            R0, #0
172C94:  VCMP.F32        S6, S2
172C98:  VMRS            APSR_nzcv, FPSCR
172C9C:  VCMP.F32        S4, S0
172CA0:  IT GE
172CA2:  VMOVGE.F32      S2, S6
172CA6:  VMRS            APSR_nzcv, FPSCR
172CAA:  IT GE
172CAC:  VMOVGE.F32      S0, S4
172CB0:  LDR             R1, [R4,#0x44]
172CB2:  VSTR            S2, [SP,#0x20+var_14]
172CB6:  CMP             R0, R1
172CB8:  VSTR            S0, [SP,#0x20+var_18]
172CBC:  BNE             loc_172CFC
172CBE:  CMP             R0, #0
172CC0:  ADD.W           R6, R0, #1
172CC4:  ITTE NE
172CC6:  ADDNE.W         R1, R0, R0,LSR#31
172CCA:  ADDNE.W         R1, R0, R1,ASR#1
172CCE:  MOVEQ           R1, #8
172CD0:  CMP             R1, R6
172CD2:  IT GT
172CD4:  MOVGT           R6, R1
172CD6:  CMP             R0, R6
172CD8:  BGE             loc_172CFC
172CDA:  LSLS            R0, R6, #4
172CDC:  BL              sub_1654B0
172CE0:  LDR             R1, [R4,#0x48]; src
172CE2:  MOV             R5, R0
172CE4:  CBZ             R1, loc_172CF6
172CE6:  LDR             R0, [R4,#0x40]
172CE8:  LSLS            R2, R0, #4; n
172CEA:  MOV             R0, R5; dest
172CEC:  BLX             j_memcpy
172CF0:  LDR             R0, [R4,#0x48]
172CF2:  BL              sub_165578
172CF6:  LDR             R0, [R4,#0x40]
172CF8:  STRD.W          R6, R5, [R4,#0x44]
172CFC:  LDR             R1, [R4,#0x48]
172CFE:  MOV             R2, SP
172D00:  VLD1.64         {D16-D17}, [R2,#0x20+var_20]
172D04:  ADD.W           R0, R1, R0,LSL#4
172D08:  VST1.8          {D16-D17}, [R0]
172D0C:  LDR             R0, [R4,#0x40]
172D0E:  ADDS            R0, #1
172D10:  STR             R0, [R4,#0x40]
172D12:  MOV             R0, R4
172D14:  ADD             SP, SP, #0x10
172D16:  POP.W           {R11}
172D1A:  POP.W           {R4-R7,LR}
172D1E:  B.W             sub_172AB2
