; =========================================================
; Game Engine Function: mpg123_volume_change
; Address            : 0x226A8E - 0x226ACC
; =========================================================

226A8E:  CMP             R0, #0
226A90:  ITT EQ
226A92:  MOVEQ.W         R0, #0xFFFFFFFF
226A96:  BXEQ            LR
226A98:  PUSH            {R7,LR}
226A9A:  MOV             R7, SP
226A9C:  MOVW            R1, #0xB450
226AA0:  VMOV            D16, R2, R3
226AA4:  ADD             R1, R0
226AA6:  VLDR            D17, [R1]
226AAA:  VADD.F64        D16, D17, D16
226AAE:  VCMPE.F64       D16, #0.0
226AB2:  VMRS            APSR_nzcv, FPSCR
226AB6:  VMOV.I32        D17, #0
226ABA:  IT GE
226ABC:  VMOVGE.F64      D17, D16
226AC0:  VSTR            D17, [R1]
226AC4:  BLX             j_INT123_do_rva
226AC8:  MOVS            R0, #0
226ACA:  POP             {R7,PC}
