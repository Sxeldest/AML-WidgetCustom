; =========================================================
; Game Engine Function: _ZN11CAutomobile28ProcessControlCollisionCheckEb
; Address            : 0x558F08 - 0x558FCE
; =========================================================

558F08:  PUSH            {R4-R7,LR}
558F0A:  ADD             R7, SP, #0xC
558F0C:  PUSH.W          {R8}
558F10:  SUB             SP, SP, #0x48
558F12:  MOV             R4, R0
558F14:  MOV             R5, R1
558F16:  LDR             R1, [R4,#0x14]; CMatrix *
558F18:  MOV             R0, SP; this
558F1A:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
558F1E:  MOV             R8, R4
558F20:  LDR.W           R0, [R8,#0x1C]!
558F24:  BIC.W           R0, R0, #0x10
558F28:  STR.W           R0, [R8]
558F2C:  MOV             R0, R4; this
558F2E:  BLX             j__ZN9CPhysical11SkipPhysicsEv; CPhysical::SkipPhysics(void)
558F32:  VMOV.F32        Q8, #1.0
558F36:  ADD.W           R0, R4, #0x7E8
558F3A:  CMP             R5, #1
558F3C:  MOV.W           R1, #0
558F40:  VST1.32         {D16-D17}, [R0]
558F44:  LDR             R0, [R4,#0x44]
558F46:  STR.W           R1, [R4,#0xD8]
558F4A:  BIC.W           R0, R0, #0x9000
558F4E:  STR             R0, [R4,#0x44]
558F50:  BNE             loc_558F94
558F52:  MOV             R0, R4; this
558F54:  BLX             j__ZN9CPhysical14ApplyMoveSpeedEv; CPhysical::ApplyMoveSpeed(void)
558F58:  MOV             R0, R4; this
558F5A:  BLX             j__ZN9CPhysical14ApplyTurnSpeedEv; CPhysical::ApplyTurnSpeed(void)
558F5E:  MOV             R0, R4; this
558F60:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
558F64:  CMP             R0, #1
558F66:  BNE             loc_558FB2
558F68:  MOVS            R6, #0
558F6A:  MOV             R5, SP
558F6C:  LDR             R0, [R4,#0x14]
558F6E:  MOV             R1, R5
558F70:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
558F74:  MOV             R0, R4; this
558F76:  BLX             j__ZN9CPhysical14ApplyMoveSpeedEv; CPhysical::ApplyMoveSpeed(void)
558F7A:  MOV             R0, R4; this
558F7C:  BLX             j__ZN9CPhysical14ApplyTurnSpeedEv; CPhysical::ApplyTurnSpeed(void)
558F80:  MOV             R0, R4; this
558F82:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
558F86:  CMP             R0, #1
558F88:  BNE             loc_558FB2
558F8A:  ADDS            R6, #1
558F8C:  UXTH            R0, R6
558F8E:  CMP             R0, #5
558F90:  BCC             loc_558F6C
558F92:  B               loc_558FB2
558F94:  LDR.W           R5, [R8]
558F98:  BIC.W           R0, R5, #1
558F9C:  STR.W           R0, [R8]
558FA0:  MOV             R0, R4; this
558FA2:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
558FA6:  LDR.W           R0, [R8]
558FAA:  BFI.W           R0, R5, #0, #1
558FAE:  STR.W           R0, [R8]
558FB2:  LDR.W           R0, [R8]
558FB6:  MOVS            R1, #2
558FB8:  BFI.W           R0, R1, #4, #2
558FBC:  STR.W           R0, [R8]
558FC0:  MOV             R0, SP; this
558FC2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
558FC6:  ADD             SP, SP, #0x48 ; 'H'
558FC8:  POP.W           {R8}
558FCC:  POP             {R4-R7,PC}
