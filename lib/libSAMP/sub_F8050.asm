; =========================================================
; Game Engine Function: sub_F8050
; Address            : 0xF8050 - 0xF80E8
; =========================================================

F8050:  PUSH            {R4,R5,R7,LR}
F8052:  ADD             R7, SP, #8
F8054:  VPUSH           {D8}
F8058:  SUB             SP, SP, #8
F805A:  VLDR            S16, [R0,#4]
F805E:  MOV             R4, R1
F8060:  MOV             R5, R0
F8062:  LDR             R0, [R0]; y
F8064:  VMOV            R1, S16; x
F8068:  BLX             atan2f
F806C:  VMOV            S0, R0
F8070:  VLDR            D17, =-1.57079637
F8074:  ADD             R1, SP, #0x18+var_14
F8076:  MOV             R2, SP
F8078:  VCVT.F64.F32    D16, S0
F807C:  VADD.F64        D16, D16, D17
F8080:  VCVT.F32.F64    S0, D16
F8084:  VMOV            R0, S0
F8088:  BLX             sincosf
F808C:  VLDR            S0, [R5,#8]
F8090:  VMOV.I32        D18, #0
F8094:  VLDR            S2, [SP,#0x18+var_18]
F8098:  VCVT.F64.F32    D16, S16
F809C:  VMUL.F32        S4, S0, S2
F80A0:  VLDR            S6, [SP,#0x18+var_14]
F80A4:  VMUL.F32        S0, S0, S6
F80A8:  VCVT.F64.F32    D17, S4
F80AC:  VNMLS.F64       D17, D16, D18
F80B0:  VCVT.F32.F64    S4, D17
F80B4:  VSTR            S4, [R4]
F80B8:  VLDR            S4, [R5]
F80BC:  VCVT.F64.F32    D17, S0
F80C0:  VCVT.F64.F32    D16, S4
F80C4:  VMLS.F64        D17, D16, D18
F80C8:  VCVT.F32.F64    S0, D17
F80CC:  VMUL.F32        S2, S2, S4
F80D0:  VSTR            S0, [R4,#4]
F80D4:  VLDR            S0, [R5,#4]
F80D8:  VMLS.F32        S2, S0, S6
F80DC:  VSTR            S2, [R4,#8]
F80E0:  ADD             SP, SP, #8
F80E2:  VPOP            {D8}
F80E6:  POP             {R4,R5,R7,PC}
