; =========================================================
; Game Engine Function: sub_4279AE
; Address            : 0x4279AE - 0x4279BE
; =========================================================

4279AE:  LDR             R0, [R6]
4279B0:  TST.W           R0, #0x40004
4279B4:  BEQ             loc_427990
4279B6:  MOV             R0, R4; this
4279B8:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
4279BC:  B               loc_427990
