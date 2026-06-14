; =========================================================
; Game Engine Function: opus_custom_mode_create
; Address            : 0xBB888 - 0xBB8D0
; =========================================================

BB888:  MOVW            R3, #0xBB80
BB88C:  CMP             R0, R3
BB88E:  BNE             loc_BB8B0
BB890:  CMP.W           R1, #0x3C0
BB894:  BEQ             loc_BB8BE
BB896:  BIC.W           R0, R1, #0x80000000
BB89A:  CMP.W           R0, #0x1E0
BB89E:  ITT NE
BB8A0:  BICNE.W         R0, R1, #0xC0000000
BB8A4:  CMPNE           R0, #0xF0
BB8A6:  BEQ             loc_BB8BE
BB8A8:  BIC.W           R0, R1, #0xE0000000
BB8AC:  CMP             R0, #0x78 ; 'x'
BB8AE:  BEQ             loc_BB8BE
BB8B0:  CMP             R2, #0
BB8B2:  ITT NE
BB8B4:  MOVNE.W         R0, #0xFFFFFFFF
BB8B8:  STRNE           R0, [R2]
BB8BA:  MOVS            R0, #0
BB8BC:  BX              LR
BB8BE:  CBZ             R2, loc_BB8CA
BB8C0:  LDR             R0, =(unk_1116FC - 0xBB8CA)
BB8C2:  MOVS            R1, #0
BB8C4:  STR             R1, [R2]
BB8C6:  ADD             R0, PC; unk_1116FC
BB8C8:  BX              LR
BB8CA:  LDR             R0, =(unk_1116FC - 0xBB8D0)
BB8CC:  ADD             R0, PC; unk_1116FC
BB8CE:  BX              LR
