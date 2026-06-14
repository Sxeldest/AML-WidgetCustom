; =========================================================
; Game Engine Function: png_free_jmpbuf
; Address            : 0x1F2F90 - 0x1F2FE4
; =========================================================

1F2F90:  PUSH            {R4-R7,LR}
1F2F92:  ADD             R7, SP, #0xC
1F2F94:  PUSH.W          {R11}
1F2F98:  SUB             SP, SP, #0x100
1F2F9A:  MOV             R4, R0
1F2F9C:  CBZ             R4, loc_1F2FDC
1F2F9E:  LDR.W           R5, [R4,#0x104]
1F2FA2:  CBZ             R5, loc_1F2FD2
1F2FA4:  CMP             R5, R4
1F2FA6:  ITT NE
1F2FA8:  LDRNE.W         R0, [R4,#0x108]
1F2FAC:  CMPNE           R0, #0
1F2FAE:  BEQ             loc_1F2FD2
1F2FB0:  MOV             R6, SP
1F2FB2:  MOV             R0, R6; env
1F2FB4:  BLX             setjmp
1F2FB8:  CBNZ            R0, loc_1F2FD2
1F2FBA:  LDR             R0, =(longjmp_ptr_0 - 0x1F2FC8)
1F2FBC:  MOVS            R1, #0
1F2FBE:  STR.W           R1, [R4,#0x108]
1F2FC2:  MOV             R1, R5; p
1F2FC4:  ADD             R0, PC; longjmp_ptr_0
1F2FC6:  LDR             R0, [R0]; __imp_longjmp
1F2FC8:  STRD.W          R0, R6, [R4,#0x100]
1F2FCC:  MOV             R0, R4; int
1F2FCE:  BLX             j_png_free
1F2FD2:  MOVS            R0, #0
1F2FD4:  STRD.W          R0, R0, [R4,#0x100]
1F2FD8:  STR.W           R0, [R4,#0x108]
1F2FDC:  ADD             SP, SP, #0x100
1F2FDE:  POP.W           {R11}
1F2FE2:  POP             {R4-R7,PC}
