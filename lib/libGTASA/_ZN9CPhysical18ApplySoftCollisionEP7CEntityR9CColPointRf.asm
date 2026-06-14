; =========================================================
; Game Engine Function: _ZN9CPhysical18ApplySoftCollisionEP7CEntityR9CColPointRf
; Address            : 0x40409C - 0x404418
; =========================================================

40409C:  PUSH            {R4-R7,LR}
40409E:  ADD             R7, SP, #0xC
4040A0:  PUSH.W          {R8,R9,R11}
4040A4:  VPUSH           {D8-D15}
4040A8:  SUB             SP, SP, #0x50
4040AA:  MOV             R5, R0
4040AC:  MOV             R4, R3
4040AE:  LDRB.W          R0, [R5,#0x44]
4040B2:  MOV             R6, R2
4040B4:  LSLS            R0, R0, #0x1B
4040B6:  BPL             loc_4040C2
4040B8:  MOV             R0, R5
4040BA:  MOV             R2, R6
4040BC:  MOV             R3, R4
4040BE:  BLX             j__ZN9CPhysical14ApplyCollisionEP7CEntityR9CColPointRf; CPhysical::ApplyCollision(CEntity *,CColPoint &,float &)
4040C2:  LDR             R0, [R5,#0x14]
4040C4:  MOV             R1, R5
4040C6:  VLDR            S0, [R6]
4040CA:  VLDR            S2, [R6,#4]
4040CE:  VLDR            S6, [R0,#0x30]
4040D2:  VLDR            S8, [R0,#0x34]
4040D6:  VSUB.F32        S20, S0, S6
4040DA:  VLDR            S10, [R0,#0x38]
4040DE:  VSUB.F32        S22, S2, S8
4040E2:  VLDR            S4, [R6,#8]
4040E6:  ADD             R0, SP, #0xA8+var_64
4040E8:  VSUB.F32        S16, S4, S10
4040EC:  VMOV            R9, S20
4040F0:  VMOV            R8, S22
4040F4:  VSTR            S16, [SP,#0xA8+var_A8]
4040F8:  MOV             R2, R9
4040FA:  MOV             R3, R8
4040FC:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
404100:  LDR             R0, =(SOFTCOL_SPEED_MULT_ptr - 0x40410A)
404102:  VLDR            D16, [R6,#0x10]
404106:  ADD             R0, PC; SOFTCOL_SPEED_MULT_ptr
404108:  LDR             R1, [R6,#0x18]
40410A:  STR             R1, [SP,#0xA8+var_68]
40410C:  LDR             R0, [R0]; SOFTCOL_SPEED_MULT
40410E:  VSTR            D16, [SP,#0xA8+var_70]
404112:  LDRB.W          R1, [R5,#0x3A]
404116:  VLDR            S18, [R0]
40411A:  AND.W           R0, R1, #7
40411E:  CMP             R0, #2
404120:  ITT EQ
404122:  LDREQ.W         R0, [R5,#0x5A4]
404126:  CMPEQ           R0, #1
404128:  BEQ.W           loc_404260
40412C:  LDR             R1, [R5,#0x14]; CVector *
40412E:  ADD.W           R2, R5, #0xA8
404132:  ADD             R0, SP, #0xA8+var_7C; CMatrix *
404134:  VLDR            S24, [SP,#0xA8+var_70]
404138:  VLDR            S26, [SP,#0xA8+var_70+4]
40413C:  VLDR            S28, [SP,#0xA8+var_68]
404140:  VLDR            S30, [SP,#0xA8+var_64]
404144:  VLDR            S17, [SP,#0xA8+var_60]
404148:  VLDR            S19, [SP,#0xA8+var_5C]
40414C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
404150:  VMUL.F32        S2, S17, S26
404154:  LDRB.W          R0, [R5,#0x44]
404158:  VMUL.F32        S4, S30, S24
40415C:  VMUL.F32        S0, S19, S28
404160:  LSLS            R0, R0, #0x19
404162:  VADD.F32        S2, S4, S2
404166:  BMI             loc_404176
404168:  VLDR            S6, [SP,#0xA8+var_7C]
40416C:  VLDR            S8, [SP,#0xA8+var_78]
404170:  VLDR            S4, [SP,#0xA8+var_74]
404174:  B               loc_40418A
404176:  VLDR            S4, =0.0
40417A:  MOVS            R0, #0
40417C:  STRD.W          R0, R0, [SP,#0xA8+var_7C]
404180:  VMOV.F32        S8, S4
404184:  STR             R0, [SP,#0xA8+var_74]
404186:  VMOV.F32        S6, S4
40418A:  VADD.F32        S24, S2, S0
40418E:  ADD             R0, SP, #0xA8+var_88; CVector *
404190:  VSUB.F32        S2, S20, S6
404194:  ADD             R1, SP, #0xA8+var_94; CVector *
404196:  VSUB.F32        S0, S22, S8
40419A:  ADD             R2, SP, #0xA8+var_70
40419C:  VSUB.F32        S4, S16, S4
4041A0:  VLDR            S20, [R5,#0x90]
4041A4:  VSTR            S0, [SP,#0xA8+var_90]
4041A8:  VSTR            S2, [SP,#0xA8+var_94]
4041AC:  VSTR            S4, [SP,#0xA8+var_8C]
4041B0:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4041B4:  VLDR            S0, [SP,#0xA8+var_88]
4041B8:  VLDR            S2, [SP,#0xA8+var_84]
4041BC:  VMUL.F32        S0, S0, S0
4041C0:  VLDR            S4, [SP,#0xA8+var_80]
4041C4:  VMUL.F32        S2, S2, S2
4041C8:  LDRB.W          R0, [R5,#0x3A]
4041CC:  VMUL.F32        S4, S4, S4
4041D0:  AND.W           R0, R0, #7
4041D4:  CMP             R0, #2
4041D6:  VADD.F32        S0, S0, S2
4041DA:  VMOV.F32        S2, #1.0
4041DE:  VADD.F32        S0, S0, S4
4041E2:  VLDR            S4, [R5,#0x94]
4041E6:  VDIV.F32        S6, S2, S20
4041EA:  ITT EQ
4041EC:  LDREQ.W         R0, [R5,#0x5A4]
4041F0:  CMPEQ           R0, #0
4041F2:  VDIV.F32        S0, S0, S4
4041F6:  VADD.F32        S0, S6, S0
4041FA:  VDIV.F32        S0, S2, S0
4041FE:  BEQ             loc_4042D6
404200:  LDR             R1, =(SOFTCOL_DEPTH_MIN_ptr - 0x404210)
404202:  VCMPE.F32       S24, #0.0
404206:  LDR             R0, =(SOFTCOL_DEPTH_MULT_ptr - 0x404216)
404208:  VMRS            APSR_nzcv, FPSCR
40420C:  ADD             R1, PC; SOFTCOL_DEPTH_MIN_ptr
40420E:  VLDR            S2, [R6,#0x28]
404212:  ADD             R0, PC; SOFTCOL_DEPTH_MULT_ptr
404214:  LDR             R1, [R1]; SOFTCOL_DEPTH_MIN
404216:  LDR             R0, [R0]; SOFTCOL_DEPTH_MULT
404218:  VLDR            S6, [R1]
40421C:  VLDR            S4, [R0]
404220:  VMIN.F32        D1, D3, D1
404224:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x40422A)
404226:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
404228:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
40422A:  VMUL.F32        S2, S4, S2
40422E:  VLDR            S4, =0.008
404232:  VMUL.F32        S2, S0, S2
404236:  VMUL.F32        S2, S2, S4
40423A:  VLDR            S4, [R0]
40423E:  VMUL.F32        S2, S4, S2
404242:  VSTR            S2, [R4]
404246:  BGE             loc_40425A
404248:  VMUL.F32        S4, S18, S24
40424C:  VMUL.F32        S0, S4, S0
404250:  VSUB.F32        S2, S2, S0
404254:  VSTR            S2, [R4]
404258:  B               loc_404390
40425A:  MOVS            R6, #0
40425C:  STR             R6, [R4]
40425E:  B               loc_4043EE
404260:  LDR             R0, [R5,#0x14]
404262:  VLDR            S0, [SP,#0xA8+var_70]
404266:  VLDR            S4, [SP,#0xA8+var_70+4]
40426A:  VLDR            S6, [R0,#0x20]
40426E:  VLDR            S10, [R0,#0x24]
404272:  VMUL.F32        S14, S0, S6
404276:  VLDR            S2, [SP,#0xA8+var_68]
40427A:  VMUL.F32        S12, S4, S10
40427E:  VLDR            S8, [R0,#0x28]
404282:  VMUL.F32        S1, S2, S8
404286:  VADD.F32        S12, S14, S12
40428A:  VLDR            S14, =-0.9
40428E:  VADD.F32        S12, S12, S1
404292:  VCMPE.F32       S12, S14
404296:  VMRS            APSR_nzcv, FPSCR
40429A:  BLT.W           loc_4043EC
40429E:  VCMPE.F32       S12, #0.0
4042A2:  VMRS            APSR_nzcv, FPSCR
4042A6:  BGE.W           loc_4043FC
4042AA:  VMUL.F32        S10, S10, S12
4042AE:  ADD             R0, SP, #0xA8+var_70; this
4042B0:  VMUL.F32        S6, S6, S12
4042B4:  VMUL.F32        S8, S8, S12
4042B8:  VSUB.F32        S4, S4, S10
4042BC:  VSUB.F32        S0, S0, S6
4042C0:  VSUB.F32        S2, S2, S8
4042C4:  VSTR            S4, [SP,#0xA8+var_70+4]
4042C8:  VSTR            S0, [SP,#0xA8+var_70]
4042CC:  VSTR            S2, [SP,#0xA8+var_68]
4042D0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4042D4:  B               loc_40412C
4042D6:  LDRB.W          R0, [R6,#0x21]
4042DA:  SUBS            R0, #0xD
4042DC:  UXTB            R0, R0
4042DE:  CMP             R0, #3
4042E0:  BHI             loc_404200
4042E2:  LDR             R0, =(SOFTCOL_DEPTH_MULT_ptr - 0x4042F0)
4042E4:  VCMPE.F32       S24, #0.0
4042E8:  VLDR            S2, [R6,#0x28]
4042EC:  ADD             R0, PC; SOFTCOL_DEPTH_MULT_ptr
4042EE:  VMRS            APSR_nzcv, FPSCR
4042F2:  LDR             R0, [R0]; SOFTCOL_DEPTH_MULT
4042F4:  VLDR            S4, [R0]
4042F8:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x404306)
4042FA:  VMUL.F32        S2, S2, S4
4042FE:  VLDR            S4, =0.008
404302:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
404304:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
404306:  VMUL.F32        S2, S0, S2
40430A:  VMUL.F32        S2, S2, S4
40430E:  VLDR            S4, [R0]
404312:  VMUL.F32        S2, S4, S2
404316:  VSTR            S2, [R4]
40431A:  BGE             loc_404336
40431C:  LDR             R0, =(SOFTCOL_CARLINE_SPEED_MULT_ptr - 0x404322)
40431E:  ADD             R0, PC; SOFTCOL_CARLINE_SPEED_MULT_ptr
404320:  LDR             R0, [R0]; SOFTCOL_CARLINE_SPEED_MULT
404322:  VLDR            S4, [R0]
404326:  VMUL.F32        S4, S24, S4
40432A:  VMUL.F32        S0, S0, S4
40432E:  VSUB.F32        S2, S2, S0
404332:  VSTR            S2, [R4]
404336:  LDR             R0, [R5,#0x14]
404338:  VLDR            S0, [SP,#0xA8+var_70]
40433C:  VLDR            S4, [SP,#0xA8+var_70+4]
404340:  VLDR            S8, [R0]
404344:  VLDR            S10, [R0,#4]
404348:  VMUL.F32        S1, S0, S8
40434C:  VLDR            S6, [SP,#0xA8+var_68]
404350:  VMUL.F32        S14, S4, S10
404354:  VLDR            S12, [R0,#8]
404358:  VMUL.F32        S3, S6, S12
40435C:  VADD.F32        S14, S1, S14
404360:  VLDR            S1, =0.9
404364:  VADD.F32        S14, S14, S3
404368:  VMUL.F32        S14, S14, S1
40436C:  VMUL.F32        S8, S8, S14
404370:  VMUL.F32        S10, S10, S14
404374:  VMUL.F32        S12, S12, S14
404378:  VSUB.F32        S0, S0, S8
40437C:  VSUB.F32        S4, S4, S10
404380:  VSUB.F32        S6, S6, S12
404384:  VSTR            S0, [SP,#0xA8+var_70]
404388:  VSTR            S4, [SP,#0xA8+var_70+4]
40438C:  VSTR            S6, [SP,#0xA8+var_68]
404390:  VCMP.F32        S2, #0.0
404394:  VMRS            APSR_nzcv, FPSCR
404398:  BEQ             loc_4043EC
40439A:  VLDR            S0, [SP,#0xA8+var_70]
40439E:  VMOV            R0, S16
4043A2:  VLDR            S4, [SP,#0xA8+var_70+4]
4043A6:  MOVS            R6, #1
4043A8:  VLDR            S6, [SP,#0xA8+var_68]
4043AC:  VMUL.F32        S0, S2, S0
4043B0:  VMUL.F32        S4, S2, S4
4043B4:  STRD.W          R9, R8, [SP,#0xA8+var_A8]
4043B8:  VMUL.F32        S2, S2, S6
4043BC:  VMOV            R1, S0
4043C0:  VMOV            R2, S4
4043C4:  VMOV            R3, S2
4043C8:  STRD.W          R0, R6, [SP,#0xA8+var_A0]
4043CC:  MOV             R0, R5
4043CE:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
4043D2:  VLDR            S0, [R4]
4043D6:  VCMPE.F32       S0, #0.0
4043DA:  VMRS            APSR_nzcv, FPSCR
4043DE:  ITTT LT
4043E0:  VNEGLT.F32      S0, S0
4043E4:  VSTRLT          S0, [R4]
4043E8:  MOVLT           R6, #1
4043EA:  B               loc_4043EE
4043EC:  MOVS            R6, #0
4043EE:  MOV             R0, R6
4043F0:  ADD             SP, SP, #0x50 ; 'P'
4043F2:  VPOP            {D8-D15}
4043F6:  POP.W           {R8,R9,R11}
4043FA:  POP             {R4-R7,PC}
4043FC:  VMOV.F32        S0, #0.5
404400:  VCMPE.F32       S12, S0
404404:  VMRS            APSR_nzcv, FPSCR
404408:  BLE.W           loc_40412C
40440C:  LDR             R0, =(SOFTCOL_SPEED_MULT2_ptr - 0x404412)
40440E:  ADD             R0, PC; SOFTCOL_SPEED_MULT2_ptr
404410:  LDR             R0, [R0]; SOFTCOL_SPEED_MULT2
404412:  VLDR            S18, [R0]
404416:  B               loc_40412C
