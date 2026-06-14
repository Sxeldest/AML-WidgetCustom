; =========================================================
; Game Engine Function: _ZN6CTrain15RemoveAllTrainsEv
; Address            : 0x57FD68 - 0x57FE08
; =========================================================

57FD68:  PUSH            {R4-R7,LR}
57FD6A:  ADD             R7, SP, #0xC
57FD6C:  PUSH.W          {R8-R10}
57FD70:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x57FD76)
57FD72:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
57FD74:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
57FD76:  LDR.W           R9, [R0]; CPools::ms_pVehiclePool
57FD7A:  LDR.W           R6, [R9,#8]
57FD7E:  CMP             R6, #0
57FD80:  BEQ             loc_57FE02
57FD82:  MOVW            R8, #0xA2C
57FD86:  LDR.W           R0, [R9,#4]
57FD8A:  SUBS            R6, #1
57FD8C:  LDRSB           R0, [R0,R6]
57FD8E:  CMP             R0, #0
57FD90:  BLT             loc_57FDFE
57FD92:  LDR.W           R0, [R9]
57FD96:  MLA.W           R10, R6, R8, R0
57FD9A:  CMP.W           R10, #0
57FD9E:  BEQ             loc_57FDFE
57FDA0:  LDR.W           R0, [R10,#0x5A0]
57FDA4:  CMP             R0, #6
57FDA6:  BNE             loc_57FDFE
57FDA8:  MOVS            R5, #0
57FDAA:  MOV             R4, R10
57FDAC:  MOV.W           R0, #0xFFFFFFFF; int
57FDB0:  MOVS            R1, #0; bool
57FDB2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
57FDB6:  CMP             R4, R0
57FDB8:  MOV.W           R0, #0
57FDBC:  IT EQ
57FDBE:  MOVEQ           R0, #1
57FDC0:  LDR.W           R4, [R4,#0x5E4]
57FDC4:  ORRS            R5, R0
57FDC6:  CMP             R4, #0
57FDC8:  BNE             loc_57FDAC
57FDCA:  MOV             R4, R10
57FDCC:  MOV.W           R0, #0xFFFFFFFF; int
57FDD0:  MOVS            R1, #0; bool
57FDD2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
57FDD6:  CMP             R4, R0
57FDD8:  MOV.W           R0, #0
57FDDC:  IT EQ
57FDDE:  MOVEQ           R0, #1
57FDE0:  LDR.W           R4, [R4,#0x5E8]
57FDE4:  ORRS            R5, R0
57FDE6:  CMP             R4, #0
57FDE8:  BNE             loc_57FDCC
57FDEA:  LSLS            R0, R5, #0x1F
57FDEC:  BNE             loc_57FDFE
57FDEE:  MOV             R0, R10; this
57FDF0:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
57FDF4:  LDR.W           R0, [R10]
57FDF8:  LDR             R1, [R0,#4]
57FDFA:  MOV             R0, R10
57FDFC:  BLX             R1
57FDFE:  CMP             R6, #0
57FE00:  BNE             loc_57FD86
57FE02:  POP.W           {R8-R10}
57FE06:  POP             {R4-R7,PC}
