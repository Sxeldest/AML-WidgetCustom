; =========================================================
; Game Engine Function: _Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType
; Address            : 0x1E3F54 - 0x1E40A6
; =========================================================

1E3F54:  PUSH            {R4,R6,R7,LR}
1E3F56:  ADD             R7, SP, #8
1E3F58:  SUB             SP, SP, #8
1E3F5A:  MOV             R4, R0
1E3F5C:  CMP             R2, #2
1E3F5E:  BEQ             loc_1E3FA2
1E3F60:  CMP             R2, #1
1E3F62:  BEQ             loc_1E3FD4
1E3F64:  CMP             R2, #0
1E3F66:  BNE.W           loc_1E407E
1E3F6A:  MOV.W           R0, #0x3F800000
1E3F6E:  MOVS            R2, #0
1E3F70:  STR             R0, [R4,#0x14]
1E3F72:  STR             R2, [R4,#0x10]
1E3F74:  STR             R2, [R4,#8]
1E3F76:  STRD.W          R0, R2, [R4]
1E3F7A:  STR             R2, [R4,#0x18]
1E3F7C:  STRD.W          R2, R2, [R4,#0x20]
1E3F80:  STR             R0, [R4,#0x28]
1E3F82:  STRD.W          R2, R2, [R4,#0x30]
1E3F86:  STR             R2, [R4,#0x38]
1E3F88:  LDR             R0, [R4,#0xC]
1E3F8A:  ORR.W           R0, R0, #0x20000
1E3F8E:  ORR.W           R0, R0, #3
1E3F92:  STR             R0, [R4,#0xC]
1E3F94:  LDR             R0, [R1]
1E3F96:  STR             R0, [R4,#0x30]
1E3F98:  LDR             R0, [R1,#4]
1E3F9A:  STR             R0, [R4,#0x34]
1E3F9C:  LDR             R0, [R1,#8]
1E3F9E:  STR             R0, [R4,#0x38]
1E3FA0:  B               loc_1E4098
1E3FA2:  VLDR            S0, [R4,#0x30]
1E3FA6:  VLDR            S6, [R1]
1E3FAA:  VLDR            S2, [R4,#0x34]
1E3FAE:  VADD.F32        S0, S0, S6
1E3FB2:  VLDR            S4, [R4,#0x38]
1E3FB6:  VSTR            S0, [R4,#0x30]
1E3FBA:  VLDR            S0, [R1,#4]
1E3FBE:  VADD.F32        S0, S2, S0
1E3FC2:  VSTR            S0, [R4,#0x34]
1E3FC6:  VLDR            S0, [R1,#8]
1E3FCA:  VADD.F32        S0, S4, S0
1E3FCE:  VSTR            S0, [R4,#0x38]
1E3FD2:  B               loc_1E4098
1E3FD4:  VLDR            S0, [R4]
1E3FD8:  VLDR            S8, [R1]
1E3FDC:  VLDR            S4, [R4,#0x10]
1E3FE0:  VLDR            S10, [R1,#4]
1E3FE4:  VMUL.F32        S0, S8, S0
1E3FE8:  VLDR            S12, [R1,#8]
1E3FEC:  VMUL.F32        S4, S10, S4
1E3FF0:  VLDR            S8, [R4,#0x20]
1E3FF4:  VLDR            S2, [R4,#4]
1E3FF8:  VMUL.F32        S8, S12, S8
1E3FFC:  VLDR            S6, [R4,#0x14]
1E4000:  VADD.F32        S0, S0, S4
1E4004:  VLDR            S4, [R4,#0x30]
1E4008:  VADD.F32        S0, S0, S8
1E400C:  VADD.F32        S0, S4, S0
1E4010:  VSTR            S0, [R4,#0x30]
1E4014:  VLDR            S0, [R1]
1E4018:  VLDR            S4, [R1,#4]
1E401C:  VMUL.F32        S0, S0, S2
1E4020:  VLDR            S8, [R1,#8]
1E4024:  VMUL.F32        S4, S4, S6
1E4028:  VLDR            S2, [R4,#0x24]
1E402C:  VMUL.F32        S2, S8, S2
1E4030:  VADD.F32        S0, S0, S4
1E4034:  VADD.F32        S0, S0, S2
1E4038:  VLDR            S2, [R4,#0x34]
1E403C:  VADD.F32        S0, S2, S0
1E4040:  VSTR            S0, [R4,#0x34]
1E4044:  VLDR            S0, [R4,#8]
1E4048:  VLDR            S6, [R1]
1E404C:  VLDR            S2, [R4,#0x18]
1E4050:  VLDR            S8, [R1,#4]
1E4054:  VMUL.F32        S0, S6, S0
1E4058:  VLDR            S4, [R4,#0x28]
1E405C:  VMUL.F32        S2, S8, S2
1E4060:  VLDR            S10, [R1,#8]
1E4064:  VMUL.F32        S4, S10, S4
1E4068:  VADD.F32        S0, S0, S2
1E406C:  VLDR            S2, [R4,#0x38]
1E4070:  VADD.F32        S0, S0, S4
1E4074:  VADD.F32        S0, S2, S0
1E4078:  VSTR            S0, [R4,#0x38]
1E407C:  B               loc_1E4098
1E407E:  LDR             R1, =(aInvalidCombina_0 - 0x1E408C); "Invalid combination type"
1E4080:  MOVS            R0, #3
1E4082:  MOVS            R4, #0
1E4084:  MOVT            R0, #0x8000; int
1E4088:  ADD             R1, PC; "Invalid combination type"
1E408A:  STR             R4, [SP,#0x10+var_10]
1E408C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E4090:  STR             R0, [SP,#0x10+var_C]
1E4092:  MOV             R0, SP
1E4094:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E4098:  LDR             R0, [R4,#0xC]
1E409A:  BIC.W           R0, R0, #0x20000
1E409E:  STR             R0, [R4,#0xC]
1E40A0:  MOV             R0, R4
1E40A2:  ADD             SP, SP, #8
1E40A4:  POP             {R4,R6,R7,PC}
