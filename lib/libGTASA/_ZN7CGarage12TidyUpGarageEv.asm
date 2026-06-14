; =========================================================
; Game Engine Function: _ZN7CGarage12TidyUpGarageEv
; Address            : 0x311160 - 0x311288
; =========================================================

311160:  PUSH            {R4-R7,LR}
311162:  ADD             R7, SP, #0xC
311164:  PUSH.W          {R8-R10}
311168:  VPUSH           {D8}
31116C:  MOV             R8, R0
31116E:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x311174)
311170:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
311172:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
311174:  LDR.W           R9, [R0]; CPools::ms_pVehiclePool
311178:  LDR.W           R0, [R9,#8]
31117C:  SUBS            R4, R0, #1
31117E:  BEQ             loc_31127E
311180:  MOVW            R1, #0xA2C
311184:  VMOV.F32        S16, #0.5
311188:  MULS            R0, R1
31118A:  SUBW            R6, R0, #0xA2C
31118E:  LDR.W           R0, [R9,#4]
311192:  LDRSB           R0, [R0,R4]
311194:  CMP             R0, #0
311196:  BLT             loc_311274
311198:  LDR.W           R10, [R9]
31119C:  ADDS.W          R5, R10, R6
3111A0:  BEQ             loc_311274
3111A2:  LDR.W           R0, [R5,#0x5A0]
3111A6:  CMP             R0, #9
3111A8:  IT NE
3111AA:  CMPNE           R0, #0
3111AC:  BNE             loc_311274
3111AE:  LDR             R0, [R5,#0x14]
3111B0:  VLDR            S2, [R8,#8]
3111B4:  ADD.W           R1, R0, #0x30 ; '0'
3111B8:  CMP             R0, #0
3111BA:  IT EQ
3111BC:  ADDEQ           R1, R5, #4
3111BE:  VLDR            S0, [R1,#8]
3111C2:  VCMPE.F32       S2, S0
3111C6:  VMRS            APSR_nzcv, FPSCR
3111CA:  BGT             loc_311274
3111CC:  VLDR            S2, [R8,#0x1C]
3111D0:  VCMPE.F32       S2, S0
3111D4:  VMRS            APSR_nzcv, FPSCR
3111D8:  BLT             loc_311274
3111DA:  VLDR            S0, [R1]
3111DE:  VLDR            S4, [R8]
3111E2:  VLDR            S2, [R1,#4]
3111E6:  VLDR            S6, [R8,#4]
3111EA:  VSUB.F32        S0, S0, S4
3111EE:  VLDR            S8, [R8,#0xC]
3111F2:  VSUB.F32        S2, S2, S6
3111F6:  VLDR            S10, [R8,#0x10]
3111FA:  VMUL.F32        S6, S0, S8
3111FE:  VMUL.F32        S4, S2, S10
311202:  VADD.F32        S4, S6, S4
311206:  VCMPE.F32       S4, #0.0
31120A:  VMRS            APSR_nzcv, FPSCR
31120E:  BLT             loc_311274
311210:  VLDR            S6, [R8,#0x20]
311214:  VCMPE.F32       S4, S6
311218:  VMRS            APSR_nzcv, FPSCR
31121C:  BGT             loc_311274
31121E:  VLDR            S4, [R8,#0x14]
311222:  VLDR            S6, [R8,#0x18]
311226:  VMUL.F32        S0, S0, S4
31122A:  VMUL.F32        S2, S2, S6
31122E:  VADD.F32        S0, S0, S2
311232:  VCMPE.F32       S0, #0.0
311236:  VMRS            APSR_nzcv, FPSCR
31123A:  BLT             loc_311274
31123C:  VLDR            S2, [R8,#0x24]
311240:  VCMPE.F32       S0, S2
311244:  VMRS            APSR_nzcv, FPSCR
311248:  BGT             loc_311274
31124A:  LDRB.W          R1, [R5,#0x3A]
31124E:  AND.W           R1, R1, #0xF8; CEntity *
311252:  CMP             R1, #0x28 ; '('
311254:  BEQ             loc_311264
311256:  VLDR            S0, [R0,#0x28]
31125A:  VCMPE.F32       S0, S16
31125E:  VMRS            APSR_nzcv, FPSCR
311262:  BGE             loc_311274
311264:  MOV             R0, R5; this
311266:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
31126A:  LDR.W           R0, [R10,R6]
31126E:  LDR             R1, [R0,#4]
311270:  MOV             R0, R5
311272:  BLX             R1
311274:  SUBW            R6, R6, #0xA2C
311278:  SUBS            R4, #1
31127A:  BNE.W           loc_31118E
31127E:  VPOP            {D8}
311282:  POP.W           {R8-R10}
311286:  POP             {R4-R7,PC}
