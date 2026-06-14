; =========================================================
; Game Engine Function: _ZN7CCamera23ProcessVectorMoveLinearEf
; Address            : 0x3E1FF4 - 0x3E20E8
; =========================================================

3E1FF4:  PUSH            {R4,R6,R7,LR}
3E1FF6:  ADD             R7, SP, #8
3E1FF8:  VPUSH           {D8}
3E1FFC:  MOV             R4, R0
3E1FFE:  VMOV            S0, R1
3E2002:  ADDW            R1, R4, #0xC4C
3E2006:  LDRB.W          R0, [R4,#0xC64]
3E200A:  VLDR            S16, [R1]
3E200E:  MOVS            R1, #1
3E2010:  CMP             R0, #0
3E2012:  STRB.W          R1, [R4,#0xC74]
3E2016:  BEQ             loc_3E207A
3E2018:  VLDR            S2, =180.0
3E201C:  VLDR            S4, =270.0
3E2020:  VMUL.F32        S0, S0, S2
3E2024:  VSUB.F32        S0, S4, S0
3E2028:  VLDR            S4, =3.1416
3E202C:  VMUL.F32        S0, S0, S4
3E2030:  VDIV.F32        S0, S0, S2
3E2034:  VMOV            R0, S0; x
3E2038:  BLX             sinf
3E203C:  VMOV.F32        S0, #1.0
3E2040:  VMOV            S2, R0
3E2044:  ADDW            R0, R4, #0xC58
3E2048:  VMOV.F32        S4, #0.5
3E204C:  VADD.F32        S0, S2, S0
3E2050:  VLDR            S2, [R0]
3E2054:  ADD.W           R0, R4, #0xC50
3E2058:  VSUB.F32        S6, S2, S16
3E205C:  VLDR            S2, [R0]
3E2060:  ADDW            R0, R4, #0xC5C
3E2064:  VMUL.F32        S4, S0, S4
3E2068:  VLDR            S0, [R0]
3E206C:  VSUB.F32        S0, S0, S2
3E2070:  VMUL.F32        S6, S4, S6
3E2074:  VMOV.F32        S8, S4
3E2078:  B               loc_3E20A2
3E207A:  ADDW            R0, R4, #0xC58
3E207E:  VMOV.F32        S8, S0
3E2082:  VLDR            S2, [R0]
3E2086:  ADD.W           R0, R4, #0xC50
3E208A:  VSUB.F32        S6, S2, S16
3E208E:  VLDR            S2, [R0]
3E2092:  ADDW            R0, R4, #0xC5C
3E2096:  VLDR            S4, [R0]
3E209A:  VSUB.F32        S4, S4, S2
3E209E:  VMUL.F32        S6, S6, S0
3E20A2:  ADDW            R0, R4, #0xC54
3E20A6:  VMUL.F32        S0, S0, S4
3E20AA:  VADD.F32        S6, S16, S6
3E20AE:  VLDR            S10, [R0]
3E20B2:  ADD.W           R0, R4, #0xC60
3E20B6:  VLDR            S12, [R0]
3E20BA:  ADDW            R0, R4, #0xC68
3E20BE:  VSUB.F32        S12, S12, S10
3E20C2:  VADD.F32        S0, S2, S0
3E20C6:  VSTR            S6, [R0]
3E20CA:  ADDW            R0, R4, #0xC6C
3E20CE:  VMUL.F32        S4, S8, S12
3E20D2:  VSTR            S0, [R0]
3E20D6:  ADD.W           R0, R4, #0xC70
3E20DA:  VADD.F32        S2, S10, S4
3E20DE:  VSTR            S2, [R0]
3E20E2:  VPOP            {D8}
3E20E6:  POP             {R4,R6,R7,PC}
