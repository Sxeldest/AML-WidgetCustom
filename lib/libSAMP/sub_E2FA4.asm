; =========================================================
; Game Engine Function: sub_E2FA4
; Address            : 0xE2FA4 - 0xE300C
; =========================================================

E2FA4:  PUSH            {R4-R7,LR}
E2FA6:  ADD             R7, SP, #0xC
E2FA8:  PUSH.W          {R8}
E2FAC:  SUB             SP, SP, #8
E2FAE:  LDR             R4, =(dword_23DAD8 - 0xE2FB8)
E2FB0:  MOVS            R1, #1
E2FB2:  LDR             R5, =(byte_23DBF6 - 0xE2FBA)
E2FB4:  ADD             R4, PC; dword_23DAD8
E2FB6:  ADD             R5, PC; byte_23DBF6
E2FB8:  LDR             R0, [R4]
E2FBA:  STRB            R1, [R5]
E2FBC:  CBZ             R0, loc_E2FC6
E2FBE:  BL              sub_164BE4
E2FC2:  MOVS            R0, #0
E2FC4:  STR             R0, [R4]
E2FC6:  LDR             R0, =(unk_23DAE0 - 0xE2FD6)
E2FC8:  MOV.W           R8, #0
E2FCC:  MOVS            R1, #0
E2FCE:  MOV.W           R2, #0x940000
E2FD2:  ADD             R0, PC; unk_23DAE0
E2FD4:  MOVS            R3, #0
E2FD6:  STR.W           R8, [SP,#0x18+var_18]
E2FDA:  BL              sub_164AD0
E2FDE:  MOVS            R1, #0
E2FE0:  STR             R0, [R4]
E2FE2:  BL              sub_164BD0
E2FE6:  LDR             R6, =(byte_23DBF5 - 0xE2FEC)
E2FE8:  ADD             R6, PC; byte_23DBF5
E2FEA:  LDRB            R0, [R6]
E2FEC:  CBNZ            R0, loc_E2FF8
E2FEE:  MOV.W           R0, #0x7D0; useconds
E2FF2:  BLX             usleep
E2FF6:  B               loc_E2FEA
E2FF8:  LDR             R0, [R4]
E2FFA:  BL              sub_164BE4
E2FFE:  MOVS            R0, #0; retval
E3000:  STR.W           R8, [R4]
E3004:  STRB.W          R8, [R5]
E3008:  BLX             pthread_exit
