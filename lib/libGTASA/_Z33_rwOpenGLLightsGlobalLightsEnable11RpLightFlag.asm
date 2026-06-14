; =========================================================
; Game Engine Function: _Z33_rwOpenGLLightsGlobalLightsEnable11RpLightFlag
; Address            : 0x221F50 - 0x222282
; =========================================================

221F50:  PUSH            {R4-R7,LR}
221F52:  ADD             R7, SP, #0xC
221F54:  PUSH.W          {R8-R11}
221F58:  SUB             SP, SP, #0x34
221F5A:  MOV             R11, R0
221F5C:  LDR.W           R0, =(RwEngineInstance_ptr - 0x221F6C)
221F60:  LDR.W           R1, =(openglAmbientLight_ptr - 0x221F72)
221F64:  VMOV.I32        Q9, #0
221F68:  ADD             R0, PC; RwEngineInstance_ptr
221F6A:  LDR.W           R2, =(openglLightApplied_ptr - 0x221F7A)
221F6E:  ADD             R1, PC; openglAmbientLight_ptr
221F70:  LDR.W           R3, =(byte_6BD724 - 0x221F7E)
221F74:  LDR             R0, [R0]; RwEngineInstance
221F76:  ADD             R2, PC; openglLightApplied_ptr
221F78:  LDR             R1, [R1]; openglAmbientLight
221F7A:  ADD             R3, PC; byte_6BD724
221F7C:  LDR             R0, [R0]
221F7E:  LDR             R6, [R0,#4]
221F80:  ADR             R0, dword_222290
221F82:  VLD1.64         {D16-D17}, [R0@128]
221F86:  LDR             R0, [R2]; openglLightApplied
221F88:  LDR.W           R4, [R6,#0x3C]!
221F8C:  VST1.32         {D18-D19}, [R0]!
221F90:  CMP             R4, R6
221F92:  VST1.32         {D16-D17}, [R1]
221F96:  MOV.W           R1, #0
221F9A:  STRB            R1, [R3]
221F9C:  VST1.32         {D18-D19}, [R0]
221FA0:  BEQ.W           loc_222150
221FA4:  LDR             R0, =(openglLightApplied_ptr - 0x221FAC)
221FA6:  MOVS            R5, #0
221FA8:  ADD             R0, PC; openglLightApplied_ptr
221FAA:  LDR             R0, [R0]; openglLightApplied
221FAC:  STR             R0, [SP,#0x50+var_38]
221FAE:  LDR             R0, =(openglLightApplied_ptr - 0x221FB4)
221FB0:  ADD             R0, PC; openglLightApplied_ptr
221FB2:  LDR             R0, [R0]; openglLightApplied
221FB4:  STR             R0, [SP,#0x50+var_3C]
221FB6:  LDR             R0, =(openglLightApplied_ptr - 0x221FBC)
221FB8:  ADD             R0, PC; openglLightApplied_ptr
221FBA:  LDR             R0, [R0]; openglLightApplied
221FBC:  STR             R0, [SP,#0x50+var_40]
221FBE:  LDR             R0, =(openglLightApplied_ptr - 0x221FC4)
221FC0:  ADD             R0, PC; openglLightApplied_ptr
221FC2:  LDR             R0, [R0]; openglLightApplied
221FC4:  STR             R0, [SP,#0x50+var_44]
221FC6:  LDR             R0, =(openglLightApplied_ptr - 0x221FCC)
221FC8:  ADD             R0, PC; openglLightApplied_ptr
221FCA:  LDR             R0, [R0]; openglLightApplied
221FCC:  STR             R0, [SP,#0x50+var_48]
221FCE:  LDR             R0, =(openglLightApplied_ptr - 0x221FD4)
221FD0:  ADD             R0, PC; openglLightApplied_ptr
221FD2:  LDR             R0, [R0]; openglLightApplied
221FD4:  STR             R0, [SP,#0x50+var_4C]
221FD6:  LDR             R0, =(openglLightApplied_ptr - 0x221FDC)
221FD8:  ADD             R0, PC; openglLightApplied_ptr
221FDA:  LDR             R0, [R0]; openglLightApplied
221FDC:  STR             R0, [SP,#0x50+var_50]
221FDE:  LDR             R0, =(_rwOpenGLOpaqueBlack_ptr - 0x221FE4)
221FE0:  ADD             R0, PC; _rwOpenGLOpaqueBlack_ptr
221FE2:  LDR             R0, [R0]; _rwOpenGLOpaqueBlack
221FE4:  STR             R0, [SP,#0x50+var_30]
221FE6:  LDR             R0, =(openglLightApplied_ptr - 0x221FEC)
221FE8:  ADD             R0, PC; openglLightApplied_ptr
221FEA:  LDR             R0, [R0]; openglLightApplied
221FEC:  STR             R0, [SP,#0x50+var_34]
221FEE:  LDR             R0, =(openglAmbientLight_ptr - 0x221FF4)
221FF0:  ADD             R0, PC; openglAmbientLight_ptr
221FF2:  LDR.W           R8, [R0]; openglAmbientLight
221FF6:  B               loc_222050
221FF8:  LDR             R0, [SP,#0x50+var_38]
221FFA:  LDR             R0, [R0,#4]
221FFC:  CBZ             R0, loc_222026
221FFE:  LDR             R0, [SP,#0x50+var_3C]
222000:  LDR             R0, [R0,#8]
222002:  CBZ             R0, loc_22202C
222004:  LDR             R0, [SP,#0x50+var_40]
222006:  LDR             R0, [R0,#0xC]
222008:  CBZ             R0, loc_222032
22200A:  LDR             R0, [SP,#0x50+var_44]
22200C:  LDR             R0, [R0,#0x10]
22200E:  CBZ             R0, loc_222038
222010:  LDR             R0, [SP,#0x50+var_48]
222012:  LDR             R0, [R0,#0x14]
222014:  CBZ             R0, loc_22203E
222016:  LDR             R0, [SP,#0x50+var_4C]
222018:  LDR             R0, [R0,#0x18]
22201A:  CBZ             R0, loc_222044
22201C:  LDR             R0, [SP,#0x50+var_50]
22201E:  LDR             R0, [R0,#0x1C]
222020:  CBZ             R0, loc_22204A
222022:  MOVS            R5, #1
222024:  B               loc_22213C
222026:  MOV.W           R9, #1
22202A:  B               loc_222072
22202C:  MOV.W           R9, #2
222030:  B               loc_222072
222032:  MOV.W           R9, #3
222036:  B               loc_222072
222038:  MOV.W           R9, #4
22203C:  B               loc_222072
22203E:  MOV.W           R9, #5
222042:  B               loc_222072
222044:  MOV.W           R9, #6
222048:  B               loc_222072
22204A:  MOV.W           R9, #7
22204E:  B               loc_222072
222050:  LDRB.W          R0, [R4,#-0x32]
222054:  TST.W           R0, R11
222058:  BEQ             loc_22213C
22205A:  SUB.W           R10, R4, #0x34 ; '4'
22205E:  LDRB.W          R0, [R10,#1]
222062:  CMP             R0, #1
222064:  BNE             loc_222104
222066:  LDRB.W          R0, [R10,#0x3E]
22206A:  CMP             R0, #0
22206C:  BEQ             loc_221FF8
22206E:  MOV.W           R9, #0
222072:  LDR.W           R0, [R10,#4]
222076:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
22207A:  VLDR            S0, [R0,#0x20]
22207E:  ORR.W           R5, R9, #0x4000
222082:  VLDR            S2, [R0,#0x24]
222086:  ADD             R2, SP, #0x50+var_2C; float *
222088:  VNEG.F32        S0, S0
22208C:  VLDR            S4, [R0,#0x28]
222090:  MOVS            R0, #0
222092:  MOVW            R1, #0x1203; unsigned int
222096:  VSTR            S0, [SP,#0x50+var_2C]
22209A:  VNEG.F32        S0, S2
22209E:  VSTR            S0, [SP,#0x50+var_28]
2220A2:  VNEG.F32        S0, S4
2220A6:  STR             R0, [SP,#0x50+var_20]
2220A8:  MOV             R0, R5; unsigned int
2220AA:  VSTR            S0, [SP,#0x50+var_24]
2220AE:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
2220B2:  LDR             R2, [SP,#0x50+var_30]; float *
2220B4:  MOV             R0, R5; unsigned int
2220B6:  MOV.W           R1, #0x1200; unsigned int
2220BA:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
2220BE:  ADD.W           R2, R10, #0x18; float *
2220C2:  MOV             R0, R5; unsigned int
2220C4:  MOVW            R1, #0x1201; unsigned int
2220C8:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
2220CC:  MOVS            R2, #0
2220CE:  MOV             R0, R5; unsigned int
2220D0:  MOVW            R1, #0x1206; unsigned int
2220D4:  MOVT            R2, #0x4334; float
2220D8:  BLX             j__Z12emu_glLightfjjf; emu_glLightf(uint,uint,float)
2220DC:  LDR             R0, =(dword_6BD720 - 0x2220E2)
2220DE:  ADD             R0, PC; dword_6BD720
2220E0:  LDR             R0, [R0]
2220E2:  LDR.W           R0, [R0,R9,LSL#2]
2220E6:  CBNZ            R0, loc_2220FA
2220E8:  MOV             R0, R5; unsigned int
2220EA:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
2220EE:  LDR             R0, =(dword_6BD720 - 0x2220F6)
2220F0:  MOVS            R1, #1
2220F2:  ADD             R0, PC; dword_6BD720
2220F4:  LDR             R0, [R0]
2220F6:  STR.W           R1, [R0,R9,LSL#2]
2220FA:  LDR             R0, [SP,#0x50+var_34]
2220FC:  MOVS            R5, #1
2220FE:  STR.W           R5, [R0,R9,LSL#2]
222102:  B               loc_22213C
222104:  VLDR            S0, [R10,#0x18]
222108:  MOVS            R5, #1
22210A:  VLDR            S2, [R8]
22210E:  VLDR            S4, [R8,#4]
222112:  VADD.F32        S0, S0, S2
222116:  VLDR            S6, [R8,#8]
22211A:  LDR             R0, =(byte_6BD724 - 0x222120)
22211C:  ADD             R0, PC; byte_6BD724
22211E:  VSTR            S0, [R8]
222122:  VLDR            S0, [R10,#0x1C]
222126:  VADD.F32        S0, S0, S4
22212A:  VSTR            S0, [R8,#4]
22212E:  VLDR            S0, [R10,#0x20]
222132:  STRB            R5, [R0]
222134:  VADD.F32        S0, S0, S6
222138:  VSTR            S0, [R8,#8]
22213C:  LDR             R4, [R4]
22213E:  CMP             R4, R6
222140:  BNE.W           loc_222050
222144:  LDR             R0, =(openglLightApplied_ptr - 0x22214A)
222146:  ADD             R0, PC; openglLightApplied_ptr
222148:  LDR             R0, [R0]; openglLightApplied
22214A:  LDR             R0, [R0]
22214C:  CBNZ            R0, loc_22216E
22214E:  B               loc_222152
222150:  MOVS            R5, #0
222152:  LDR             R0, =(dword_6BD720 - 0x222158)
222154:  ADD             R0, PC; dword_6BD720
222156:  LDR             R0, [R0]
222158:  LDR             R0, [R0]
22215A:  CBZ             R0, loc_22216E
22215C:  MOV.W           R0, #0x4000; unsigned int
222160:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
222164:  LDR             R0, =(dword_6BD720 - 0x22216C)
222166:  MOVS            R1, #0
222168:  ADD             R0, PC; dword_6BD720
22216A:  LDR             R0, [R0]
22216C:  STR             R1, [R0]
22216E:  LDR             R0, =(openglLightApplied_ptr - 0x222174)
222170:  ADD             R0, PC; openglLightApplied_ptr
222172:  LDR             R0, [R0]; openglLightApplied
222174:  LDR             R0, [R0,#(dword_6BD6B4 - 0x6BD6B0)]
222176:  CBNZ            R0, loc_222194
222178:  LDR             R0, =(dword_6BD720 - 0x22217E)
22217A:  ADD             R0, PC; dword_6BD720
22217C:  LDR             R0, [R0]
22217E:  LDR             R0, [R0,#4]
222180:  CBZ             R0, loc_222194
222182:  MOVW            R0, #0x4001; unsigned int
222186:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
22218A:  LDR             R0, =(dword_6BD720 - 0x222192)
22218C:  MOVS            R1, #0
22218E:  ADD             R0, PC; dword_6BD720
222190:  LDR             R0, [R0]
222192:  STR             R1, [R0,#4]
222194:  LDR             R0, =(openglLightApplied_ptr - 0x22219A)
222196:  ADD             R0, PC; openglLightApplied_ptr
222198:  LDR             R0, [R0]; openglLightApplied
22219A:  LDR             R0, [R0,#(dword_6BD6B8 - 0x6BD6B0)]
22219C:  CBNZ            R0, loc_2221BA
22219E:  LDR             R0, =(dword_6BD720 - 0x2221A4)
2221A0:  ADD             R0, PC; dword_6BD720
2221A2:  LDR             R0, [R0]
2221A4:  LDR             R0, [R0,#8]
2221A6:  CBZ             R0, loc_2221BA
2221A8:  MOVW            R0, #0x4002; unsigned int
2221AC:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
2221B0:  LDR             R0, =(dword_6BD720 - 0x2221B8)
2221B2:  MOVS            R1, #0
2221B4:  ADD             R0, PC; dword_6BD720
2221B6:  LDR             R0, [R0]
2221B8:  STR             R1, [R0,#8]
2221BA:  LDR             R0, =(openglLightApplied_ptr - 0x2221C0)
2221BC:  ADD             R0, PC; openglLightApplied_ptr
2221BE:  LDR             R0, [R0]; openglLightApplied
2221C0:  LDR             R0, [R0,#(dword_6BD6BC - 0x6BD6B0)]
2221C2:  CBNZ            R0, loc_2221E0
2221C4:  LDR             R0, =(dword_6BD720 - 0x2221CA)
2221C6:  ADD             R0, PC; dword_6BD720
2221C8:  LDR             R0, [R0]
2221CA:  LDR             R0, [R0,#0xC]
2221CC:  CBZ             R0, loc_2221E0
2221CE:  MOVW            R0, #0x4003; unsigned int
2221D2:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
2221D6:  LDR             R0, =(dword_6BD720 - 0x2221DE)
2221D8:  MOVS            R1, #0
2221DA:  ADD             R0, PC; dword_6BD720
2221DC:  LDR             R0, [R0]
2221DE:  STR             R1, [R0,#0xC]
2221E0:  LDR             R0, =(openglLightApplied_ptr - 0x2221E6)
2221E2:  ADD             R0, PC; openglLightApplied_ptr
2221E4:  LDR             R0, [R0]; openglLightApplied
2221E6:  LDR             R0, [R0,#(dword_6BD6C0 - 0x6BD6B0)]
2221E8:  CBNZ            R0, loc_222206
2221EA:  LDR             R0, =(dword_6BD720 - 0x2221F0)
2221EC:  ADD             R0, PC; dword_6BD720
2221EE:  LDR             R0, [R0]
2221F0:  LDR             R0, [R0,#0x10]
2221F2:  CBZ             R0, loc_222206
2221F4:  MOVW            R0, #0x4004; unsigned int
2221F8:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
2221FC:  LDR             R0, =(dword_6BD720 - 0x222204)
2221FE:  MOVS            R1, #0
222200:  ADD             R0, PC; dword_6BD720
222202:  LDR             R0, [R0]
222204:  STR             R1, [R0,#0x10]
222206:  LDR             R0, =(openglLightApplied_ptr - 0x22220C)
222208:  ADD             R0, PC; openglLightApplied_ptr
22220A:  LDR             R0, [R0]; openglLightApplied
22220C:  LDR             R0, [R0,#(dword_6BD6C4 - 0x6BD6B0)]
22220E:  CBNZ            R0, loc_22222C
222210:  LDR             R0, =(dword_6BD720 - 0x222216)
222212:  ADD             R0, PC; dword_6BD720
222214:  LDR             R0, [R0]
222216:  LDR             R0, [R0,#0x14]
222218:  CBZ             R0, loc_22222C
22221A:  MOVW            R0, #0x4005; unsigned int
22221E:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
222222:  LDR             R0, =(dword_6BD720 - 0x22222A)
222224:  MOVS            R1, #0
222226:  ADD             R0, PC; dword_6BD720
222228:  LDR             R0, [R0]
22222A:  STR             R1, [R0,#0x14]
22222C:  LDR             R0, =(openglLightApplied_ptr - 0x222232)
22222E:  ADD             R0, PC; openglLightApplied_ptr
222230:  LDR             R0, [R0]; openglLightApplied
222232:  LDR             R0, [R0,#(dword_6BD6C8 - 0x6BD6B0)]
222234:  CBNZ            R0, loc_222252
222236:  LDR             R0, =(dword_6BD720 - 0x22223C)
222238:  ADD             R0, PC; dword_6BD720
22223A:  LDR             R0, [R0]
22223C:  LDR             R0, [R0,#0x18]
22223E:  CBZ             R0, loc_222252
222240:  MOVW            R0, #0x4006; unsigned int
222244:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
222248:  LDR             R0, =(dword_6BD720 - 0x222250)
22224A:  MOVS            R1, #0
22224C:  ADD             R0, PC; dword_6BD720
22224E:  LDR             R0, [R0]
222250:  STR             R1, [R0,#0x18]
222252:  LDR             R0, =(openglLightApplied_ptr - 0x222258)
222254:  ADD             R0, PC; openglLightApplied_ptr
222256:  LDR             R0, [R0]; openglLightApplied
222258:  LDR             R0, [R0,#(dword_6BD6CC - 0x6BD6B0)]
22225A:  CBNZ            R0, loc_222278
22225C:  LDR             R0, =(dword_6BD720 - 0x222262)
22225E:  ADD             R0, PC; dword_6BD720
222260:  LDR             R0, [R0]
222262:  LDR             R0, [R0,#0x1C]
222264:  CBZ             R0, loc_222278
222266:  MOVW            R0, #0x4007; unsigned int
22226A:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
22226E:  LDR             R0, =(dword_6BD720 - 0x222276)
222270:  MOVS            R1, #0
222272:  ADD             R0, PC; dword_6BD720
222274:  LDR             R0, [R0]
222276:  STR             R1, [R0,#0x1C]
222278:  MOV             R0, R5
22227A:  ADD             SP, SP, #0x34 ; '4'
22227C:  POP.W           {R8-R11}
222280:  POP             {R4-R7,PC}
