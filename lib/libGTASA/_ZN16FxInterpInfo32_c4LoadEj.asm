; =========================================================
; Game Engine Function: _ZN16FxInterpInfo32_c4LoadEj
; Address            : 0x46F0D4 - 0x46F2AE
; =========================================================

46F0D4:  PUSH            {R4-R7,LR}
46F0D6:  ADD             R7, SP, #0xC
46F0D8:  PUSH.W          {R8-R11}
46F0DC:  SUB             SP, SP, #4
46F0DE:  VPUSH           {D8-D9}
46F0E2:  SUB             SP, SP, #0x1A0
46F0E4:  MOV             R11, R0
46F0E6:  LDR             R0, =(__stack_chk_guard_ptr - 0x46F0EE)
46F0E8:  MOV             R4, R1
46F0EA:  ADD             R0, PC; __stack_chk_guard_ptr
46F0EC:  LDR             R0, [R0]; __stack_chk_guard
46F0EE:  LDR             R0, [R0]
46F0F0:  STR             R0, [SP,#0x1D0+var_34]
46F0F2:  LDRSB.W         R0, [R11,#6]
46F0F6:  CMP             R0, #1
46F0F8:  BLT.W           loc_46F28C
46F0FC:  LDR             R0, =(g_fxMan_ptr - 0x46F10C)
46F0FE:  ADD             R5, SP, #0x1D0+var_134
46F100:  ADR.W           R10, dword_46F2B4
46F104:  ADD.W           R9, SP, #0x1D0+var_1B4
46F108:  ADD             R0, PC; g_fxMan_ptr
46F10A:  VLDR            S16, =256.0
46F10E:  VLDR            S18, =1000.0
46F112:  MOV.W           R8, #0
46F116:  LDR             R0, [R0]; g_fxMan
46F118:  STR             R4, [SP,#0x1D0+var_1C8]
46F11A:  ADDS            R0, #0xAC
46F11C:  STR             R0, [SP,#0x1D0+var_1CC]
46F11E:  LDR             R0, =(g_fxMan_ptr - 0x46F128)
46F120:  STR.W           R11, [SP,#0x1D0+var_1C0]
46F124:  ADD             R0, PC; g_fxMan_ptr
46F126:  LDR             R0, [R0]; g_fxMan
46F128:  ADDS            R0, #0xAC
46F12A:  STR             R0, [SP,#0x1D0+var_1C4]
46F12C:  MOV             R0, R4; unsigned int
46F12E:  MOV             R1, R5; char *
46F130:  MOV.W           R2, #0x100; int
46F134:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F138:  MOV             R0, R5; s
46F13A:  MOV             R1, R10; format
46F13C:  MOV             R2, R9
46F13E:  BLX             sscanf
46F142:  MOV             R0, R4; unsigned int
46F144:  MOV             R1, R5; char *
46F146:  MOV.W           R2, #0x100; int
46F14A:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F14E:  MOV             R0, R5; s
46F150:  MOV             R1, R10; format
46F152:  MOV             R2, R9
46F154:  BLX             sscanf
46F158:  MOV             R0, R4; unsigned int
46F15A:  MOV             R1, R5; char *
46F15C:  MOV.W           R2, #0x100; int
46F160:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F164:  LDR.W           R10, =(aDFFFDFFFFFFFDD+0x2A - 0x46F174); "%s %d"
46F168:  MOV             R6, R11
46F16A:  ADD.W           R11, SP, #0x1D0+var_1B8
46F16E:  MOV             R0, R5; s
46F170:  ADD             R10, PC; "%s %d"
46F172:  MOV             R2, R9
46F174:  MOV             R3, R11
46F176:  MOV             R1, R10; format
46F178:  BLX             sscanf
46F17C:  LDR             R0, [SP,#0x1D0+var_1B8]
46F17E:  MOV             R1, R5; char *
46F180:  STRB            R0, [R6,#4]
46F182:  MOV             R0, R4; unsigned int
46F184:  MOV.W           R2, #0x100; int
46F188:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F18C:  MOV             R0, R5; s
46F18E:  MOV             R1, R10; format
46F190:  MOV             R2, R9
46F192:  MOV             R3, R11
46F194:  BLX             sscanf
46F198:  LDR             R1, [SP,#0x1D0+var_1B8]
46F19A:  CMP.W           R8, #0
46F19E:  STRB            R1, [R6,#5]
46F1A0:  BNE             loc_46F1B2
46F1A2:  LSLS            R0, R1, #0x18
46F1A4:  MOVS            R2, #2; int
46F1A6:  ASRS            R1, R0, #0x17; int
46F1A8:  LDR             R0, [SP,#0x1D0+var_1CC]; this
46F1AA:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46F1AE:  LDRB            R1, [R6,#5]
46F1B0:  STR             R0, [R6,#8]
46F1B2:  SXTB            R0, R1
46F1B4:  MOVS            R2, #2; int
46F1B6:  LSLS            R1, R0, #1; int
46F1B8:  LDR             R0, [SP,#0x1D0+var_1C4]; this
46F1BA:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46F1BE:  LDR             R1, [R6,#0xC]
46F1C0:  MOV             R9, R8
46F1C2:  ADD             R5, SP, #0x1D0+var_1B4
46F1C4:  ADD             R4, SP, #0x1D0+var_1BC
46F1C6:  MOV             R2, R6
46F1C8:  STR.W           R0, [R1,R8,LSL#2]
46F1CC:  ADD.W           R8, SP, #0x1D0+var_134
46F1D0:  LDRSB.W         R0, [R6,#5]
46F1D4:  CMP             R0, #1
46F1D6:  LDR             R0, [SP,#0x1D0+var_1C8]; unsigned int
46F1D8:  BLT             loc_46F26E
46F1DA:  MOV.W           R11, #0
46F1DE:  MOV             R1, R8; char *
46F1E0:  MOV.W           R2, #0x100; int
46F1E4:  MOV             R6, R0
46F1E6:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F1EA:  ADR             R1, dword_46F2B4; format
46F1EC:  MOV             R0, R8; s
46F1EE:  MOV             R2, R5
46F1F0:  BLX             sscanf
46F1F4:  MOV             R0, R6; unsigned int
46F1F6:  MOV             R1, R8; char *
46F1F8:  MOV.W           R2, #0x100; int
46F1FC:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F200:  LDR.W           R10, =(aSF_0 - 0x46F20E); "%s %f"
46F204:  MOV             R0, R8; s
46F206:  MOV             R2, R5
46F208:  MOV             R3, R4
46F20A:  ADD             R10, PC; "%s %f"
46F20C:  MOV             R1, R10; format
46F20E:  BLX             sscanf
46F212:  VLDR            S0, [SP,#0x1D0+var_1BC]
46F216:  MOV.W           R2, #0x100; int
46F21A:  LDR             R0, [SP,#0x1D0+var_1C0]
46F21C:  VMUL.F32        S0, S0, S16
46F220:  LDR             R0, [R0,#8]
46F222:  VCVT.U32.F32    S0, S0
46F226:  VMOV            R1, S0
46F22A:  STRH.W          R1, [R0,R11,LSL#1]
46F22E:  MOV             R0, R6; unsigned int
46F230:  MOV             R1, R8; char *
46F232:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46F236:  MOV             R0, R8; s
46F238:  MOV             R1, R10; format
46F23A:  MOV             R2, R5
46F23C:  MOV             R3, R4
46F23E:  BLX             sscanf
46F242:  VLDR            S0, [SP,#0x1D0+var_1BC]
46F246:  LDR             R0, [SP,#0x1D0+var_1C0]
46F248:  VMUL.F32        S0, S0, S18
46F24C:  LDR             R0, [R0,#0xC]
46F24E:  LDR.W           R0, [R0,R9,LSL#2]
46F252:  VCVT.S32.F32    S0, S0
46F256:  VMOV            R1, S0
46F25A:  STRH.W          R1, [R0,R11,LSL#1]
46F25E:  ADD.W           R11, R11, #1
46F262:  MOV             R0, R6
46F264:  LDR             R2, [SP,#0x1D0+var_1C0]
46F266:  LDRSB.W         R1, [R2,#5]
46F26A:  CMP             R11, R1
46F26C:  BLT             loc_46F1DE
46F26E:  LDRSB.W         R1, [R2,#6]
46F272:  ADD.W           R9, R9, #1
46F276:  ADR.W           R10, dword_46F2B4
46F27A:  MOV             R4, R0
46F27C:  CMP             R9, R1
46F27E:  MOV             R1, R9
46F280:  MOV             R9, R5
46F282:  MOV             R5, R8
46F284:  MOV             R11, R2
46F286:  MOV             R8, R1
46F288:  BLT.W           loc_46F12C
46F28C:  LDR             R0, =(__stack_chk_guard_ptr - 0x46F294)
46F28E:  LDR             R1, [SP,#0x1D0+var_34]
46F290:  ADD             R0, PC; __stack_chk_guard_ptr
46F292:  LDR             R0, [R0]; __stack_chk_guard
46F294:  LDR             R0, [R0]
46F296:  SUBS            R0, R0, R1
46F298:  ITTTT EQ
46F29A:  ADDEQ           SP, SP, #0x1A0
46F29C:  VPOPEQ          {D8-D9}
46F2A0:  ADDEQ           SP, SP, #4
46F2A2:  POPEQ.W         {R8-R11}
46F2A6:  IT EQ
46F2A8:  POPEQ           {R4-R7,PC}
46F2AA:  BLX             __stack_chk_fail
