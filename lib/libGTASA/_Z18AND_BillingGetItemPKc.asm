; =========================================================
; Game Engine Function: _Z18AND_BillingGetItemPKc
; Address            : 0x26CC10 - 0x26CC4E
; =========================================================

26CC10:  PUSH            {R4-R7,LR}
26CC12:  ADD             R7, SP, #0xC
26CC14:  PUSH.W          {R8}
26CC18:  MOV             R8, R0
26CC1A:  LDR             R0, =(numItems_ptr - 0x26CC20)
26CC1C:  ADD             R0, PC; numItems_ptr
26CC1E:  LDR             R0, [R0]; numItems
26CC20:  LDR             R6, [R0]
26CC22:  CMP             R6, #1
26CC24:  BLT             loc_26CC44
26CC26:  LDR             R0, =(items_ptr - 0x26CC2E)
26CC28:  MOVS            R5, #0
26CC2A:  ADD             R0, PC; items_ptr
26CC2C:  LDR             R0, [R0]; items
26CC2E:  LDR             R4, [R0]
26CC30:  LDR             R0, [R4]
26CC32:  MOV             R1, R8; char *
26CC34:  LDR             R0, [R0]; char *
26CC36:  BLX             strcmp
26CC3A:  CBZ             R0, loc_26CC46
26CC3C:  ADDS            R5, #1
26CC3E:  ADDS            R4, #0xC
26CC40:  CMP             R5, R6
26CC42:  BLT             loc_26CC30
26CC44:  MOVS            R4, #0
26CC46:  MOV             R0, R4
26CC48:  POP.W           {R8}
26CC4C:  POP             {R4-R7,PC}
