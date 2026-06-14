; =========================================================
; Game Engine Function: silk_decode_frame
; Address            : 0x195BA0 - 0x195D18
; =========================================================

195BA0:  PUSH            {R4-R7,LR}
195BA2:  ADD             R7, SP, #0xC
195BA4:  PUSH.W          {R8-R11}
195BA8:  SUB             SP, SP, #0x94
195BAA:  MOV             R5, R0
195BAC:  LDR             R0, =(__stack_chk_guard_ptr - 0x195BB6)
195BAE:  MOV             R11, R3
195BB0:  MOV             R10, R1
195BB2:  ADD             R0, PC; __stack_chk_guard_ptr
195BB4:  LDR             R3, [R7,#arg_0]
195BB6:  LDR             R1, [R7,#arg_8]
195BB8:  MOV             R8, R2
195BBA:  LDR             R0, [R0]; __stack_chk_guard
195BBC:  CMP             R3, #2
195BBE:  MOV             R6, SP
195BC0:  LDR             R0, [R0]
195BC2:  STR.W           R0, [R7,#var_24]
195BC6:  MOV.W           R0, #0
195BCA:  LDR.W           R9, [R5,#0x918]
195BCE:  STR.W           R0, [R7,#var_28]
195BD2:  BEQ             loc_195BDE
195BD4:  CMP             R3, #0
195BD6:  BNE             loc_195C7A
195BD8:  LDR.W           R2, [R5,#0x954]
195BDC:  B               loc_195BEE
195BDE:  LDR.W           R2, [R5,#0x954]
195BE2:  ADD.W           R0, R5, R2,LSL#2
195BE6:  LDR.W           R0, [R0,#0x974]
195BEA:  CMP             R0, #1
195BEC:  BNE             loc_195C7A
195BEE:  MOVS            R0, #0x1E
195BF0:  MOV             R4, R11
195BF2:  ADD.W           R0, R0, R9,LSL#1
195BF6:  LDR             R1, [R7,#arg_4]
195BF8:  BIC.W           R0, R0, #0x1F
195BFC:  SUB.W           R11, SP, R0
195C00:  MOV             SP, R11
195C02:  SUB             SP, SP, #8
195C04:  STR             R1, [SP,#0xB8+var_B8]
195C06:  MOV             R0, R5
195C08:  MOV             R1, R10
195C0A:  BLX             j_silk_decode_indices
195C0E:  ADD             SP, SP, #8
195C10:  LDRSB.W         R3, [R5,#0xACE]
195C14:  LDRSB.W         R2, [R5,#0xACD]
195C18:  LDR.W           R0, [R5,#0x918]
195C1C:  SUB             SP, SP, #8
195C1E:  STR             R0, [SP,#0xB8+var_B8]
195C20:  MOV             R0, R10
195C22:  MOV             R1, R11
195C24:  BLX             j_silk_decode_pulses
195C28:  ADD             SP, SP, #8
195C2A:  SUB.W           R10, R7, #-var_B0
195C2E:  LDR             R2, [R7,#arg_4]
195C30:  MOV             R0, R5
195C32:  MOV             R1, R10
195C34:  BLX             j_silk_decode_parameters
195C38:  SUB             SP, SP, #8
195C3A:  LDR             R0, [R7,#arg_8]
195C3C:  MOV             R3, R11
195C3E:  STR             R0, [SP,#0xB8+var_B8]
195C40:  MOV             R0, R5
195C42:  MOV             R1, R10
195C44:  MOV             R2, R8
195C46:  MOV             R11, R4
195C48:  BLX             j_silk_decode_core
195C4C:  ADD             SP, SP, #8
195C4E:  SUB             SP, SP, #8
195C50:  LDR             R0, [R7,#arg_8]
195C52:  MOV             R1, R10
195C54:  STR             R0, [SP,#0xB8+var_B8]
195C56:  MOV             R0, R5
195C58:  MOV             R2, R8
195C5A:  MOVS            R3, #0
195C5C:  MOVS            R4, #0
195C5E:  BLX             j_silk_PLC
195C62:  ADD             SP, SP, #8
195C64:  MOV.W           R0, #0x1040
195C68:  MOVW            R1, #0x1044
195C6C:  STR             R4, [R5,R0]
195C6E:  LDRSB.W         R0, [R5,#0xACD]
195C72:  STR             R0, [R5,R1]
195C74:  STR.W           R4, [R5,#0x948]
195C78:  B               loc_195C98
195C7A:  MOVW            R0, #0x1044
195C7E:  LDR             R0, [R5,R0]
195C80:  STRB.W          R0, [R5,#0xACD]
195C84:  SUB             SP, SP, #8
195C86:  STR             R1, [SP,#0xB8+var_B8]
195C88:  SUB.W           R1, R7, #-var_B0
195C8C:  MOV             R0, R5
195C8E:  MOV             R2, R8
195C90:  MOVS            R3, #1
195C92:  BLX             j_silk_PLC
195C96:  ADD             SP, SP, #8
195C98:  LDR.W           R0, [R5,#0x918]
195C9C:  ADDW            R4, R5, #0x544
195CA0:  LDR.W           R2, [R5,#0x920]
195CA4:  SUB.W           R10, R2, R0
195CA8:  ADD.W           R1, R4, R0,LSL#1; src
195CAC:  MOV             R0, R4; dest
195CAE:  MOV.W           R2, R10,LSL#1; n
195CB2:  BLX             j_memmove
195CB6:  LDR.W           R1, [R5,#0x918]
195CBA:  ADD.W           R0, R4, R10,LSL#1; dest
195CBE:  LSLS            R2, R1, #1; n
195CC0:  MOV             R1, R8; src
195CC2:  BLX             j_memcpy
195CC6:  SUB.W           R4, R7, #-var_B0
195CCA:  MOV             R0, R5
195CCC:  MOV             R2, R8
195CCE:  MOV             R3, R9
195CD0:  MOV             R1, R4
195CD2:  BLX             j_silk_CNG
195CD6:  MOV             R0, R5
195CD8:  MOV             R1, R8
195CDA:  MOV             R2, R9
195CDC:  BLX             j_silk_PLC_glue_frames
195CE0:  LDR.W           R0, [R5,#0x914]
195CE4:  ADD.W           R0, R4, R0,LSL#2
195CE8:  LDR.W           R0, [R0,#-4]
195CEC:  STR.W           R0, [R5,#0x904]
195CF0:  LDR             R0, =(__stack_chk_guard_ptr - 0x195CFA)
195CF2:  STR.W           R9, [R11]
195CF6:  ADD             R0, PC; __stack_chk_guard_ptr
195CF8:  LDR.W           R1, [R7,#var_24]
195CFC:  LDR             R0, [R0]; __stack_chk_guard
195CFE:  LDR             R0, [R0]
195D00:  SUBS            R0, R0, R1
195D02:  ITTTT EQ
195D04:  MOVEQ           R0, #0
195D06:  SUBEQ.W         R4, R7, #-var_1C
195D0A:  MOVEQ           SP, R4
195D0C:  POPEQ.W         {R8-R11}
195D10:  IT EQ
195D12:  POPEQ           {R4-R7,PC}
195D14:  BLX             __stack_chk_fail
