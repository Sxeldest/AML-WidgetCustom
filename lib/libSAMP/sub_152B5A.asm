; =========================================================
; Game Engine Function: sub_152B5A
; Address            : 0x152B5A - 0x152CDE
; =========================================================

152B5A:  PUSH            {R4-R7,LR}
152B5C:  ADD             R7, SP, #0xC
152B5E:  PUSH.W          {R8-R11}
152B62:  SUB.W           SP, SP, #0x1120
152B66:  SUB             SP, SP, #0xC
152B68:  MOV             R5, R0
152B6A:  ADD             R0, SP, #0x1148+var_1138; this
152B6C:  MOV             R6, R3
152B6E:  MOV             R4, R2
152B70:  MOV             R10, R1
152B72:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
152B76:  LDRD.W          R0, R1, [R5,#0x48]
152B7A:  LDRD.W          R2, R3, [SP,#0x1148+var_1138]
152B7E:  SUBS            R0, R2, R0
152B80:  MOVW            R2, #0xE100
152B84:  SBC.W           R1, R3, R1
152B88:  MOVT            R2, #0x5F5
152B8C:  SUBS            R0, R0, R2
152B8E:  SBCS.W          R0, R1, #0
152B92:  BLT.W           loc_152CD2
152B96:  ADD             R0, SP, #0x1148+var_1138; this
152B98:  MOV             R11, R0
152B9A:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
152B9E:  LDRD.W          R0, R1, [SP,#0x1148+var_1138]
152BA2:  STRD.W          R0, R1, [R5,#0x48]
152BA6:  LDR             R0, [R6]
152BA8:  CMP.W           R0, #0xF00
152BAC:  BCC.W           loc_152CD2
152BB0:  LDRB.W          R1, [R5,#0x50]
152BB4:  CBZ             R1, loc_152BD0
152BB6:  LDR.W           R0, [R10,#4]
152BBA:  DMB.W           ISH
152BBE:  STR             R0, [R4]
152BC0:  MOVS            R0, #0
152BC2:  STR             R0, [R6]
152BC4:  MOV             R0, R5
152BC6:  MOVS            R1, #0
152BC8:  MOVS            R2, #0
152BCA:  BL              sub_152AC0
152BCE:  B               loc_152CD2
152BD0:  ADD.W           R9, R5, #0x34 ; '4'
152BD4:  ADDW            R8, SP, #0x1148+var_230
152BD8:  MOVS            R1, #0
152BDA:  STR             R5, [SP,#0x1148+var_1140]
152BDC:  MOV             R5, R11
152BDE:  STR.W           R1, [R7,#var_24]
152BE2:  STRD.W          R1, R1, [R7,#var_2C]
152BE6:  SUB.W           R0, R0, #0xF00
152BEA:  STR             R0, [R6]
152BEC:  LDR             R1, [R4]; int
152BEE:  ADDW            R3, SP, #0x1148+var_234; int
152BF2:  MOV             R0, R10; int
152BF4:  MOV.W           R2, #0xF00; int
152BF8:  STR             R5, [SP,#0x1148+dest]; dest
152BFA:  BL              sub_15BC96
152BFE:  LDR.W           R1, [SP,#0x1148+var_234]
152C02:  STR             R0, [R4]
152C04:  MOV.W           R0, #0x200
152C08:  MOV.W           R2, #0x3C0
152C0C:  STR             R0, [SP,#0x1148+dest]
152C0E:  MOV             R0, R9
152C10:  MOV             R3, R8
152C12:  BL              sub_15E350
152C16:  CMP             R0, #3
152C18:  STR             R0, [SP,#0x1148+var_113C]
152C1A:  BLT             loc_152C4C
152C1C:  LDRD.W          R11, R1, [R7,#var_28]
152C20:  CMP             R11, R1
152C22:  BCS             loc_152C40
152C24:  MOV             R1, R11
152C26:  MOV.W           R2, #0x200; n
152C2A:  STR.W           R0, [R1],#4
152C2E:  MOV             R0, R1; dest
152C30:  MOV             R1, R8; src
152C32:  BLX             j_memcpy
152C36:  ADD.W           R0, R11, #0x204
152C3A:  STR.W           R0, [R7,#var_28]
152C3E:  B               loc_152C4C
152C40:  SUB.W           R0, R7, #-var_2C
152C44:  ADD             R1, SP, #0x1148+var_113C
152C46:  MOV             R2, R8
152C48:  BL              sub_154312
152C4C:  LDR             R0, [R6]
152C4E:  LSRS            R1, R0, #8
152C50:  CMP             R1, #0xE
152C52:  BHI             loc_152BE6
152C54:  LDRD.W          R1, R0, [R7,#var_2C]
152C58:  SUBS            R0, R0, R1
152C5A:  CMP.W           R0, #0x204
152C5E:  BNE             loc_152C6C
152C60:  LDR.W           R2, [R1],#4
152C64:  LDR             R0, [SP,#0x1148+var_1140]
152C66:  BL              sub_152AC0
152C6A:  B               loc_152CC2
152C6C:  MOV             R0, R9
152C6E:  BL              sub_15E348
152C72:  LDRD.W          R4, R6, [R7,#var_2C]
152C76:  CMP             R4, R6
152C78:  BEQ             loc_152CC6
152C7A:  ADD.W           R8, SP, #0x1148+var_1138
152C7E:  MOVS            R5, #0
152C80:  LDR             R2, [R4]
152C82:  ADD             R5, R2
152C84:  CMP.W           R5, #0x200
152C88:  BHI             loc_152CA2
152C8A:  ADDS            R1, R4, #4
152C8C:  MOV             R0, R9
152C8E:  BL              sub_15E31E
152C92:  CBZ             R0, loc_152CA2
152C94:  ADD.W           R0, R4, #0x204
152C98:  MOV             R4, R6
152C9A:  CMP             R0, R6
152C9C:  BEQ             loc_152CA2
152C9E:  MOV             R4, R0
152CA0:  B               loc_152CBE
152CA2:  MOV             R0, R9
152CA4:  MOV             R1, R8
152CA6:  MOV.W           R2, #0x200
152CAA:  BL              sub_15E330
152CAE:  MOV             R2, R0
152CB0:  CMP             R0, #3
152CB2:  BLT             loc_152CBC
152CB4:  LDR             R0, [SP,#0x1148+var_1140]
152CB6:  MOV             R1, R8
152CB8:  BL              sub_152AC0
152CBC:  MOVS            R5, #0
152CBE:  CMP             R4, R6
152CC0:  BNE             loc_152C80
152CC2:  LDR.W           R4, [R7,#var_2C]
152CC6:  CBZ             R4, loc_152CD2
152CC8:  MOV             R0, R4; void *
152CCA:  STR.W           R4, [R7,#var_28]
152CCE:  BLX             j__ZdlPv; operator delete(void *)
152CD2:  ADD.W           SP, SP, #0x1120
152CD6:  ADD             SP, SP, #0xC
152CD8:  POP.W           {R8-R11}
152CDC:  POP             {R4-R7,PC}
