; =========================================================
; Game Engine Function: silk_LTP_scale_ctrl_FIX
; Address            : 0xD1FD0 - 0xD202C
; =========================================================

D1FD0:  CBZ             R2, loc_D1FD6
D1FD2:  MOVS            R2, #0
D1FD4:  B               loc_D200E
D1FD6:  MOVW            R3, #0x1670
D1FDA:  MOVW            R2, #0x1208
D1FDE:  LDR.W           R12, [R0,R2]
D1FE2:  LDR             R3, [R0,R3]
D1FE4:  LDRSH.W         R2, [R1,#0x18C]
D1FE8:  ADD             R3, R12
D1FEA:  MOV.W           R12, #0x33 ; '3'
D1FEE:  SXTH            R3, R3
D1FF0:  SMULBB.W        R2, R3, R2
D1FF4:  UXTH            R3, R2
D1FF6:  MUL.W           R3, R3, R12
D1FFA:  LSRS            R3, R3, #0x10
D1FFC:  SMLATB.W        R2, R2, R12, R3
D2000:  CMP             R2, #2
D2002:  BLE             loc_D2008
D2004:  MOVS            R2, #2
D2006:  B               loc_D200E
D2008:  CMP             R2, #0
D200A:  IT LE
D200C:  MOVLE           R2, #0
D200E:  PUSH            {R7,LR}
D2010:  MOV             R7, SP
D2012:  LDR             R3, =(silk_LTPScales_table_Q14_ptr - 0xD2020)
D2014:  MOVW            LR, #0x12A1
D2018:  STRB.W          R2, [R0,LR]
D201C:  ADD             R3, PC; silk_LTPScales_table_Q14_ptr
D201E:  LDR.W           R12, [R3]; silk_LTPScales_table_Q14
D2022:  SXTB            R3, R2
D2024:  LDRSH.W         R3, [R12,R3,LSL#1]
D2028:  STR             R3, [R1,#0x78]
D202A:  POP             {R7,PC}
