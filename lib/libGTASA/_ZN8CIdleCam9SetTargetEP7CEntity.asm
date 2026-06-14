; =========================================================
; Game Engine Function: _ZN8CIdleCam9SetTargetEP7CEntity
; Address            : 0x3D3A18 - 0x3D3AB4
; =========================================================

3D3A18:  PUSH            {R4,R5,R7,LR}
3D3A1A:  ADD             R7, SP, #8
3D3A1C:  VPUSH           {D8}
3D3A20:  MOV             R4, R0
3D3A22:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3D3A2A)
3D3A24:  MOV             R5, R1
3D3A26:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3D3A28:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3D3A2A:  VLDR            S0, [R0]
3D3A2E:  VCVT.F32.U32    S16, S0
3D3A32:  LDR             R0, [R4]; this
3D3A34:  CBZ             R0, loc_3D3A5A
3D3A36:  VLDR            D16, [R4,#0x18]
3D3A3A:  LDR             R1, [R4,#0x20]
3D3A3C:  STR             R1, [R4,#0xC]
3D3A3E:  VSTR            D16, [R4,#4]
3D3A42:  CBZ             R5, loc_3D3A92
3D3A44:  CMP             R0, #0
3D3A46:  ITT NE
3D3A48:  MOVNE           R1, R4; CEntity **
3D3A4A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3D3A4E:  MOV             R0, R5; this
3D3A50:  MOV             R1, R4; CEntity **
3D3A52:  STR             R5, [R4]
3D3A54:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3D3A58:  B               loc_3D3A9E
3D3A5A:  LDR.W           R1, [R4,#0x98]
3D3A5E:  VLDR            S0, [R1,#0x168]
3D3A62:  VLDR            S6, [R1,#0x174]
3D3A66:  VLDR            S2, [R1,#0x16C]
3D3A6A:  VLDR            S8, [R1,#0x178]
3D3A6E:  VADD.F32        S0, S6, S0
3D3A72:  VLDR            S4, [R1,#0x170]
3D3A76:  VLDR            S10, [R1,#0x17C]
3D3A7A:  VADD.F32        S2, S8, S2
3D3A7E:  VADD.F32        S4, S10, S4
3D3A82:  VSTR            S0, [R4,#4]
3D3A86:  VSTR            S2, [R4,#8]
3D3A8A:  VSTR            S4, [R4,#0xC]
3D3A8E:  CMP             R5, #0
3D3A90:  BNE             loc_3D3A44
3D3A92:  CBZ             R0, loc_3D3A9E
3D3A94:  MOV             R1, R4; CEntity **
3D3A96:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3D3A9A:  MOVS            R0, #0
3D3A9C:  STR             R0, [R4]
3D3A9E:  MOVS            R0, #0
3D3AA0:  VSTR            S16, [R4,#0x34]
3D3AA4:  VSTR            S16, [R4,#0x10]
3D3AA8:  STR             R0, [R4,#0x54]
3D3AAA:  STRB.W          R0, [R4,#0x79]
3D3AAE:  VPOP            {D8}
3D3AB2:  POP             {R4,R5,R7,PC}
