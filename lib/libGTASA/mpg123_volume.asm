; =========================================================
; Game Engine Function: mpg123_volume
; Address            : 0x226ACC - 0x226B02
; =========================================================

226ACC:  CMP             R0, #0
226ACE:  ITT EQ
226AD0:  MOVEQ.W         R0, #0xFFFFFFFF
226AD4:  BXEQ            LR
226AD6:  PUSH            {R7,LR}
226AD8:  MOV             R7, SP
226ADA:  VMOV            D16, R2, R3
226ADE:  MOVW            R1, #0xB450
226AE2:  VCMPE.F64       D16, #0.0
226AE6:  ADD             R1, R0
226AE8:  VMRS            APSR_nzcv, FPSCR
226AEC:  VMOV.I32        D17, #0
226AF0:  IT GE
226AF2:  VMOVGE.F64      D17, D16
226AF6:  VSTR            D17, [R1]
226AFA:  BLX             j_INT123_do_rva
226AFE:  MOVS            R0, #0
226B00:  POP             {R7,PC}
