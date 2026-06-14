; =========================================================
; Game Engine Function: sub_151C60
; Address            : 0x151C60 - 0x151D0A
; =========================================================

151C60:  PUSH            {R4,R5,R7,LR}
151C62:  ADD             R7, SP, #8
151C64:  VPUSH           {D8}
151C68:  MOV             R4, R0
151C6A:  LDRB            R0, [R0,#0x11]
151C6C:  CBZ             R0, loc_151CCA
151C6E:  MOVS            R0, #0
151C70:  MOV             R5, R1
151C72:  STRB            R0, [R4,#0x11]
151C74:  BL              sub_17E2E4
151C78:  LDRB            R3, [R4,#0x12]
151C7A:  LDRD.W          R2, R1, [R4,#0x28]
151C7E:  SUBS            R0, R0, R1
151C80:  ADD             R0, R2
151C82:  STR             R0, [R4,#0x28]
151C84:  CBZ             R3, loc_151CC4
151C86:  CMP.W           R5, #0x3E8
151C8A:  BCC             loc_151CEC
151C8C:  LDRB            R0, [R4,#0x13]
151C8E:  CBNZ            R0, loc_151CEC
151C90:  VMOV            S0, R5
151C94:  LDR             R0, [R4,#4]
151C96:  VLDR            D17, =1000.0
151C9A:  VCVT.F64.U32    D16, S0
151C9E:  VDIV.F64        D8, D16, D17
151CA2:  BL              sub_15DF12
151CA6:  VMOV            D16, R0, R1
151CAA:  VLDR            D17, [R4,#0x18]
151CAE:  VADD.F64        D16, D8, D16
151CB2:  VCMP.F64        D16, D17
151CB6:  VMRS            APSR_nzcv, FPSCR
151CBA:  BPL             loc_151CD0
151CBC:  VMOV            R2, R3, D16
151CC0:  LDR             R0, [R4,#4]
151CC2:  B               loc_151CE8
151CC4:  LDR             R0, [R4,#0x20]
151CC6:  ADD             R0, R5
151CC8:  STR             R0, [R4,#0x20]
151CCA:  VPOP            {D8}
151CCE:  POP             {R4,R5,R7,PC}
151CD0:  LDRB            R0, [R4,#0x10]
151CD2:  LDR             R5, [R4,#4]
151CD4:  CBZ             R0, loc_151CFC
151CD6:  VMOV            R0, R1, D16; x
151CDA:  VMOV            R2, R3, D17; y
151CDE:  BLX             fmod
151CE2:  MOV             R2, R0
151CE4:  MOV             R0, R5
151CE6:  MOV             R3, R1
151CE8:  BL              sub_15DF60
151CEC:  LDR             R0, [R4,#4]
151CEE:  LDR             R1, [R0]
151CF0:  LDR             R1, [R1,#8]
151CF2:  VPOP            {D8}
151CF6:  POP.W           {R4,R5,R7,LR}
151CFA:  BX              R1
151CFC:  MOV             R0, R5
151CFE:  VPOP            {D8}
151D02:  POP.W           {R4,R5,R7,LR}
151D06:  B.W             sub_15DF2E
