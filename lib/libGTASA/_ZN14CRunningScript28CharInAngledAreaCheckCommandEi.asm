; =========================================================
; Game Engine Function: _ZN14CRunningScript28CharInAngledAreaCheckCommandEi
; Address            : 0x34BFDC - 0x34C388
; =========================================================

34BFDC:  PUSH            {R4-R7,LR}
34BFDE:  ADD             R7, SP, #0xC
34BFE0:  PUSH.W          {R8-R11}
34BFE4:  SUB             SP, SP, #4
34BFE6:  VPUSH           {D8-D15}
34BFEA:  SUB             SP, SP, #0x30; float
34BFEC:  MOV             R8, R1
34BFEE:  SUBW            R6, R8, #0x5FC
34BFF2:  CMP             R6, #5
34BFF4:  STR             R0, [SP,#0x90+var_64]
34BFF6:  ITE HI
34BFF8:  MOVHI           R1, #7
34BFFA:  MOVLS           R1, #9; __int16
34BFFC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34C000:  LDR             R0, =(ScriptParams_ptr - 0x34C006)
34C002:  ADD             R0, PC; ScriptParams_ptr
34C004:  LDR             R0, [R0]; ScriptParams
34C006:  LDR             R1, [R0]
34C008:  CMP             R1, #0
34C00A:  BLT             loc_34C02C
34C00C:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34C016)
34C00E:  UXTB            R3, R1
34C010:  LSRS            R1, R1, #8
34C012:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34C014:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34C016:  LDR             R0, [R0]; CPools::ms_pPedPool
34C018:  LDR             R2, [R0,#4]
34C01A:  LDRB            R2, [R2,R1]
34C01C:  CMP             R2, R3
34C01E:  BNE             loc_34C02C
34C020:  MOVW            R2, #0x7CC
34C024:  LDR             R0, [R0]
34C026:  MLA.W           R9, R1, R2, R0
34C02A:  B               loc_34C030
34C02C:  MOV.W           R9, #0
34C030:  SUBW            R0, R8, #0x5F9
34C034:  MOV.W           R11, #0
34C038:  CMP             R0, #8
34C03A:  BHI             loc_34C05C
34C03C:  MOVS            R1, #1
34C03E:  LSL.W           R0, R1, R0
34C042:  MOVW            R1, #(elf_hash_bucket+0xCB); CPed *
34C046:  TST             R0, R1
34C048:  BEQ             loc_34C05C
34C04A:  MOV             R0, R9; this
34C04C:  BLX             j__ZN11CTheScripts12IsPedStoppedEP4CPed; CTheScripts::IsPedStopped(CPed *)
34C050:  MOV.W           R11, #0
34C054:  CMP             R0, #0
34C056:  IT EQ
34C058:  MOVEQ.W         R11, #1
34C05C:  LDR             R0, =(ScriptParams_ptr - 0x34C066)
34C05E:  MOV             R5, R6
34C060:  CMP             R6, #5
34C062:  ADD             R0, PC; ScriptParams_ptr
34C064:  LDR             R1, [R0]; ScriptParams
34C066:  VLDR            S28, [R1,#4]
34C06A:  VLDR            S30, [R1,#8]
34C06E:  VLDR            S20, [R1,#0xC]
34C072:  VLDR            S0, [R1,#0x10]
34C076:  BHI             loc_34C09C
34C078:  LDR             R0, =(ScriptParams_ptr - 0x34C07E)
34C07A:  ADD             R0, PC; ScriptParams_ptr
34C07C:  LDR             R1, [R0]; ScriptParams
34C07E:  ADD.W           R6, R1, #0x1C
34C082:  ADD.W           R4, R1, #0x20 ; ' '
34C086:  VLDR            S2, [R1,#0x18]
34C08A:  VLDR            S16, [R1,#0x14]
34C08E:  VMIN.F32        D11, D10, D1
34C092:  VMAX.F32        D9, D10, D1
34C096:  VMOV            D10, D0
34C09A:  B               loc_34C0A8
34C09C:  ADD.W           R6, R1, #0x14
34C0A0:  ADD.W           R4, R1, #0x18
34C0A4:  VMOV.F32        S16, S0
34C0A8:  VMOV            R0, S28; this
34C0AC:  LDR             R4, [R4]
34C0AE:  VMOV            R1, S30; float
34C0B2:  VLDR            S24, [R6]
34C0B6:  VMOV            R2, S20; float
34C0BA:  VMOV            R3, S16; float
34C0BE:  STRD.W          R1, R2, [SP,#0x90+var_70]
34C0C2:  STRD.W          R3, R0, [SP,#0x90+var_78]; float
34C0C6:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
34C0CA:  VLDR            S0, =1.5708
34C0CE:  VMOV            S2, R0
34C0D2:  VADD.F32        S0, S2, S0
34C0D6:  VCMPE.F32       S0, #0.0
34C0DA:  VMRS            APSR_nzcv, FPSCR
34C0DE:  BGE             loc_34C0F2
34C0E0:  VLDR            S2, =6.2832
34C0E4:  VADD.F32        S0, S0, S2
34C0E8:  VCMPE.F32       S0, #0.0
34C0EC:  VMRS            APSR_nzcv, FPSCR
34C0F0:  BLT             loc_34C0E4
34C0F2:  VLDR            S2, =6.2832
34C0F6:  MOV             R6, R4
34C0F8:  MOV             R4, R8
34C0FA:  STR             R5, [SP,#0x90+var_68]
34C0FC:  VCMPE.F32       S0, S2
34C100:  VMRS            APSR_nzcv, FPSCR
34C104:  BLE             loc_34C118
34C106:  VLDR            S4, =-6.2832
34C10A:  VADD.F32        S0, S0, S4
34C10E:  VCMPE.F32       S0, S2
34C112:  VMRS            APSR_nzcv, FPSCR
34C116:  BGT             loc_34C10A
34C118:  VMOV            R10, S0
34C11C:  MOV             R0, R10; x
34C11E:  BLX             sinf
34C122:  MOV             R8, R0
34C124:  MOV             R0, R10; x
34C126:  BLX             cosf
34C12A:  VMOV            S0, R0
34C12E:  CMP.W           R11, #0
34C132:  VMOV            S2, R8
34C136:  VMUL.F32        S0, S24, S0
34C13A:  VMUL.F32        S2, S24, S2
34C13E:  VSUB.F32        S24, S30, S0
34C142:  VADD.F32        S26, S28, S2
34C146:  BEQ             loc_34C178
34C148:  MOV             R4, R6
34C14A:  MOVS            R1, #0
34C14C:  LDR             R5, [SP,#0x90+var_64]
34C14E:  LDR             R6, [SP,#0x90+var_68]
34C150:  LDRB.W          R0, [R5,#0xF2]
34C154:  LDRH.W          R2, [R5,#0xF0]
34C158:  CMP             R0, #0
34C15A:  IT NE
34C15C:  MOVNE           R0, #1
34C15E:  CMP             R2, #0
34C160:  EOR.W           R0, R0, R1
34C164:  BEQ             loc_34C206
34C166:  CMP             R2, #8
34C168:  BHI             loc_34C1E8
34C16A:  LDRB.W          R1, [R5,#0xE5]
34C16E:  SUBS            R2, #1
34C170:  STRH.W          R2, [R5,#0xF0]
34C174:  ANDS            R0, R1
34C176:  B               loc_34C206
34C178:  VSUB.F32        S12, S20, S28
34C17C:  LDR.W           R0, [R9,#0x484]
34C180:  VSUB.F32        S10, S16, S30
34C184:  TST.W           R0, #0x100
34C188:  VMUL.F32        S4, S12, S12
34C18C:  VMUL.F32        S6, S10, S10
34C190:  VADD.F32        S1, S6, S4
34C194:  BEQ             loc_34C1A0
34C196:  LDR.W           R1, [R9,#0x590]
34C19A:  CMP             R1, #0
34C19C:  IT NE
34C19E:  MOVNE           R9, R1
34C1A0:  VSQRT.F32       S14, S1
34C1A4:  LDR.W           R1, [R9,#0x14]
34C1A8:  MOV             R3, R4
34C1AA:  MOV             R4, R6
34C1AC:  ADD.W           R2, R1, #0x30 ; '0'
34C1B0:  CMP             R1, #0
34C1B2:  IT EQ
34C1B4:  ADDEQ.W         R2, R9, #4
34C1B8:  VLDR            S6, [R2]
34C1BC:  VCMPE.F32       S1, #0.0
34C1C0:  VLDR            S8, [R2,#4]
34C1C4:  VSUB.F32        S6, S6, S28
34C1C8:  VLDR            S4, [R2,#8]
34C1CC:  VSUB.F32        S8, S8, S30
34C1D0:  VMRS            APSR_nzcv, FPSCR
34C1D4:  BLE             loc_34C2AC
34C1D6:  VMOV.F32        S1, #1.0
34C1DA:  VDIV.F32        S1, S1, S14
34C1DE:  VMUL.F32        S10, S10, S1
34C1E2:  VMUL.F32        S12, S12, S1
34C1E6:  B               loc_34C2B0
34C1E8:  SUB.W           R1, R2, #0x15
34C1EC:  UXTH            R1, R1
34C1EE:  CMP             R1, #7
34C1F0:  BHI             loc_34C20A
34C1F2:  LDRB.W          R1, [R5,#0xE5]
34C1F6:  SUBS            R3, R2, #1
34C1F8:  CMP             R2, #0x15
34C1FA:  ORR.W           R0, R0, R1
34C1FE:  IT EQ
34C200:  MOVEQ           R3, #0
34C202:  STRH.W          R3, [R5,#0xF0]
34C206:  STRB.W          R0, [R5,#0xE5]
34C20A:  VSUB.F32        S28, S16, S0
34C20E:  CMP             R4, #0
34C210:  VADD.F32        S20, S20, S2
34C214:  BEQ             loc_34C274
34C216:  CMP             R6, #5
34C218:  BHI             loc_34C24C
34C21A:  VMOV.F32        S0, #0.5
34C21E:  ADD             R3, SP, #0x90+var_74
34C220:  VADD.F32        S2, S18, S22
34C224:  LDR             R0, [R5,#0x14]
34C226:  VSTR            S16, [SP,#0x90+var_90]
34C22A:  VSTR            S20, [SP,#0x90+var_8C]
34C22E:  ADD             R0, R5; this
34C230:  VSTR            S28, [SP,#0x90+var_88]
34C234:  VSTR            S26, [SP,#0x90+var_84]
34C238:  VSTR            S24, [SP,#0x90+var_80]
34C23C:  VMUL.F32        S0, S2, S0
34C240:  VSTR            S0, [SP,#0x90+var_7C]
34C244:  LDM             R3, {R1-R3}; float
34C246:  BLX             j__ZN11CTheScripts28HighlightImportantAngledAreaEjfffffffff; CTheScripts::HighlightImportantAngledArea(uint,float,float,float,float,float,float,float,float,float)
34C24A:  B               loc_34C29E
34C24C:  MOVS            R1, #0
34C24E:  ADD             R3, SP, #0x90+var_74
34C250:  MOVT            R1, #0xC2C8
34C254:  LDR             R0, [R5,#0x14]
34C256:  STR             R1, [SP,#0x90+var_7C]; float
34C258:  VSTR            S16, [SP,#0x90+var_90]
34C25C:  ADD             R0, R5; this
34C25E:  VSTR            S20, [SP,#0x90+var_8C]
34C262:  VSTR            S28, [SP,#0x90+var_88]
34C266:  VSTR            S26, [SP,#0x90+var_84]
34C26A:  VSTR            S24, [SP,#0x90+var_80]
34C26E:  LDM             R3, {R1-R3}; float
34C270:  BLX             j__ZN11CTheScripts28HighlightImportantAngledAreaEjfffffffff; CTheScripts::HighlightImportantAngledArea(uint,float,float,float,float,float,float,float,float,float)
34C274:  CMP             R6, #6
34C276:  BCC             loc_34C29E
34C278:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x34C27E)
34C27A:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
34C27C:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
34C27E:  LDRB            R0, [R0]; CTheScripts::DbgFlag
34C280:  CBZ             R0, loc_34C29E
34C282:  VSTR            S20, [SP,#0x90+var_90]
34C286:  VSTR            S28, [SP,#0x90+var_8C]
34C28A:  VSTR            S26, [SP,#0x90+var_88]
34C28E:  VSTR            S24, [SP,#0x90+var_84]
34C292:  LDRD.W          R1, R2, [SP,#0x90+var_70]; float
34C296:  LDRD.W          R3, R0, [SP,#0x90+var_78]; float
34C29A:  BLX             j__ZN11CTheScripts21DrawDebugAngledSquareEffffffff; CTheScripts::DrawDebugAngledSquare(float,float,float,float,float,float,float,float)
34C29E:  ADD             SP, SP, #0x30 ; '0'
34C2A0:  VPOP            {D8-D15}
34C2A4:  ADD             SP, SP, #4
34C2A6:  POP.W           {R8-R11}
34C2AA:  POP             {R4-R7,PC}
34C2AC:  VMOV.F32        S12, #1.0
34C2B0:  VMUL.F32        S10, S8, S10
34C2B4:  LDRD.W          R6, R5, [SP,#0x90+var_68]
34C2B8:  VMUL.F32        S12, S6, S12
34C2BC:  MOVS            R1, #0
34C2BE:  VADD.F32        S10, S12, S10
34C2C2:  VCMPE.F32       S10, #0.0
34C2C6:  VMRS            APSR_nzcv, FPSCR
34C2CA:  BLT.W           loc_34C150
34C2CE:  VCMPE.F32       S10, S14
34C2D2:  VMRS            APSR_nzcv, FPSCR
34C2D6:  BGT.W           loc_34C150
34C2DA:  VSUB.F32        S12, S24, S30
34C2DE:  VSUB.F32        S14, S26, S28
34C2E2:  VMUL.F32        S10, S12, S12
34C2E6:  VMUL.F32        S1, S14, S14
34C2EA:  VADD.F32        S1, S1, S10
34C2EE:  VSQRT.F32       S10, S1
34C2F2:  VCMPE.F32       S1, #0.0
34C2F6:  VMRS            APSR_nzcv, FPSCR
34C2FA:  BLE             loc_34C30E
34C2FC:  VMOV.F32        S1, #1.0
34C300:  VDIV.F32        S1, S1, S10
34C304:  VMUL.F32        S12, S12, S1
34C308:  VMUL.F32        S14, S14, S1
34C30C:  B               loc_34C312
34C30E:  VMOV.F32        S14, #1.0
34C312:  VMUL.F32        S8, S8, S12
34C316:  MOVS            R1, #0
34C318:  VMUL.F32        S6, S6, S14
34C31C:  VADD.F32        S6, S6, S8
34C320:  VCMPE.F32       S6, #0.0
34C324:  VMRS            APSR_nzcv, FPSCR
34C328:  BLT.W           loc_34C150
34C32C:  VCMPE.F32       S6, S10
34C330:  VMRS            APSR_nzcv, FPSCR
34C334:  BGT.W           loc_34C150
34C338:  CMP             R6, #5
34C33A:  BHI             loc_34C356
34C33C:  VCMPE.F32       S4, S22
34C340:  MOVS            R1, #0
34C342:  VMRS            APSR_nzcv, FPSCR
34C346:  BLT.W           loc_34C150
34C34A:  VCMPE.F32       S4, S18
34C34E:  VMRS            APSR_nzcv, FPSCR
34C352:  BGT.W           loc_34C150
34C356:  SUBW            R1, R3, #0x5F6
34C35A:  CMP             R1, #0xB
34C35C:  BHI             loc_34C384
34C35E:  MOVS            R2, #1
34C360:  LSL.W           R1, R2, R1
34C364:  MOVW            R2, #0x249
34C368:  TST             R1, R2
34C36A:  BNE             loc_34C380
34C36C:  MOVW            R2, #0x492
34C370:  TST             R1, R2
34C372:  ITEE EQ
34C374:  UBFXEQ.W        R1, R0, #8, #1
34C378:  MOVNE           R1, #1
34C37A:  BICNE.W         R1, R1, R0,LSR#8
34C37E:  B               loc_34C150
34C380:  MOVS            R1, #1
34C382:  B               loc_34C150
34C384:  MOVS            R1, #0
34C386:  B               loc_34C150
