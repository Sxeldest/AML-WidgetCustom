; =========================================================
; Game Engine Function: _ZN9CPhysical18RemoveRefsToEntityEP7CEntity
; Address            : 0x406AA0 - 0x406B16
; =========================================================

406AA0:  PUSH            {R4-R7,LR}
406AA2:  ADD             R7, SP, #0xC
406AA4:  PUSH.W          {R8,R9,R11}
406AA8:  LDRB.W          R2, [R0,#0xBD]
406AAC:  CBZ             R2, loc_406B10
406AAE:  MOV.W           R8, #0
406AB2:  MOV.W           R12, #0xFFFFFFFF
406AB6:  MOV.W           LR, #0
406ABA:  ADD.W           R3, R0, R8,LSL#2
406ABE:  ADD.W           R9, R3, #0xC0
406AC2:  SXTH.W          R3, LR
406AC6:  LDR.W           R5, [R9]
406ACA:  CMP             R5, R1
406ACC:  BNE             loc_406B02
406ACE:  UXTAB.W         R5, R12, R2
406AD2:  CMP             R5, R3
406AD4:  BLE             loc_406AF4
406AD6:  MOV             R5, R3
406AD8:  MOV             R6, LR
406ADA:  ADD.W           R2, R0, R5,LSL#2
406ADE:  ADDS            R6, #1
406AE0:  LDR.W           R5, [R2,#0xC4]
406AE4:  STR.W           R5, [R2,#0xC0]
406AE8:  SXTH            R5, R6
406AEA:  LDRB.W          R2, [R0,#0xBD]
406AEE:  SUBS            R4, R2, #1
406AF0:  CMP             R4, R5
406AF2:  BGT             loc_406ADA
406AF4:  SUBS            R2, #1
406AF6:  STRB.W          R2, [R0,#0xBD]
406AFA:  UXTB            R4, R2
406AFC:  CMP             R8, R4
406AFE:  BLT             loc_406AC6
406B00:  B               loc_406B10
406B02:  ADD.W           LR, LR, #1
406B06:  UXTB            R3, R2
406B08:  SXTH.W          R8, LR
406B0C:  CMP             R8, R3
406B0E:  BLT             loc_406ABA
406B10:  POP.W           {R8,R9,R11}
406B14:  POP             {R4-R7,PC}
