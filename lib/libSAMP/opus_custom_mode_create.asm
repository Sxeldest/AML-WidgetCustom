; =========================================================
; Game Engine Function: opus_custom_mode_create
; Address            : 0x199AAC - 0x199AF4
; =========================================================

199AAC:  MOVW            R3, #0xBB80
199AB0:  CMP             R0, R3
199AB2:  BNE             loc_199AD4
199AB4:  CMP.W           R1, #0x3C0
199AB8:  BEQ             loc_199AE2
199ABA:  BIC.W           R0, R1, #0x80000000
199ABE:  CMP.W           R0, #0x1E0
199AC2:  ITT NE
199AC4:  BICNE.W         R0, R1, #0xC0000000
199AC8:  CMPNE           R0, #0xF0
199ACA:  BEQ             loc_199AE2
199ACC:  BIC.W           R0, R1, #0xE0000000
199AD0:  CMP             R0, #0x78 ; 'x'
199AD2:  BEQ             loc_199AE2
199AD4:  CMP             R2, #0
199AD6:  ITT NE
199AD8:  MOVNE.W         R0, #0xFFFFFFFF
199ADC:  STRNE           R0, [R2]
199ADE:  MOVS            R0, #0
199AE0:  BX              LR
199AE2:  CBZ             R2, loc_199AEE
199AE4:  LDR             R0, =(unk_2300A8 - 0x199AEE)
199AE6:  MOVS            R1, #0
199AE8:  STR             R1, [R2]
199AEA:  ADD             R0, PC; unk_2300A8
199AEC:  BX              LR
199AEE:  LDR             R0, =(unk_2300A8 - 0x199AF4)
199AF0:  ADD             R0, PC; unk_2300A8
199AF2:  BX              LR
