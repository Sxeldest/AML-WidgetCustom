; =========================================================
; Game Engine Function: _ZN6CPlane19SwitchAmbientPlanesEb
; Address            : 0x579D58 - 0x579DF2
; =========================================================

579D58:  PUSH            {R4-R7,LR}
579D5A:  ADD             R7, SP, #0xC
579D5C:  PUSH.W          {R8-R11}
579D60:  SUB             SP, SP, #4
579D62:  MOV             R8, R0
579D64:  LDR             R0, =(_ZN6CPlane15GenPlane_ActiveE_ptr - 0x579D6A)
579D66:  ADD             R0, PC; _ZN6CPlane15GenPlane_ActiveE_ptr
579D68:  LDR             R0, [R0]; CPlane::GenPlane_Active ...
579D6A:  LDRB            R0, [R0]; CPlane::GenPlane_Active
579D6C:  CBZ             R0, loc_579DE0
579D6E:  CMP.W           R8, #0
579D72:  BNE             loc_579DE0
579D74:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x579D7A)
579D76:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
579D78:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
579D7A:  LDR.W           R11, [R0]; CPools::ms_pVehiclePool
579D7E:  LDR.W           R0, [R11,#8]
579D82:  CBZ             R0, loc_579DE0
579D84:  MOVW            R1, #0xA2C
579D88:  MOVW            R10, #0xFA5C
579D8C:  MULS            R1, R0
579D8E:  SUBS            R5, R0, #1
579D90:  MOVT            R10, #0xFFFF
579D94:  SUB.W           R4, R1, #0x488
579D98:  LDR.W           R0, [R11,#4]
579D9C:  LDRSB           R0, [R0,R5]
579D9E:  CMP             R0, #0
579DA0:  BLT             loc_579DD6
579DA2:  LDR.W           R0, [R11]
579DA6:  ADDS            R6, R0, R4
579DA8:  SUBW            R1, R6, #0xA2C; CEntity *
579DAC:  CMN.W           R1, #0x488
579DB0:  BEQ             loc_579DD6
579DB2:  LDR             R0, [R0,R4]
579DB4:  SUBS            R0, #3
579DB6:  CMP             R0, #1
579DB8:  BHI             loc_579DD6
579DBA:  LDRB.W          R0, [R6,#-0xFC]
579DBE:  CMP             R0, #1
579DC0:  BNE             loc_579DD6
579DC2:  SUBW            R9, R6, #0x5A4
579DC6:  MOV             R0, R9; this
579DC8:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
579DCC:  LDR.W           R0, [R6,R10]
579DD0:  LDR             R1, [R0,#4]
579DD2:  MOV             R0, R9
579DD4:  BLX             R1
579DD6:  SUBS            R5, #1
579DD8:  SUBW            R4, R4, #0xA2C
579DDC:  ADDS            R0, R5, #1
579DDE:  BNE             loc_579D98
579DE0:  LDR             R0, =(_ZN6CPlane15GenPlane_ActiveE_ptr - 0x579DE6)
579DE2:  ADD             R0, PC; _ZN6CPlane15GenPlane_ActiveE_ptr
579DE4:  LDR             R0, [R0]; CPlane::GenPlane_Active ...
579DE6:  STRB.W          R8, [R0]; CPlane::GenPlane_Active
579DEA:  ADD             SP, SP, #4
579DEC:  POP.W           {R8-R11}
579DF0:  POP             {R4-R7,PC}
