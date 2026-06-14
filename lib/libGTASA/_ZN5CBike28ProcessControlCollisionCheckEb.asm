; =========================================================
; Game Engine Function: _ZN5CBike28ProcessControlCollisionCheckEb
; Address            : 0x56529E - 0x565364
; =========================================================

56529E:  PUSH            {R4-R7,LR}
5652A0:  ADD             R7, SP, #0xC
5652A2:  PUSH.W          {R8}
5652A6:  SUB             SP, SP, #0x48
5652A8:  MOV             R4, R0
5652AA:  MOV             R5, R1
5652AC:  LDR             R1, [R4,#0x14]; CMatrix *
5652AE:  MOV             R0, SP; this
5652B0:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
5652B4:  MOV             R8, R4
5652B6:  LDR.W           R0, [R8,#0x1C]!
5652BA:  BIC.W           R0, R0, #0x10
5652BE:  STR.W           R0, [R8]
5652C2:  MOV             R0, R4; this
5652C4:  BLX             j__ZN9CPhysical11SkipPhysicsEv; CPhysical::SkipPhysics(void)
5652C8:  VMOV.F32        Q8, #1.0
5652CC:  ADDW            R0, R4, #0x724
5652D0:  CMP             R5, #1
5652D2:  MOV.W           R1, #0
5652D6:  VST1.32         {D16-D17}, [R0]
5652DA:  LDR             R0, [R4,#0x44]
5652DC:  STR.W           R1, [R4,#0xD8]
5652E0:  BIC.W           R0, R0, #0x9000
5652E4:  STR             R0, [R4,#0x44]
5652E6:  BNE             loc_56532A
5652E8:  MOV             R0, R4; this
5652EA:  BLX             j__ZN9CPhysical14ApplyMoveSpeedEv; CPhysical::ApplyMoveSpeed(void)
5652EE:  MOV             R0, R4; this
5652F0:  BLX             j__ZN9CPhysical14ApplyTurnSpeedEv; CPhysical::ApplyTurnSpeed(void)
5652F4:  MOV             R0, R4; this
5652F6:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
5652FA:  CMP             R0, #1
5652FC:  BNE             loc_565348
5652FE:  MOVS            R6, #0
565300:  MOV             R5, SP
565302:  LDR             R0, [R4,#0x14]
565304:  MOV             R1, R5
565306:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
56530A:  MOV             R0, R4; this
56530C:  BLX             j__ZN9CPhysical14ApplyMoveSpeedEv; CPhysical::ApplyMoveSpeed(void)
565310:  MOV             R0, R4; this
565312:  BLX             j__ZN9CPhysical14ApplyTurnSpeedEv; CPhysical::ApplyTurnSpeed(void)
565316:  MOV             R0, R4; this
565318:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
56531C:  CMP             R0, #1
56531E:  BNE             loc_565348
565320:  ADDS            R6, #1
565322:  UXTH            R0, R6
565324:  CMP             R0, #5
565326:  BCC             loc_565302
565328:  B               loc_565348
56532A:  LDR.W           R5, [R8]
56532E:  BIC.W           R0, R5, #1
565332:  STR.W           R0, [R8]
565336:  MOV             R0, R4; this
565338:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
56533C:  LDR.W           R0, [R8]
565340:  BFI.W           R0, R5, #0, #1
565344:  STR.W           R0, [R8]
565348:  LDR.W           R0, [R8]
56534C:  MOVS            R1, #2
56534E:  BFI.W           R0, R1, #4, #2
565352:  STR.W           R0, [R8]
565356:  MOV             R0, SP; this
565358:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
56535C:  ADD             SP, SP, #0x48 ; 'H'
56535E:  POP.W           {R8}
565362:  POP             {R4-R7,PC}
