; =========================================================
; Game Engine Function: sub_F1538
; Address            : 0xF1538 - 0xF15D4
; =========================================================

F1538:  PUSH            {R4-R7,LR}
F153A:  ADD             R7, SP, #0xC
F153C:  PUSH.W          {R8}
F1540:  SUB             SP, SP, #0x28
F1542:  MOV             R12, R3
F1544:  MOV             R0, R1
F1546:  LDRD.W          R3, R1, [R7,#arg_10]
F154A:  MOV             LR, R2
F154C:  LDR             R6, [R7,#arg_18]
F154E:  LDRD.W          R4, R5, [R7,#arg_8]
F1552:  LDRD.W          R8, R2, [R7,#arg_0]
F1556:  STRD.W          R5, R3, [SP,#0x38+var_18]
F155A:  MOV.W           R3, #0xFFFFFFFF
F155E:  CMP             R2, R4
F1560:  STRD.W          R1, R6, [SP,#0x38+var_20]
F1564:  BCS             loc_F1598
F1566:  ORRS.W          R1, R4, R2
F156A:  BEQ             loc_F1598
F156C:  VMOV            S0, R4
F1570:  VLDR            D17, =255.0
F1574:  VCVT.F64.U32    D16, S0
F1578:  VDIV.F64        D16, D17, D16
F157C:  VMOV            S0, R2
F1580:  MOV             R2, #0xFFFFFF
F1584:  VCVT.F64.U32    D17, S0
F1588:  VMUL.F64        D16, D16, D17
F158C:  VCVT.U32.F64    S0, D16
F1590:  VMOV            R1, S0
F1594:  ORR.W           R3, R2, R1,LSL#24
F1598:  VLDR            S0, [R8]
F159C:  ADD             R1, SP, #0x38+var_20
F159E:  VLDR            S4, [R12]
F15A2:  ADD             R2, SP, #0x38+var_18
F15A4:  VLDR            S2, [R8,#4]
F15A8:  VLDR            S6, [R12,#4]
F15AC:  VADD.F32        S0, S4, S0
F15B0:  STR             R3, [SP,#0x38+var_30]
F15B2:  ADD             R3, SP, #0x38+var_28
F15B4:  VADD.F32        S2, S6, S2
F15B8:  STRD.W          R2, R1, [SP,#0x38+var_38]
F15BC:  MOV             R1, LR
F15BE:  MOV             R2, R12
F15C0:  VSTR            S0, [SP,#0x38+var_28]
F15C4:  VSTR            S2, [SP,#0x38+var_24]
F15C8:  BL              sub_174BE2
F15CC:  ADD             SP, SP, #0x28 ; '('
F15CE:  POP.W           {R8}
F15D2:  POP             {R4-R7,PC}
