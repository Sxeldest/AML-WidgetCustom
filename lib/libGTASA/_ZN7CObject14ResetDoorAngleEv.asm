; =========================================================
; Game Engine Function: _ZN7CObject14ResetDoorAngleEv
; Address            : 0x455EF8 - 0x455F7E
; =========================================================

455EF8:  PUSH            {R4,R6,R7,LR}
455EFA:  ADD             R7, SP, #8
455EFC:  MOV             R4, R0
455EFE:  LDRB.W          R0, [R4,#0x44]
455F02:  LSLS            R0, R0, #0x1A
455F04:  BMI             loc_455F08
455F06:  POP             {R4,R6,R7,PC}
455F08:  VLDR            S2, =-1000.0
455F0C:  VLDR            S0, [R4,#0x15C]
455F10:  VCMPE.F32       S0, S2
455F14:  VMRS            APSR_nzcv, FPSCR
455F18:  IT LE
455F1A:  POPLE           {R4,R6,R7,PC}
455F1C:  LDR             R0, [R4,#0x14]; this
455F1E:  CBZ             R0, loc_455F2A
455F20:  VMOV            R1, S0; x
455F24:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
455F28:  B               loc_455F2E
455F2A:  VSTR            S0, [R4,#0x10]
455F2E:  LDR             R0, [R4]
455F30:  MOVS            R1, #1
455F32:  LDR             R2, [R0,#0x14]
455F34:  MOV             R0, R4
455F36:  BLX             R2
455F38:  MOVS            R1, #0
455F3A:  STRD.W          R1, R1, [R4,#0x48]
455F3E:  VLDR            D16, [R4,#0x48]
455F42:  STRD.W          R1, R1, [R4,#0x54]
455F46:  LDR             R0, [R4,#0x18]
455F48:  VLDR            D17, [R4,#0x54]
455F4C:  CMP             R0, #0
455F4E:  STR             R1, [R4,#0x68]
455F50:  STR             R1, [R4,#0x5C]
455F52:  STR             R1, [R4,#0x74]
455F54:  STR             R1, [R4,#0x50]
455F56:  VSTR            D16, [R4,#0x60]
455F5A:  VSTR            D17, [R4,#0x6C]
455F5E:  BEQ             loc_455F74
455F60:  LDR             R1, [R0,#4]
455F62:  LDR             R0, [R4,#0x14]
455F64:  ADDS            R1, #0x10
455F66:  CBZ             R0, loc_455F6E
455F68:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
455F6C:  B               loc_455F74
455F6E:  ADDS            R0, R4, #4
455F70:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
455F74:  MOV             R0, R4; this
455F76:  POP.W           {R4,R6,R7,LR}
455F7A:  B.W             j_j__ZN7CEntity13UpdateRwFrameEv; j_CEntity::UpdateRwFrame(void)
