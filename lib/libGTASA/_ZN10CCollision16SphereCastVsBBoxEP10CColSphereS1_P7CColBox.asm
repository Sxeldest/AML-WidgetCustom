; =========================================================
; Game Engine Function: _ZN10CCollision16SphereCastVsBBoxEP10CColSphereS1_P7CColBox
; Address            : 0x2E0040 - 0x2E00C4
; =========================================================

2E0040:  PUSH            {R4,R6,R7,LR}
2E0042:  ADD             R7, SP, #8
2E0044:  SUB             SP, SP, #0x40
2E0046:  ADD             R4, SP, #0x48+var_28
2E0048:  MOV             R3, R1
2E004A:  MOV             R1, R0; CVector *
2E004C:  ADD.W           R0, R2, #0xC
2E0050:  VLD1.32         {D16-D17}, [R2]
2E0054:  ADD.W           R2, R4, #0xC
2E0058:  VLD1.32         {D18-D19}, [R0]
2E005C:  MOV             R0, R4
2E005E:  VST1.64         {D16-D17}, [R0]!
2E0062:  VLDR            S0, [SP,#0x48+var_28]
2E0066:  VLDR            S2, [SP,#0x48+var_24]
2E006A:  VLDR            S4, [SP,#0x48+var_20]
2E006E:  VST1.32         {D18-D19}, [R2]
2E0072:  MOV             R2, R3; CVector *
2E0074:  VLDR            S6, [R1,#0xC]
2E0078:  VLDR            S8, [SP,#0x48+var_1C]
2E007C:  VLDR            S10, [R0]
2E0080:  VSUB.F32        S0, S0, S6
2E0084:  VLDR            S12, [SP,#0x48+var_14]
2E0088:  VSUB.F32        S2, S2, S6
2E008C:  VSUB.F32        S4, S4, S6
2E0090:  VADD.F32        S8, S6, S8
2E0094:  VADD.F32        S10, S6, S10
2E0098:  VADD.F32        S6, S6, S12
2E009C:  VSTR            S0, [SP,#0x48+var_28]
2E00A0:  VSTR            S2, [SP,#0x48+var_24]
2E00A4:  VSTR            S4, [SP,#0x48+var_20]
2E00A8:  VSTR            S8, [SP,#0x48+var_1C]
2E00AC:  VSTR            S10, [R0]
2E00B0:  MOV             R0, SP; this
2E00B2:  VSTR            S6, [SP,#0x48+var_14]
2E00B6:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2E00BA:  MOV             R1, R4; CColLine *
2E00BC:  BLX             j__ZN10CCollision14TestLineBox_DWERK8CColLineRK4CBox; CCollision::TestLineBox_DW(CColLine const&,CBox const&)
2E00C0:  ADD             SP, SP, #0x40 ; '@'
2E00C2:  POP             {R4,R6,R7,PC}
