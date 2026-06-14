; =========================================================
; Game Engine Function: sub_149C18
; Address            : 0x149C18 - 0x149CC2
; =========================================================

149C18:  PUSH            {R4-R7,LR}
149C1A:  ADD             R7, SP, #0xC
149C1C:  PUSH.W          {R8-R11}
149C20:  SUB             SP, SP, #0x4C
149C22:  MOV             R4, R0
149C24:  LDR             R0, [R1]
149C26:  STR             R0, [SP,#0x68+var_20]
149C28:  MOV             R5, R1
149C2A:  LDR             R0, [R1,#4]
149C2C:  ADDS            R5, #0x34 ; '4'
149C2E:  STR             R0, [SP,#0x68+var_24]
149C30:  ADD.W           R11, R1, #0x18
149C34:  LDR             R0, [R1,#8]
149C36:  MOV             R8, R3
149C38:  STR             R0, [SP,#0x68+var_28]
149C3A:  MOV             R6, R2
149C3C:  LDR             R0, [R1,#0xC]
149C3E:  STR             R0, [SP,#0x68+var_2C]
149C40:  LDR             R0, [R1,#0x24]
149C42:  STR             R0, [SP,#0x68+var_30]
149C44:  LDR             R0, [R1,#0x28]
149C46:  LDRD.W          R12, LR, [R1,#0x10]
149C4A:  STR             R0, [SP,#0x68+var_34]
149C4C:  LDRD.W          R0, R1, [R1,#0x2C]
149C50:  LDM             R5, {R2,R3,R5}
149C52:  LDM.W           R11, {R9-R11}
149C56:  STR             R0, [SP,#0x68+var_48]
149C58:  STR             R1, [SP,#0x68+var_44]
149C5A:  STR             R2, [SP,#0x68+var_40]
149C5C:  STR             R3, [SP,#0x68+var_3C]
149C5E:  STR             R5, [SP,#0x68+var_38]
149C60:  LDR             R0, [SP,#0x68+var_2C]
149C62:  STMEA.W         SP, {R0,R12,LR}
149C66:  ADD             R0, SP, #0x68+var_5C
149C68:  STM.W           R0, {R9-R11}
149C6C:  LDR             R0, [SP,#0x68+var_30]
149C6E:  STR             R0, [SP,#0x68+var_50]
149C70:  LDR             R0, [SP,#0x68+var_34]
149C72:  STR             R0, [SP,#0x68+var_4C]
149C74:  ADD.W           R0, R4, #0x4C ; 'L'
149C78:  LDR             R1, [SP,#0x68+var_20]
149C7A:  LDRD.W          R3, R2, [SP,#0x68+var_28]
149C7E:  BL              sub_17D12C
149C82:  LDR             R0, [R6]
149C84:  STR             R0, [R4,#0x5C]
149C86:  LDR             R0, [R6,#4]
149C88:  VLDR            S0, [R8]
149C8C:  STR             R0, [R4,#0x60]
149C8E:  LDR             R0, [R6,#8]
149C90:  VMOV            R1, S0
149C94:  VLDR            S2, [R8,#4]
149C98:  STR             R0, [R4,#0x64]
149C9A:  VLDR            S4, [R8,#8]
149C9E:  VMOV            R2, S2
149CA2:  LDR             R0, [R4,#4]
149CA4:  VMOV            R3, S4
149CA8:  VSTR            S0, [R4,#0x68]
149CAC:  VSTR            S2, [R4,#0x6C]
149CB0:  VSTR            S4, [R4,#0x70]
149CB4:  ADD             SP, SP, #0x4C ; 'L'
149CB6:  POP.W           {R8-R11}
149CBA:  POP.W           {R4-R7,LR}
149CBE:  B.W             sub_F89BC
