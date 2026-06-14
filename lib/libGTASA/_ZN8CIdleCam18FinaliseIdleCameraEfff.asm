; =========================================================
; Game Engine Function: _ZN8CIdleCam18FinaliseIdleCameraEfff
; Address            : 0x3D4024 - 0x3D428E
; =========================================================

3D4024:  PUSH            {R4-R7,LR}
3D4026:  ADD             R7, SP, #0xC
3D4028:  PUSH.W          {R8-R10}
3D402C:  VPUSH           {D8-D10}
3D4030:  SUB             SP, SP, #0x30
3D4032:  MOV             R6, R2
3D4034:  MOV             R4, R0
3D4036:  MOV             R0, R6; x
3D4038:  MOV             R8, R3
3D403A:  MOV             R5, R1
3D403C:  BLX             cosf
3D4040:  MOV             R9, R0
3D4042:  MOV             R0, R5; x
3D4044:  BLX             cosf
3D4048:  MOV             R10, R0
3D404A:  MOV             R0, R6; x
3D404C:  BLX             sinf
3D4050:  VMOV            S0, R0
3D4054:  MOV             R0, R5; x
3D4056:  VMOV            S2, R10
3D405A:  VMOV            S4, R9
3D405E:  VNMUL.F32       S16, S2, S0
3D4062:  VNMUL.F32       S18, S4, S2
3D4066:  BLX             sinf
3D406A:  LDR.W           R1, [R4,#0x98]
3D406E:  STR.W           R0, [R1,#0x170]
3D4072:  VSTR            S18, [R1,#0x168]
3D4076:  VSTR            S16, [R1,#0x16C]
3D407A:  LDR.W           R0, [R4,#0x98]
3D407E:  ADD.W           R0, R0, #0x168; this
3D4082:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3D4086:  VMOV            S16, R8
3D408A:  VLDR            S0, [R4,#0x88]
3D408E:  LDR.W           R0, [R4,#0x98]
3D4092:  VMUL.F32        S0, S0, S16
3D4096:  VLDR            S2, [R0,#0x16C]
3D409A:  VLDR            S8, [R0,#0x178]
3D409E:  VLDR            S4, [R0,#0x170]
3D40A2:  VLDR            S10, [R0,#0x17C]
3D40A6:  VADD.F32        S2, S8, S2
3D40AA:  VLDR            S6, [R0,#0x174]
3D40AE:  VMOV            R1, S0; float
3D40B2:  VLDR            S0, [R0,#0x168]
3D40B6:  LDR             R0, =(gHandShaker_ptr - 0x3D40C4)
3D40B8:  VADD.F32        S4, S10, S4
3D40BC:  VADD.F32        S0, S6, S0
3D40C0:  ADD             R0, PC; gHandShaker_ptr
3D40C2:  LDR             R5, [R0]; gHandShaker
3D40C4:  MOV             R0, R5; this
3D40C6:  VSTR            S0, [R4,#0x18]
3D40CA:  VSTR            S2, [R4,#0x1C]
3D40CE:  VSTR            S4, [R4,#0x20]
3D40D2:  BLX             j__ZN11CHandShaker7ProcessEf; CHandShaker::Process(float)
3D40D6:  LDR.W           R0, [R4,#0x98]
3D40DA:  ADD.W           R2, R5, #0x3C ; '<'
3D40DE:  VLDR            S18, [R4,#0x88]
3D40E2:  ADD.W           R1, R0, #0x168; CMatrix *
3D40E6:  ADD             R0, SP, #0x60+var_40; CVector *
3D40E8:  VLDR            S20, [R5,#8]
3D40EC:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
3D40F0:  VMUL.F32        S0, S20, S18
3D40F4:  LDR.W           R0, [R4,#0x98]
3D40F8:  VLDR            D16, [SP,#0x60+var_40]
3D40FC:  MOV.W           R8, #0
3D4100:  LDR             R1, [SP,#0x60+var_38]
3D4102:  STR.W           R1, [R0,#0x170]
3D4106:  VSTR            D16, [R0,#0x168]
3D410A:  LDR.W           R6, [R4,#0x98]
3D410E:  VMUL.F32        S0, S0, S16
3D4112:  STR.W           R8, [R6,#0x190]
3D4116:  VMOV            R5, S0
3D411A:  MOV             R0, R5; x
3D411C:  BLX             cosf
3D4120:  STR.W           R0, [R6,#0x194]
3D4124:  MOV             R0, R5; x
3D4126:  BLX             sinf
3D412A:  STR.W           R0, [R6,#0x18C]
3D412E:  ADD             R5, SP, #0x60+var_50
3D4130:  LDR.W           R0, [R4,#0x98]
3D4134:  ADD.W           R1, R0, #0x168; CVector *
3D4138:  ADD.W           R2, R0, #0x18C
3D413C:  MOV             R0, R5; CVector *
3D413E:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3D4142:  MOV             R0, R5; this
3D4144:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3D4148:  LDR.W           R0, [R4,#0x98]
3D414C:  MOV             R1, R5; CVector *
3D414E:  ADD.W           R2, R0, #0x168
3D4152:  MOV             R0, SP; CVector *
3D4154:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3D4158:  LDR.W           R0, [R4,#0x98]
3D415C:  VLDR            D16, [SP,#0x60+var_60]
3D4160:  LDR             R1, [SP,#0x60+var_58]
3D4162:  STR.W           R1, [R0,#0x194]
3D4166:  VSTR            D16, [R0,#0x18C]
3D416A:  LDR.W           R0, [R4,#0x98]
3D416E:  VLDR            S0, [R0,#0x168]
3D4172:  VCMP.F32        S0, #0.0
3D4176:  VMRS            APSR_nzcv, FPSCR
3D417A:  BNE             loc_3D41A4
3D417C:  VLDR            S0, [R0,#0x16C]
3D4180:  VCMP.F32        S0, #0.0
3D4184:  VMRS            APSR_nzcv, FPSCR
3D4188:  ITTTT EQ
3D418A:  MOVWEQ          R1, #0xB717
3D418E:  MOVTEQ          R1, #0x38D1
3D4192:  STREQ.W         R1, [R0,#0x168]
3D4196:  LDREQ.W         R0, [R4,#0x98]
3D419A:  ITT EQ
3D419C:  STREQ.W         R1, [R0,#0x16C]
3D41A0:  LDREQ.W         R0, [R4,#0x98]
3D41A4:  ADD.W           R1, R0, #0x168; CVector *
3D41A8:  ADD.W           R2, R0, #0x18C
3D41AC:  MOV             R0, SP; CVector *
3D41AE:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3D41B2:  ADD             R5, SP, #0x60+var_50
3D41B4:  LDR             R0, [SP,#0x60+var_58]
3D41B6:  VLDR            D16, [SP,#0x60+var_60]
3D41BA:  STR             R0, [SP,#0x60+var_48]
3D41BC:  MOV             R0, R5; this
3D41BE:  VSTR            D16, [SP,#0x60+var_50]
3D41C2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3D41C6:  LDR.W           R0, [R4,#0x98]
3D41CA:  MOV             R1, R5; CVector *
3D41CC:  ADD.W           R2, R0, #0x168
3D41D0:  MOV             R0, SP; CVector *
3D41D2:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3D41D6:  LDR.W           R0, [R4,#0x98]
3D41DA:  VLDR            D16, [SP,#0x60+var_60]
3D41DE:  LDR             R1, [SP,#0x60+var_58]
3D41E0:  STR.W           R1, [R0,#0x194]
3D41E4:  MOV.W           R1, #0x3F800000
3D41E8:  VSTR            D16, [R0,#0x18C]
3D41EC:  LDR.W           R0, [R4,#0x98]
3D41F0:  STRD.W          R8, R8, [R0,#0x18C]
3D41F4:  STR.W           R1, [R0,#0x194]
3D41F8:  LDR.W           R0, [R4,#0x98]
3D41FC:  ADD.W           R0, R0, #0x168; this
3D4200:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3D4204:  LDR.W           R0, [R4,#0x98]
3D4208:  VLDR            S0, [R0,#0x168]
3D420C:  VCMP.F32        S0, #0.0
3D4210:  VMRS            APSR_nzcv, FPSCR
3D4214:  BNE             loc_3D423E
3D4216:  VLDR            S0, [R0,#0x16C]
3D421A:  VCMP.F32        S0, #0.0
3D421E:  VMRS            APSR_nzcv, FPSCR
3D4222:  ITTTT EQ
3D4224:  MOVWEQ          R1, #0xB717
3D4228:  MOVTEQ          R1, #0x38D1
3D422C:  STREQ.W         R1, [R0,#0x168]
3D4230:  LDREQ.W         R0, [R4,#0x98]
3D4234:  ITT EQ
3D4236:  STREQ.W         R1, [R0,#0x16C]
3D423A:  LDREQ.W         R0, [R4,#0x98]
3D423E:  ADD.W           R1, R0, #0x168; CVector *
3D4242:  ADD.W           R2, R0, #0x18C
3D4246:  MOV             R0, SP; CVector *
3D4248:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3D424C:  ADD             R5, SP, #0x60+var_50
3D424E:  LDR             R0, [SP,#0x60+var_58]
3D4250:  VLDR            D16, [SP,#0x60+var_60]
3D4254:  STR             R0, [SP,#0x60+var_48]
3D4256:  MOV             R0, R5; this
3D4258:  VSTR            D16, [SP,#0x60+var_50]
3D425C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3D4260:  LDR.W           R0, [R4,#0x98]
3D4264:  MOV             R1, R5; CVector *
3D4266:  ADD.W           R2, R0, #0x168
3D426A:  MOV             R0, SP; CVector *
3D426C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3D4270:  LDR.W           R0, [R4,#0x98]
3D4274:  VLDR            D16, [SP,#0x60+var_60]
3D4278:  LDR             R1, [SP,#0x60+var_58]
3D427A:  STR.W           R1, [R0,#0x194]
3D427E:  VSTR            D16, [R0,#0x18C]
3D4282:  ADD             SP, SP, #0x30 ; '0'
3D4284:  VPOP            {D8-D10}
3D4288:  POP.W           {R8-R10}
3D428C:  POP             {R4-R7,PC}
