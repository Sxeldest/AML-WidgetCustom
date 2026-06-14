; =========================================================
; Game Engine Function: _ZN9CPhysical20AttachEntityToEntityEP7CEntity7CVectorS2_
; Address            : 0x406CC2 - 0x406D8C
; =========================================================

406CC2:  PUSH            {R4-R7,LR}
406CC4:  ADD             R7, SP, #0xC
406CC6:  PUSH.W          {R8,R9,R11}
406CCA:  MOV             R4, R1
406CCC:  MOV             R8, R3
406CCE:  MOV             R6, R2
406CD0:  MOV             R5, R0
406CD2:  CBZ             R4, loc_406D06
406CD4:  ADD.W           R1, R5, #0x100; CEntity **
406CD8:  MOV             R0, R4; this
406CDA:  LDR.W           R9, [R7,#arg_0]
406CDE:  STR.W           R4, [R5,#0x100]
406CE2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
406CE6:  LDR             R0, [R5,#0x44]
406CE8:  ADD.W           R1, R5, #0x104
406CEC:  STM.W           R1, {R6,R8,R9}
406CF0:  ANDS.W          R1, R0, #0x40 ; '@'
406CF4:  BNE             loc_406D0A
406CF6:  LDRD.W          R6, R3, [R7,#arg_4]
406CFA:  LDR             R2, [R7,#arg_C]
406CFC:  STRD.W          R6, R3, [R5,#0x110]
406D00:  STR.W           R2, [R5,#0x118]
406D04:  B               loc_406D24
406D06:  MOVS            R4, #0
406D08:  B               loc_406D84
406D0A:  LDR             R2, [R5,#0x14]
406D0C:  ADD.W           R3, R2, #0x30 ; '0'
406D10:  CMP             R2, #0
406D12:  IT EQ
406D14:  ADDEQ           R3, R5, #4
406D16:  VLDR            D16, [R3]
406D1A:  LDR             R2, [R3,#8]
406D1C:  STR.W           R2, [R5,#0x118]
406D20:  VSTR            D16, [R5,#0x110]
406D24:  LDR.W           R2, [R5,#0x100]
406D28:  VMOV.I32        Q8, #0
406D2C:  STR.W           R2, [R5,#0x12C]
406D30:  ADD.W           R2, R5, #0x11C
406D34:  VST1.32         {D16-D17}, [R2]
406D38:  LSLS            R2, R0, #0x1D
406D3A:  BMI             loc_406D78
406D3C:  LDRB.W          R2, [R4,#0x3A]
406D40:  AND.W           R2, R2, #7
406D44:  SUBS            R2, #2
406D46:  UXTB            R2, R2
406D48:  CMP             R2, #2
406D4A:  BHI             loc_406D7E
406D4C:  LDRB.W          R2, [R4,#0x44]
406D50:  LSLS            R2, R2, #0x1D
406D52:  BPL             loc_406D7E
406D54:  CBNZ            R1, loc_406D7E
406D56:  LDRB.W          R1, [R5,#0x3A]
406D5A:  AND.W           R1, R1, #7
406D5E:  CMP             R1, #4
406D60:  ITTTT EQ
406D62:  MOVWEQ          R1, #0x4FF3
406D66:  MOVTEQ          R1, #0x47C3
406D6A:  ORREQ.W         R0, R0, #4
406D6E:  STREQ           R0, [R5,#0x44]
406D70:  IT EQ
406D72:  STRDEQ.W        R1, R1, [R5,#0x90]
406D76:  B               loc_406D7E
406D78:  BIC.W           R0, R0, #8
406D7C:  STR             R0, [R5,#0x44]
406D7E:  MOV             R0, R5; this
406D80:  BLX             j__ZN9CPhysical22PositionAttachedEntityEv; CPhysical::PositionAttachedEntity(void)
406D84:  MOV             R0, R4
406D86:  POP.W           {R8,R9,R11}
406D8A:  POP             {R4-R7,PC}
