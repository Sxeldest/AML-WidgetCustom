; =========================================================
; Game Engine Function: _ZN4CBmx16LaunchBunnyHopCBEP21CAnimBlendAssociationPv
; Address            : 0x56A240 - 0x56A386
; =========================================================

56A240:  PUSH            {R4,R6,R7,LR}
56A242:  ADD             R7, SP, #8
56A244:  VPUSH           {D8-D9}
56A248:  SUB             SP, SP, #0x10
56A24A:  MOV             R4, R1
56A24C:  ADDW            R0, R4, #0x744
56A250:  VLDR            S0, [R0]
56A254:  VCMPE.F32       S0, #0.0
56A258:  VMRS            APSR_nzcv, FPSCR
56A25C:  BGT             loc_56A272
56A25E:  ADD.W           R0, R4, #0x748
56A262:  VLDR            S0, [R0]
56A266:  VCMPE.F32       S0, #0.0
56A26A:  VMRS            APSR_nzcv, FPSCR
56A26E:  BLE.W           loc_56A37E
56A272:  ADDW            R0, R4, #0x74C
56A276:  VLDR            S0, [R0]
56A27A:  VCMPE.F32       S0, #0.0
56A27E:  VMRS            APSR_nzcv, FPSCR
56A282:  BGT             loc_56A296
56A284:  ADD.W           R0, R4, #0x750
56A288:  VLDR            S0, [R0]
56A28C:  VCMPE.F32       S0, #0.0
56A290:  VMRS            APSR_nzcv, FPSCR
56A294:  BLE             loc_56A37E
56A296:  VMOV.F32        S0, #25.0
56A29A:  ADDW            R0, R4, #0x828
56A29E:  VMOV.F32        S4, #2.0
56A2A2:  VLDR            S2, [R0]
56A2A6:  VDIV.F32        S0, S2, S0
56A2AA:  VMOV.F32        S2, #1.0
56A2AE:  VCMPE.F32       S0, S2
56A2B2:  VMRS            APSR_nzcv, FPSCR
56A2B6:  VADD.F32        S16, S0, S2
56A2BA:  IT GT
56A2BC:  VMOVGT.F32      S16, S4
56A2C0:  LDRB.W          R0, [R4,#0x3A]
56A2C4:  CMP             R0, #7
56A2C6:  BHI             loc_56A2D6
56A2C8:  MOVS            R0, #6
56A2CA:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
56A2CE:  VMOV            S0, R0
56A2D2:  VMUL.F32        S16, S16, S0
56A2D6:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x56A2E0)
56A2D8:  VMOV.F32        S0, #5.0
56A2DC:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
56A2DE:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
56A2E0:  LDRB.W          R0, [R0,#(byte_79682D - 0x7967F4)]
56A2E4:  VMUL.F32        S18, S16, S0
56A2E8:  VLDR            S0, =0.06
56A2EC:  CMP             R0, #0
56A2EE:  IT EQ
56A2F0:  VMOVEQ.F32      S18, S16
56A2F4:  VLDR            S2, [R4,#0x90]
56A2F8:  VMUL.F32        S0, S18, S0
56A2FC:  LDR             R0, [R4,#0x14]
56A2FE:  VLDR            S4, [R0,#0x24]
56A302:  VLDR            S6, [R0,#0x28]
56A306:  VMUL.F32        S0, S2, S0
56A30A:  VLDR            S2, [R0,#0x20]
56A30E:  MOV             R0, R4
56A310:  VMUL.F32        S2, S2, S0
56A314:  VMUL.F32        S4, S4, S0
56A318:  VMUL.F32        S0, S0, S6
56A31C:  VMOV            R1, S2
56A320:  VMOV            R2, S4
56A324:  VMOV            R3, S0
56A328:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
56A32C:  VLDR            S0, =0.01
56A330:  VLDR            S2, [R4,#0x94]
56A334:  VMUL.F32        S0, S18, S0
56A338:  LDR             R0, [R4,#0x14]
56A33A:  VLDR            S4, [R0,#0x24]
56A33E:  VLDR            S6, [R0,#0x28]
56A342:  VMUL.F32        S0, S0, S2
56A346:  VLDR            S2, [R0,#0x20]
56A34A:  LDRD.W          R12, LR, [R0,#0x10]
56A34E:  LDR             R0, [R0,#0x18]
56A350:  STRD.W          R12, LR, [SP,#0x28+var_28]
56A354:  STR             R0, [SP,#0x28+var_20]
56A356:  MOV             R0, R4
56A358:  VMUL.F32        S2, S0, S2
56A35C:  VMUL.F32        S4, S0, S4
56A360:  VMUL.F32        S0, S0, S6
56A364:  VMOV            R1, S2
56A368:  VMOV            R2, S4
56A36C:  VMOV            R3, S0
56A370:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
56A374:  LDR             R0, =(dword_A0257C - 0x56A37E)
56A376:  MOV.W           R1, #0x3F000000
56A37A:  ADD             R0, PC; dword_A0257C
56A37C:  STR             R1, [R0]
56A37E:  ADD             SP, SP, #0x10
56A380:  VPOP            {D8-D9}
56A384:  POP             {R4,R6,R7,PC}
