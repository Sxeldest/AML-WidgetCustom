; =========================================================
; Game Engine Function: silk_LTP_scale_ctrl_FIX
; Address            : 0x1AFD90 - 0x1AFDEC
; =========================================================

1AFD90:  CBZ             R2, loc_1AFD96
1AFD92:  MOVS            R2, #0
1AFD94:  B               loc_1AFDCE
1AFD96:  MOVW            R3, #0x1670
1AFD9A:  MOVW            R2, #0x1208
1AFD9E:  LDR.W           R12, [R0,R2]
1AFDA2:  LDR             R3, [R0,R3]
1AFDA4:  LDRSH.W         R2, [R1,#0x18C]
1AFDA8:  ADD             R3, R12
1AFDAA:  MOV.W           R12, #0x33 ; '3'
1AFDAE:  SXTH            R3, R3
1AFDB0:  SMULBB.W        R2, R3, R2
1AFDB4:  UXTH            R3, R2
1AFDB6:  MUL.W           R3, R3, R12
1AFDBA:  LSRS            R3, R3, #0x10
1AFDBC:  SMLATB.W        R2, R2, R12, R3
1AFDC0:  CMP             R2, #2
1AFDC2:  BLE             loc_1AFDC8
1AFDC4:  MOVS            R2, #2
1AFDC6:  B               loc_1AFDCE
1AFDC8:  CMP             R2, #0
1AFDCA:  IT LE
1AFDCC:  MOVLE           R2, #0
1AFDCE:  PUSH            {R7,LR}
1AFDD0:  MOV             R7, SP
1AFDD2:  LDR             R3, =(silk_LTPScales_table_Q14_ptr - 0x1AFDE0)
1AFDD4:  MOVW            LR, #0x12A1
1AFDD8:  STRB.W          R2, [R0,LR]
1AFDDC:  ADD             R3, PC; silk_LTPScales_table_Q14_ptr
1AFDDE:  LDR.W           R12, [R3]; silk_LTPScales_table_Q14
1AFDE2:  SXTB            R3, R2
1AFDE4:  LDRSH.W         R3, [R12,R3,LSL#1]
1AFDE8:  STR             R3, [R1,#0x78]
1AFDEA:  POP             {R7,PC}
