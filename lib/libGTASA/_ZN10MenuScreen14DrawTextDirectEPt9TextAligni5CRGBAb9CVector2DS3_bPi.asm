; =========================================================
; Game Engine Function: _ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi
; Address            : 0x298FF4 - 0x29926A
; =========================================================

298FF4:  PUSH            {R4-R7,LR}
298FF6:  ADD             R7, SP, #0xC
298FF8:  PUSH.W          {R8-R11}
298FFC:  SUB             SP, SP, #4
298FFE:  VPUSH           {D8-D14}
299002:  SUB             SP, SP, #0x20
299004:  ADD.W           R11, R7, #0x1C
299008:  STR             R0, [SP,#0x78+var_6C]
29900A:  LDR             R0, [R7,#arg_8]
29900C:  MOV             R10, R2
29900E:  LDM.W           R11, {R8,R9,R11}
299012:  MOV             R4, R1
299014:  CMP             R0, #1
299016:  LDRD.W          R5, R6, [R7,#arg_0]
29901A:  STR             R3, [SP,#0x78+var_68]
29901C:  BNE             loc_29905C
29901E:  MOV             R1, R6
299020:  MOVS            R2, #0; unsigned __int8
299022:  LDRB.W          R0, [R1,#3]!
299026:  MOVS            R3, #0; unsigned __int8
299028:  STR             R1, [SP,#0x78+var_70]
29902A:  MOVS            R1, #0; unsigned __int8
29902C:  VMOV            S0, R0
299030:  VCVT.F32.U32    S0, S0
299034:  VLDR            S2, [R4,#8]
299038:  VMUL.F32        S0, S2, S0
29903C:  VCVT.U32.F32    S0, S0
299040:  VMOV            R0, S0
299044:  STR             R0, [SP,#0x78+var_78]; unsigned __int8
299046:  ADD             R0, SP, #0x78+var_5C; this
299048:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29904C:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
299050:  MOVS            R0, #(stderr+1); this
299052:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
299056:  ADD.W           R0, R4, #8
29905A:  B               loc_29907E
29905C:  MOVS            R0, #0
29905E:  MOVS            R1, #0; unsigned __int8
299060:  STR             R0, [SP,#0x78+var_78]; unsigned __int8
299062:  ADD             R0, SP, #0x78+var_60; this
299064:  MOVS            R2, #0; unsigned __int8
299066:  MOVS            R3, #0; unsigned __int8
299068:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29906C:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
299070:  MOVS            R0, #0; this
299072:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
299076:  ADD.W           R0, R4, #8
29907A:  ADDS            R1, R6, #3
29907C:  STR             R1, [SP,#0x78+var_70]
29907E:  LDRB            R1, [R6]; unsigned __int8
299080:  LDRB            R2, [R6,#1]; unsigned __int8
299082:  LDRB            R3, [R6,#2]; unsigned __int8
299084:  LDRB            R6, [R6,#3]
299086:  LDR             R4, [R7,#arg_10]
299088:  VMOV            S0, R6
29908C:  VCVT.F32.U32    S0, S0
299090:  VLDR            S2, [R0]
299094:  VMUL.F32        S0, S2, S0
299098:  VCVT.U32.F32    S0, S0
29909C:  VMOV            R0, S0
2990A0:  STR             R0, [SP,#0x78+var_78]; unsigned __int8
2990A2:  ADD             R0, SP, #0x78+var_64; this
2990A4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2990A8:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2990AC:  UXTB            R0, R5; this
2990AE:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2990B2:  LDR             R0, =(RsGlobal_ptr - 0x2990C0)
2990B4:  VMOV            S2, R9
2990B8:  VLDR            S0, =0.05
2990BC:  ADD             R0, PC; RsGlobal_ptr
2990BE:  VLDR            S16, =480.0
2990C2:  VMUL.F32        S0, S2, S0
2990C6:  LDR             R0, [R0]; RsGlobal
2990C8:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
2990CA:  VMOV            S2, R0
2990CE:  VCVT.F32.S32    S18, S2
2990D2:  VMUL.F32        S0, S0, S18
2990D6:  VDIV.F32        S22, S0, S16
2990DA:  VMOV            R0, S22; this
2990DE:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2990E2:  MOV             R0, R10; this
2990E4:  MOVS            R1, #(stderr+1); unsigned __int16 *
2990E6:  MOVS            R2, #0; unsigned __int8
2990E8:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2990EC:  VMOV            S0, R8
2990F0:  MOVS            R6, #0
2990F2:  VMUL.F32        S0, S0, S18
2990F6:  VMOV            S18, R0
2990FA:  MOVS            R0, #0; this
2990FC:  VDIV.F32        S20, S0, S16
299100:  VCMPE.F32       S18, S20
299104:  VMRS            APSR_nzcv, FPSCR
299108:  IT GT
29910A:  MOVGT           R6, #1
29910C:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
299110:  VCMPE.F32       S18, S20
299114:  AND.W           R6, R6, R11
299118:  VMRS            APSR_nzcv, FPSCR
29911C:  BLE             loc_299160
29911E:  CMP.W           R11, #0
299122:  BNE             loc_299160
299124:  VDIV.F32        S0, S20, S18
299128:  VMUL.F32        S0, S22, S0
29912C:  VMOV            S24, R0
299130:  VMOV            R0, S0; this
299134:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
299138:  MOVS            R0, #0; this
29913A:  MOVS            R6, #0
29913C:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
299140:  VMOV            S0, R0
299144:  VMOV.F32        S2, #0.5
299148:  VSUB.F32        S0, S24, S0
29914C:  VMOV.F32        S18, S20
299150:  VMUL.F32        S0, S0, S2
299154:  VMOV            S2, R4
299158:  VADD.F32        S0, S0, S2
29915C:  VMOV            R4, S0
299160:  LDR             R0, =(RsGlobal_ptr - 0x29916E)
299162:  VMOV.F32        S24, #0.5
299166:  LDR             R1, [R7,#arg_C]
299168:  CMP             R6, #1
29916A:  ADD             R0, PC; RsGlobal_ptr
29916C:  VLDR            S0, =-320.0
299170:  VMOV            S28, R4
299174:  LDR             R0, [R0]; RsGlobal
299176:  VMOV            S2, R1; float
29917A:  VADD.F32        S0, S2, S0
29917E:  VLDR            S6, [R0,#8]
299182:  VLDR            S4, [R0,#4]
299186:  VCVT.F32.S32    S26, S6
29918A:  VMUL.F32        S0, S0, S26
29918E:  VDIV.F32        S2, S0, S16
299192:  VCVT.F32.S32    S0, S4
299196:  VMUL.F32        S4, S0, S24
29919A:  VADD.F32        S22, S4, S2
29919E:  IT EQ
2991A0:  VADDEQ.F32      S0, S20, S22
2991A4:  VMOV            R0, S0; this
2991A8:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2991AC:  LDR             R6, [SP,#0x78+var_6C]
2991AE:  VMUL.F32        S26, S28, S26
2991B2:  LDR             R4, [R7,#arg_20]
2991B4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2991B8:  LDR             R1, [SP,#0x78+var_68]
2991BA:  CMP             R1, #2
2991BC:  BEQ             loc_2991D4
2991BE:  CMP             R1, #1
2991C0:  BNE             loc_2991E4
2991C2:  VMOV            S0, R0
2991C6:  VCVT.F32.U32    S0, S0
2991CA:  VSUB.F32        S0, S0, S18
2991CE:  VMUL.F32        S22, S0, S24
2991D2:  B               loc_2991E4
2991D4:  VMOV.F32        S0, #-0.5
2991D8:  VSUB.F32        S2, S20, S18
2991DC:  VADD.F32        S0, S2, S0
2991E0:  VADD.F32        S22, S0, S22
2991E4:  VDIV.F32        S20, S26, S16
2991E8:  CBZ             R4, loc_2991FA
2991EA:  VMOV            R0, S22; this
2991EE:  MOV             R2, R10; float
2991F0:  VMOV            R1, S20; float
2991F4:  BLX             j__ZN5CFont14GetNumberLinesEffPt; CFont::GetNumberLines(float,float,ushort *)
2991F8:  STR             R0, [R4]
2991FA:  LDR             R0, [SP,#0x78+var_70]
2991FC:  LDRB            R0, [R0]
2991FE:  CBZ             R0, loc_29920E
299200:  VMOV            R0, S22; this
299204:  MOV             R2, R10; CFont *
299206:  VMOV            R1, S20; float
29920A:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
29920E:  LDR             R0, =(RsGlobal_ptr - 0x29921C)
299210:  VADD.F32        S4, S18, S22
299214:  VLDR            S6, =240.0
299218:  ADD             R0, PC; RsGlobal_ptr
29921A:  LDR             R0, [R0]; RsGlobal
29921C:  VLDR            S0, [R0,#4]
299220:  VMUL.F32        S4, S4, S16
299224:  VLDR            S2, [R0,#8]
299228:  VCVT.F32.S32    S0, S0
29922C:  VCVT.F32.S32    S2, S2
299230:  VMUL.F32        S0, S0, S6
299234:  VMUL.F32        S6, S22, S16
299238:  VSUB.F32        S4, S4, S0
29923C:  VSUB.F32        S0, S6, S0
299240:  VDIV.F32        S4, S4, S2
299244:  VDIV.F32        S0, S0, S2
299248:  VLDR            S2, =320.0
29924C:  VADD.F32        S0, S0, S2
299250:  VADD.F32        S4, S4, S2
299254:  VSTR            S0, [R6]
299258:  VSTR            S4, [R6,#4]
29925C:  ADD             SP, SP, #0x20 ; ' '
29925E:  VPOP            {D8-D14}
299262:  ADD             SP, SP, #4
299264:  POP.W           {R8-R11}
299268:  POP             {R4-R7,PC}
