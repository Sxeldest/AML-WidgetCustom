; =========================================================
; Game Engine Function: sub_1DAFA0
; Address            : 0x1DAFA0 - 0x1DB162
; =========================================================

1DAFA0:  PUSH            {R4-R7,LR}
1DAFA2:  ADD             R7, SP, #0xC
1DAFA4:  PUSH.W          {R8-R11}
1DAFA8:  SUB             SP, SP, #8
1DAFAA:  SUBS            R6, R2, R1
1DAFAC:  VLDR            S2, =0.000015259
1DAFB0:  MOV.W           R10, R3,ASR#16
1DAFB4:  VMOV            S0, R6
1DAFB8:  ASRS            R6, R1, #0x10
1DAFBA:  CMP.W           R6, R2,ASR#16
1DAFBE:  VCVT.F32.S32    S0, S0
1DAFC2:  LDRD.W          R9, R8, [R0,#0x10]
1DAFC6:  LDR             R0, [R7,#arg_0]
1DAFC8:  MLA.W           R4, R9, R10, R8
1DAFCC:  VMUL.F32        S0, S0, S2
1DAFD0:  ADD.W           R5, R4, R6,LSL#2
1DAFD4:  BNE             loc_1DB042
1DAFD6:  LDRB.W          R1, [R4,R6,LSL#2]
1DAFDA:  ADD.W           R12, R0, #0xC
1DAFDE:  VLDR            S4, =0.0039216
1DAFE2:  ADD.W           LR, R0, #8
1DAFE6:  ADD.W           R11, R0, #4
1DAFEA:  VMOV            S2, R1
1DAFEE:  VCVT.F32.U32    S2, S2
1DAFF2:  VMUL.F32        S2, S2, S4
1DAFF6:  VSTR            S2, [R0]
1DAFFA:  LDRB            R1, [R5,#1]
1DAFFC:  VMOV            S6, R1
1DB000:  VCVT.F32.U32    S6, S6
1DB004:  VMUL.F32        S6, S6, S4
1DB008:  VSTR            S6, [R0,#4]
1DB00C:  LDRB            R1, [R5,#2]
1DB00E:  VMOV            S8, R1
1DB012:  VCVT.F32.U32    S8, S8
1DB016:  VMUL.F32        S8, S8, S4
1DB01A:  VSTR            S8, [R0,#8]
1DB01E:  LDRB            R1, [R5,#3]
1DB020:  VMOV            S10, R1
1DB024:  VCVT.F32.U32    S10, S10
1DB028:  VMUL.F32        S10, S10, S4
1DB02C:  VMUL.F32        S5, S0, S6
1DB030:  VMUL.F32        S4, S0, S2
1DB034:  VMUL.F32        S6, S0, S8
1DB038:  VMUL.F32        S7, S0, S10
1DB03C:  VSTM            R0, {S4-S7}
1DB040:  B               loc_1DB132
1DB042:  LDRB.W          R4, [R4,R6,LSL#2]
1DB046:  ADD.W           R12, R0, #0xC
1DB04A:  VLDR            S8, =0.0039216
1DB04E:  ADD.W           LR, R0, #8
1DB052:  ADD.W           R11, R0, #4
1DB056:  VMOV            S4, R4
1DB05A:  ASRS            R3, R2, #0x10
1DB05C:  VCVT.F32.U32    S4, S4
1DB060:  VMUL.F32        S4, S4, S8
1DB064:  VSTR            S4, [R0]
1DB068:  LDRB            R4, [R5,#1]
1DB06A:  VMOV            S10, R4
1DB06E:  VCVT.F32.U32    S10, S10
1DB072:  VMUL.F32        S5, S10, S8
1DB076:  VSTR            S5, [R0,#4]
1DB07A:  LDRB            R4, [R5,#2]
1DB07C:  VMOV            S10, R4
1DB080:  VCVT.F32.U32    S10, S10
1DB084:  VMUL.F32        S6, S10, S8
1DB088:  VSTR            S6, [R0,#8]
1DB08C:  LDRB            R4, [R5,#3]
1DB08E:  VMOV            S10, R4
1DB092:  MOV.W           R4, #0x10000
1DB096:  ADD.W           R4, R4, R6,LSL#16
1DB09A:  SUBS            R1, R4, R1
1DB09C:  VCVT.F32.U32    S10, S10
1DB0A0:  CMP.W           R3, R4,ASR#16
1DB0A4:  VMOV            S12, R1
1DB0A8:  VCVT.F32.S32    S12, S12
1DB0AC:  VMUL.F32        S7, S10, S8
1DB0B0:  VMUL.F32        S8, S12, S2
1DB0B4:  VMUL.F32        Q8, Q1, D4[0]
1DB0B8:  VST1.32         {D16-D17}, [R0]
1DB0BC:  LDR             R1, [R5,#4]
1DB0BE:  STR             R1, [SP,#0x24+var_20]
1DB0C0:  ADD             R1, SP, #0x24+var_20
1DB0C2:  VLD1.32         {D18[0]}, [R1@32]
1DB0C6:  ADR             R1, dword_1DB170
1DB0C8:  VMOVL.U8        Q9, D18
1DB0CC:  VLD1.64         {D20-D21}, [R1@128]
1DB0D0:  VMOVL.U16       Q9, D18
1DB0D4:  VCVT.F32.U32    Q9, Q9
1DB0D8:  VMUL.F32        Q9, Q9, Q10
1DB0DC:  BEQ             loc_1DB118
1DB0DE:  MUL.W           R5, R9, R10
1DB0E2:  ADD.W           R5, R5, R6,LSL#2
1DB0E6:  MOV             R6, SP
1DB0E8:  ADD             R5, R8
1DB0EA:  ADDS            R5, #8
1DB0EC:  VADD.F32        Q8, Q9, Q8
1DB0F0:  ADD.W           R4, R4, #0x10000
1DB0F4:  CMP.W           R3, R4,ASR#16
1DB0F8:  VST1.32         {D16-D17}, [R0]
1DB0FC:  LDR.W           R1, [R5],#4
1DB100:  STR             R1, [SP,#0x24+var_24]
1DB102:  VLD1.32         {D18[0]}, [R6@32]
1DB106:  VMOVL.U8        Q9, D18
1DB10A:  VMOVL.U16       Q9, D18
1DB10E:  VCVT.F32.U32    Q9, Q9
1DB112:  VMUL.F32        Q9, Q9, Q10
1DB116:  BNE             loc_1DB0EC
1DB118:  SUBS            R1, R2, R4
1DB11A:  VMOV            S4, R1
1DB11E:  VCVT.F32.S32    S4, S4
1DB122:  VMUL.F32        S2, S4, S2
1DB126:  VMUL.F32        Q9, Q9, D1[0]
1DB12A:  VADD.F32        Q1, Q9, Q8
1DB12E:  VST1.32         {D2-D3}, [R0]
1DB132:  VMOV.F32        S2, #1.0
1DB136:  VDIV.F32        S0, S2, S0
1DB13A:  VMUL.F32        S2, S0, S4
1DB13E:  VMUL.F32        S8, S0, S5
1DB142:  VMUL.F32        S10, S0, S6
1DB146:  VMUL.F32        S0, S0, S7
1DB14A:  VSTR            S2, [R0]
1DB14E:  VSTR            S8, [R11]
1DB152:  VSTR            S10, [LR]
1DB156:  VSTR            S0, [R12]
1DB15A:  ADD             SP, SP, #8
1DB15C:  POP.W           {R8-R11}
1DB160:  POP             {R4-R7,PC}
