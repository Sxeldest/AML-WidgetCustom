; =========================================================
; Game Engine Function: sub_F8630
; Address            : 0xF8630 - 0xF86A4
; =========================================================

F8630:  PUSH            {R4-R7,LR}
F8632:  ADD             R7, SP, #0xC
F8634:  PUSH.W          {R8}
F8638:  SUB             SP, SP, #0x28
F863A:  MOV             R8, R0
F863C:  LDR             R0, =(unk_B2BA6 - 0xF8646)
F863E:  MOV             R4, R3
F8640:  MOV             R5, R2
F8642:  ADD             R0, PC; unk_B2BA6
F8644:  MOV             R6, R1
F8646:  BL              sub_107188
F864A:  VMOV            S0, R6
F864E:  VLDR            S2, [R7,#arg_4]
F8652:  VMOV            S4, R5
F8656:  VLDR            S6, [R7,#arg_8]
F865A:  VCVT.F64.F32    D16, S0
F865E:  LDR             R0, =(unk_B2BF6 - 0xF8666)
F8660:  MOVS            R1, #0
F8662:  ADD             R0, PC; unk_B2BF6
F8664:  STR.W           R1, [R8,#4]
F8668:  VMOV            R2, R3, D16
F866C:  VLDR            S0, [R7,#arg_0]
F8670:  VCVT.F64.F32    D16, S6
F8674:  VCVT.F64.F32    D17, S2
F8678:  VCVT.F64.F32    D18, S0
F867C:  VCVT.F64.F32    D19, S4
F8680:  VMOV            S8, R4
F8684:  VSTR            D18, [SP,#0x38+var_28]
F8688:  VSTR            D17, [SP,#0x38+var_20]
F868C:  VCVT.F64.F32    D20, S8
F8690:  VSTMEA          SP, {D19-D20}
F8694:  VSTR            D16, [SP,#0x38+var_18]
F8698:  BL              sub_107188
F869C:  ADD             SP, SP, #0x28 ; '('
F869E:  POP.W           {R8}
F86A2:  POP             {R4-R7,PC}
