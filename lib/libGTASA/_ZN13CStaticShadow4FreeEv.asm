; =========================================================
; Game Engine Function: _ZN13CStaticShadow4FreeEv
; Address            : 0x5B8FD4 - 0x5B8FF4
; =========================================================

5B8FD4:  LDR             R1, [R0,#4]
5B8FD6:  CBZ             R1, loc_5B8FEC
5B8FD8:  LDR             R2, =(_ZN8CShadows15pEmptyBunchListE_ptr - 0x5B8FDE)
5B8FDA:  ADD             R2, PC; _ZN8CShadows15pEmptyBunchListE_ptr
5B8FDC:  LDR             R3, [R2]; CShadows::pEmptyBunchList ...
5B8FDE:  LDR             R2, [R3]; CShadows::pEmptyBunchList
5B8FE0:  STR             R1, [R3]; CShadows::pEmptyBunchList
5B8FE2:  MOV             R3, R1
5B8FE4:  LDR             R1, [R3,#0x54]
5B8FE6:  CMP             R1, #0
5B8FE8:  BNE             loc_5B8FE2
5B8FEA:  STR             R2, [R3,#0x54]
5B8FEC:  MOVS            R1, #0
5B8FEE:  STRD.W          R1, R1, [R0]
5B8FF2:  BX              LR
