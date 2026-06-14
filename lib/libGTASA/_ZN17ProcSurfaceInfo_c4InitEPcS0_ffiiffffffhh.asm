; =========================================================
; Game Engine Function: _ZN17ProcSurfaceInfo_c4InitEPcS0_ffiiffffffhh
; Address            : 0x456180 - 0x456260
; =========================================================

456180:  PUSH            {R4-R7,LR}
456182:  ADD             R7, SP, #0xC
456184:  PUSH.W          {R11}
456188:  VPUSH           {D8}
45618C:  MOV             R4, R0
45618E:  LDR             R0, =(g_surfaceInfos_ptr - 0x456198)
456190:  MOV             R5, R3
456192:  MOV             R6, R2
456194:  ADD             R0, PC; g_surfaceInfos_ptr
456196:  LDR             R0, [R0]; g_surfaceInfos ; this
456198:  BLX             j__ZN14SurfaceInfos_c20GetSurfaceIdFromNameEPc; SurfaceInfos_c::GetSurfaceIdFromName(char *)
45619C:  MOV             R1, R4
45619E:  STRB.W          R0, [R1],#4; char *
4561A2:  MOV             R0, R6; this
4561A4:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
4561A8:  CMP             R0, #0
4561AA:  BEQ             loc_456254
4561AC:  LDRD.W          R0, R1, [R7,#arg_24]
4561B0:  VMOV            S14, R5
4561B4:  LDRD.W          R3, R2, [R7,#arg_4]
4561B8:  VMOV.F32        S7, #1.0
4561BC:  VMOV            S3, R2
4561C0:  VLDR            S5, =180.0
4561C4:  VMUL.F32        S9, S14, S14
4561C8:  VLDR            S10, [R7,#arg_C]
4561CC:  VMOV            S1, R3
4561D0:  VLDR            S12, [R7,#arg_0]
4561D4:  VLDR            S16, =80.0
4561D8:  VCVT.F32.S32    S1, S1
4561DC:  VLDR            S6, [R7,#arg_14]
4561E0:  VCVT.F32.S32    S3, S3
4561E4:  VSTR            S14, [R4,#8]
4561E8:  VSTR            S10, [R4,#0x1C]
4561EC:  VMIN.F32        D5, D6, D8
4561F0:  VMOV            S12, R1
4561F4:  VLDR            S8, [R7,#arg_10]
4561F8:  VLDR            S0, [R7,#arg_20]
4561FC:  VCVT.F32.U32    S12, S12
456200:  VSTR            S8, [R4,#0x20]
456204:  VSTR            S6, [R4,#0x24]
456208:  VDIV.F32        S1, S1, S5
45620C:  VDIV.F32        S3, S3, S5
456210:  VDIV.F32        S5, S7, S9
456214:  VLDR            S7, =3.1416
456218:  VMUL.F32        S10, S10, S10
45621C:  VLDR            S4, [R7,#arg_18]
456220:  VMUL.F32        S6, S1, S7
456224:  VLDR            S2, [R7,#arg_1C]
456228:  VMUL.F32        S8, S3, S7
45622C:  VSTR            S4, [R4,#0x28]
456230:  VSTR            S2, [R4,#0x2C]
456234:  VSTR            S0, [R4,#0x30]
456238:  STRB.W          R0, [R4,#0x34]
45623C:  MOVS            R0, #1
45623E:  VSTR            S12, [R4,#0x38]
456242:  VSTR            S10, [R4,#0x10]
456246:  VSTR            S5, [R4,#0xC]
45624A:  VSTR            S6, [R4,#0x14]
45624E:  VSTR            S8, [R4,#0x18]
456252:  B               loc_456256
456254:  MOVS            R0, #0
456256:  VPOP            {D8}
45625A:  POP.W           {R11}
45625E:  POP             {R4-R7,PC}
