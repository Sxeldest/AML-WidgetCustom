; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr13GetHandlingIdEPKc
; Address            : 0x570CB8 - 0x570CE8
; =========================================================

570CB8:  PUSH            {R4-R7,LR}
570CBA:  ADD             R7, SP, #0xC
570CBC:  PUSH.W          {R11}
570CC0:  LDR             R0, =(VehicleNames_ptr - 0x570CCC)
570CC2:  MOV             R4, R1
570CC4:  MOV.W           R6, #0xFFFFFFFF
570CC8:  ADD             R0, PC; VehicleNames_ptr
570CCA:  LDR             R5, [R0]; "LANDSTAL" ...
570CCC:  MOV             R0, R4; char *
570CCE:  MOV             R1, R5; char *
570CD0:  MOVS            R2, #0xE; size_t
570CD2:  BLX             strncmp
570CD6:  CBZ             R0, loc_570CE0
570CD8:  ADDS            R6, #1
570CDA:  ADDS            R5, #0xE
570CDC:  CMP             R6, #0xD1
570CDE:  BLT             loc_570CCC
570CE0:  ADDS            R0, R6, #1
570CE2:  POP.W           {R11}
570CE6:  POP             {R4-R7,PC}
