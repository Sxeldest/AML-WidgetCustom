; =========================================================
; Game Engine Function: _ZN9CPhysical11SkipPhysicsEv
; Address            : 0x3FEE8C - 0x3FEEF8
; =========================================================

3FEE8C:  PUSH            {R4,R5,R7,LR}
3FEE8E:  ADD             R7, SP, #8
3FEE90:  MOV             R4, R0
3FEE92:  MOVW            R2, #0x1068
3FEE96:  LDRB.W          R0, [R4,#0x3A]
3FEE9A:  AND.W           R1, R0, #6
3FEE9E:  AND.W           R0, R0, #0xF8
3FEEA2:  CMP             R1, #2
3FEEA4:  ITTT NE
3FEEA6:  LDRNE           R1, [R4,#0x44]
3FEEA8:  BICNE.W         R1, R1, #0x100
3FEEAC:  STRNE           R1, [R4,#0x44]
3FEEAE:  CMP             R0, #0x10
3FEEB0:  LDR             R1, [R4,#0x1C]
3FEEB2:  BIC.W           R1, R1, R2
3FEEB6:  STR             R1, [R4,#0x1C]
3FEEB8:  IT EQ
3FEEBA:  POPEQ           {R4,R5,R7,PC}
3FEEBC:  MOV             R1, R4
3FEEBE:  MOVS            R5, #0
3FEEC0:  LDR.W           R0, [R1,#0xE0]!; CEntity **
3FEEC4:  LDR.W           R2, [R1,#-0x9C]
3FEEC8:  CMP             R0, #0
3FEECA:  STRB.W          R5, [R1,#-0x23]
3FEECE:  STRH            R5, [R1,#0x1C]
3FEED0:  BIC.W           R2, R2, #0x200
3FEED4:  STR.W           R5, [R1,#-4]
3FEED8:  STR.W           R2, [R1,#-0x9C]
3FEEDC:  IT NE
3FEEDE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3FEEE2:  VMOV.I32        Q8, #0
3FEEE6:  ADD.W           R0, R4, #0x60 ; '`'
3FEEEA:  STRD.W          R5, R5, [R4,#0x70]
3FEEEE:  STR.W           R5, [R4,#0xE0]
3FEEF2:  VST1.32         {D16-D17}, [R0]
3FEEF6:  POP             {R4,R5,R7,PC}
