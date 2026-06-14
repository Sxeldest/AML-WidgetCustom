; =========================================================
; Game Engine Function: _ZNK27CEventPotentialWalkIntoFire13CloneEditableEv
; Address            : 0x37AD34 - 0x37ADFE
; =========================================================

37AD34:  PUSH            {R4,R6,R7,LR}
37AD36:  ADD             R7, SP, #8
37AD38:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37AD42)
37AD3A:  MOV.W           LR, #0
37AD3E:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37AD40:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37AD42:  LDR             R2, [R1]; CPools::ms_pEventPool
37AD44:  LDRD.W          R12, R1, [R2,#8]
37AD48:  ADDS            R1, #1
37AD4A:  STR             R1, [R2,#0xC]
37AD4C:  CMP             R1, R12
37AD4E:  BNE             loc_37AD5E
37AD50:  MOVS            R1, #0
37AD52:  MOVS.W          R3, LR,LSL#31
37AD56:  STR             R1, [R2,#0xC]
37AD58:  BNE             loc_37AD90
37AD5A:  MOV.W           LR, #1
37AD5E:  LDR             R3, [R2,#4]
37AD60:  LDRSB           R4, [R3,R1]
37AD62:  CMP.W           R4, #0xFFFFFFFF
37AD66:  BGT             loc_37AD48
37AD68:  AND.W           R4, R4, #0x7F
37AD6C:  STRB            R4, [R3,R1]
37AD6E:  LDR             R1, [R2,#4]
37AD70:  LDR             R3, [R2,#0xC]
37AD72:  LDRB            R4, [R1,R3]
37AD74:  AND.W           R12, R4, #0x80
37AD78:  ADDS            R4, #1
37AD7A:  AND.W           R4, R4, #0x7F
37AD7E:  ORR.W           R4, R4, R12
37AD82:  STRB            R4, [R1,R3]
37AD84:  LDR             R1, [R2]
37AD86:  LDR             R2, [R2,#0xC]
37AD88:  ADD.W           R2, R2, R2,LSL#4
37AD8C:  ADD.W           R1, R1, R2,LSL#2
37AD90:  VMOV.F32        S0, #2.0
37AD94:  VLDR            S4, [R0,#0x1C]
37AD98:  VMOV.F32        S2, #1.0
37AD9C:  MOVS            R4, #0
37AD9E:  LDR             R3, [R0,#0x24]
37ADA0:  MOVW            R12, #0xFFFF
37ADA4:  STR             R4, [R1,#4]
37ADA6:  MOV             R4, #0xC80100
37ADAE:  LDR             R2, =(_ZTV27CEventPotentialWalkIntoFire_ptr - 0x37ADB8)
37ADB0:  STR             R4, [R1,#8]
37ADB2:  ADR             R4, loc_37AE0C
37ADB4:  ADD             R2, PC; _ZTV27CEventPotentialWalkIntoFire_ptr
37ADB6:  VLDR            S6, =1.05
37ADBA:  VCMPE.F32       S4, S0
37ADBE:  VMRS            APSR_nzcv, FPSCR
37ADC2:  VCMPE.F32       S4, S2
37ADC6:  LDR             R2, [R2]; `vtable for'CEventPotentialWalkIntoFire ...
37ADC8:  ADD.W           R2, R2, #8
37ADCC:  IT LT
37ADCE:  ADDLT           R4, #4
37ADD0:  VMRS            APSR_nzcv, FPSCR
37ADD4:  VLDR            S0, [R4]
37ADD8:  STRH.W          R12, [R1,#0xC]
37ADDC:  IT LT
37ADDE:  VMOVLT.F32      S0, S6
37ADE2:  STR             R2, [R1]
37ADE4:  VLDR            D16, [R0,#0x10]
37ADE8:  LDR             R2, [R0,#0x18]
37ADEA:  MOV             R0, R1
37ADEC:  STR             R2, [R1,#0x18]
37ADEE:  STR             R3, [R1,#0x24]
37ADF0:  VSTR            D16, [R1,#0x10]
37ADF4:  VSTR            S4, [R1,#0x1C]
37ADF8:  VSTR            S0, [R1,#0x20]
37ADFC:  POP             {R4,R6,R7,PC}
