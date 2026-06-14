; =========================================================
; Game Engine Function: _ZN11CFileLoader15LoadCarPathNodeEPKciib
; Address            : 0x46A204 - 0x46A39A
; =========================================================

46A204:  PUSH            {R4-R7,LR}
46A206:  ADD             R7, SP, #0xC
46A208:  PUSH.W          {R8-R11}
46A20C:  SUB             SP, SP, #0x74
46A20E:  MOV             R10, R3
46A210:  ADD             R3, SP, #0x90+var_50
46A212:  STR             R2, [SP,#0x90+var_54]
46A214:  MOV.W           R2, #0x3F800000
46A218:  MOV.W           R9, #0
46A21C:  STR             R2, [SP,#0x90+var_50]
46A21E:  STR.W           R9, [SP,#0x90+var_3C]
46A222:  ADD             R4, SP, #0x90+var_38
46A224:  STRD.W          R4, R3, [SP,#0x90+var_70]
46A228:  ADD             R3, SP, #0x90+var_40
46A22A:  MOV             R11, R1
46A22C:  LDR             R1, =(aDDDFFFFDDDDFD - 0x46A248); "%d %d %d %f %f %f %f %d %d %d %d %f %d"
46A22E:  ADD             R2, SP, #0x90+var_3C
46A230:  STR             R2, [SP,#0x90+var_68]
46A232:  ADD.W           R8, SP, #0x90+var_28
46A236:  STRD.W          R8, R3, [SP,#0x90+var_90]; float
46A23A:  ADD             R6, SP, #0x90+var_4C
46A23C:  ADD             R5, SP, #0x90+var_48
46A23E:  ADD             R2, SP, #0x90+var_44
46A240:  ADD             R3, SP, #0x90+var_88
46A242:  STM             R3!, {R2,R5,R6}
46A244:  ADD             R1, PC; "%d %d %d %f %f %f %f %d %d %d %d %f %d"
46A246:  ADD.W           LR, SP, #0x90+var_30
46A24A:  ADD             R2, SP, #0x90+var_20
46A24C:  ADD             R3, SP, #0x90+var_24
46A24E:  ADD             R4, SP, #0x90+var_2C
46A250:  ADD.W           R12, SP, #0x90+var_34
46A254:  STRD.W          R4, LR, [SP,#0x90+var_7C]; signed __int8
46A258:  STR.W           R12, [SP,#0x90+var_74]; bool
46A25C:  BLX             sscanf
46A260:  ADDS.W          R0, R11, #1
46A264:  BEQ             loc_46A2FE
46A266:  LDR             R5, [SP,#0x90+var_38]
46A268:  ADD.W           R12, SP, #0x90+var_7C
46A26C:  VLDR            S4, [SP,#0x90+var_48]
46A270:  VMOV.F32        S10, #15.0
46A274:  VLDR            S6, [SP,#0x90+var_40]
46A278:  VLDR            S8, [SP,#0x90+var_44]
46A27C:  LDRB.W          R4, [SP,#0x90+var_3C]
46A280:  VLDR            S2, [SP,#0x90+var_50]
46A284:  LDRSB.W         R3, [SP,#0x90+var_20]; signed __int8
46A288:  LDRSB.W         R0, [SP,#0x90+var_24]
46A28C:  VLDR            S0, [SP,#0x90+var_4C]
46A290:  VMUL.F32        S2, S2, S10
46A294:  LDRSB.W         R1, [SP,#0x90+var_2C]
46A298:  LDRSB.W         R2, [SP,#0x90+var_30]
46A29C:  LDRB.W          R6, [SP,#0x90+var_34]
46A2A0:  STR             R4, [SP,#0x90+var_5C]; unsigned __int8
46A2A2:  VCVT.S32.F32    S8, S8
46A2A6:  STR.W           R10, [SP,#0x90+var_64]; bool
46A2AA:  UBFX.W          R4, R5, #1, #1
46A2AE:  STR             R4, [SP,#0x90+var_68]; bool
46A2B0:  VCVT.S32.F32    S6, S6
46A2B4:  VCVT.S32.F32    S4, S4
46A2B8:  STR             R6, [SP,#0x90+var_6C]; unsigned __int8
46A2BA:  UBFX.W          R6, R5, #2, #1
46A2BE:  STR             R6, [SP,#0x90+var_70]; bool
46A2C0:  AND.W           R6, R5, #1
46A2C4:  LDR             R4, =(ThePaths_ptr - 0x46A2CE)
46A2C6:  STM.W           R12, {R1,R2,R6}
46A2CA:  ADD             R4, PC; ThePaths_ptr
46A2CC:  VSTR            S0, [SP,#0x90+var_80]
46A2D0:  VMOV            R1, S4
46A2D4:  STR             R1, [SP,#0x90+var_84]; __int16
46A2D6:  VMOV            R1, S8
46A2DA:  STR             R1, [SP,#0x90+var_88]; __int16
46A2DC:  VMOV            R1, S6
46A2E0:  STR             R1, [SP,#0x90+var_8C]; __int16
46A2E2:  VCVT.U32.F32    S0, S2
46A2E6:  STR             R0, [SP,#0x90+var_90]; signed __int8
46A2E8:  SXTH.W          R1, R11; __int16
46A2EC:  LDR             R0, [R4]; ThePaths ; this
46A2EE:  VMOV            R2, S0
46A2F2:  STR             R2, [SP,#0x90+var_60]; unsigned __int8
46A2F4:  LDR             R2, [SP,#0x90+var_54]
46A2F6:  SXTH            R2, R2; __int16
46A2F8:  BLX             j__ZN9CPathFind16StoreNodeInfoCarEssaasssfaabbhbbhh; CPathFind::StoreNodeInfoCar(short,short,signed char,signed char,short,short,short,float,signed char,signed char,bool,bool,uchar,bool,bool,uchar,uchar)
46A2FC:  B               loc_46A392
46A2FE:  LDR             R6, [SP,#0x90+var_38]
46A300:  VMOV.F32        S10, #15.0
46A304:  LDRB.W          R4, [SP,#0x90+var_3C]
46A308:  ADD.W           R12, SP, #0x90+var_80
46A30C:  VLDR            S4, [SP,#0x90+var_48]
46A310:  VLDR            S6, [SP,#0x90+var_44]
46A314:  VLDR            S8, [SP,#0x90+var_40]
46A318:  VLDR            S2, [SP,#0x90+var_50]
46A31C:  LDR             R3, [SP,#0x90+var_24]; int
46A31E:  LDRSB.W         R2, [SP,#0x90+var_20]; signed __int8
46A322:  VMUL.F32        S2, S2, S10
46A326:  VLDR            S0, [SP,#0x90+var_4C]
46A32A:  LDRSB.W         R1, [SP,#0x90+var_2C]
46A32E:  LDRSB.W         R5, [SP,#0x90+var_30]
46A332:  LDRB.W          R0, [SP,#0x90+var_34]
46A336:  STRD.W          R9, R4, [SP,#0x90+var_60]; bool
46A33A:  VCVT.S32.F32    S8, S8
46A33E:  STR.W           R10, [SP,#0x90+var_68]; bool
46A342:  UBFX.W          R4, R6, #1, #1
46A346:  STR             R4, [SP,#0x90+var_6C]; bool
46A348:  VCVT.S32.F32    S6, S6
46A34C:  VCVT.S32.F32    S4, S4
46A350:  STR             R0, [SP,#0x90+var_70]; unsigned __int8
46A352:  LDR             R4, =(ThePaths_ptr - 0x46A358)
46A354:  ADD             R4, PC; ThePaths_ptr
46A356:  VCVT.F32.S32    S8, S8
46A35A:  VCVT.F32.S32    S4, S4
46A35E:  UBFX.W          R0, R6, #2, #1
46A362:  STR             R0, [SP,#0x90+var_74]; bool
46A364:  VCVT.F32.S32    S6, S6
46A368:  AND.W           R6, R6, #1
46A36C:  LDR             R0, [R4]; ThePaths ; this
46A36E:  STM.W           R12, {R1,R5,R6}
46A372:  VSTR            S0, [SP,#0x90+var_84]
46A376:  VSTR            S4, [SP,#0x90+var_88]
46A37A:  VSTR            S6, [SP,#0x90+var_8C]
46A37E:  VCVT.U32.F32    S0, S2
46A382:  VSTR            S8, [SP,#0x90+var_90]
46A386:  VMOV            R1, S0
46A38A:  STR             R1, [SP,#0x90+var_64]; unsigned __int8
46A38C:  LDR             R1, [SP,#0x90+var_54]; int
46A38E:  BLX             j__ZN9CPathFind24StoreDetachedNodeInfoCarEiaiffffaabbhbbhbh; CPathFind::StoreDetachedNodeInfoCar(int,signed char,int,float,float,float,float,signed char,signed char,bool,bool,uchar,bool,bool,uchar,bool,uchar)
46A392:  ADD             SP, SP, #0x74 ; 't'
46A394:  POP.W           {R8-R11}
46A398:  POP             {R4-R7,PC}
