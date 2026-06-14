; =========================================================
; Game Engine Function: _ZN6CTrain19RemoveMissionTrainsEv
; Address            : 0x57FCAC - 0x57FD3A
; =========================================================

57FCAC:  PUSH            {R4-R7,LR}
57FCAE:  ADD             R7, SP, #0xC
57FCB0:  PUSH.W          {R8-R11}
57FCB4:  SUB             SP, SP, #4
57FCB6:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x57FCBC)
57FCB8:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
57FCBA:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
57FCBC:  LDR.W           R11, [R0]; CPools::ms_pVehiclePool
57FCC0:  LDR.W           R0, [R11,#8]
57FCC4:  CBZ             R0, loc_57FD32
57FCC6:  MOVW            R1, #0xA2C
57FCCA:  MOVW            R9, #0xFA60
57FCCE:  MULS            R1, R0
57FCD0:  SUBS            R4, R0, #1
57FCD2:  MOVT            R9, #0xFFFF
57FCD6:  MOV.W           R10, #0x10E0
57FCDA:  SUBW            R6, R1, #0x48C
57FCDE:  LDR.W           R0, [R11,#4]
57FCE2:  LDRSB           R0, [R0,R4]
57FCE4:  CMP             R0, #0
57FCE6:  BLT             loc_57FD28
57FCE8:  LDR.W           R0, [R11]
57FCEC:  ADDS            R5, R0, R6
57FCEE:  CMP.W           R5, #0x5A0
57FCF2:  BEQ             loc_57FD28
57FCF4:  LDR             R0, [R0,R6]
57FCF6:  CMP             R0, #6
57FCF8:  BNE             loc_57FD28
57FCFA:  MOV.W           R0, #0xFFFFFFFF; int
57FCFE:  MOVS            R1, #0; bool
57FD00:  SUB.W           R8, R5, #0x5A0
57FD04:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
57FD08:  CMP             R8, R0
57FD0A:  BEQ             loc_57FD28
57FD0C:  LDRB.W          R0, [R5,#0x2C]
57FD10:  LSLS            R0, R0, #0x1A
57FD12:  BPL             loc_57FD28
57FD14:  MOV             R0, R8; this
57FD16:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
57FD1A:  ADD.W           R0, R5, R9,LSL#2
57FD1E:  LDR.W           R0, [R0,R10]
57FD22:  LDR             R1, [R0,#4]
57FD24:  MOV             R0, R8
57FD26:  BLX             R1
57FD28:  SUBS            R4, #1
57FD2A:  SUBW            R6, R6, #0xA2C
57FD2E:  ADDS            R0, R4, #1
57FD30:  BNE             loc_57FCDE
57FD32:  ADD             SP, SP, #4
57FD34:  POP.W           {R8-R11}
57FD38:  POP             {R4-R7,PC}
