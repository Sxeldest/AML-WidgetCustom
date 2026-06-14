; =========================================================
; Game Engine Function: sub_427936
; Address            : 0x427936 - 0x4279AA
; =========================================================

427936:  LDRB.W          R0, [R4,#0x3A]
42793A:  AND.W           R0, R0, #7
42793E:  CMP             R0, #2
427940:  BNE             loc_427954
427942:  LDR.W           R0, [R4,#0x464]
427946:  CBZ             R0, loc_427954
427948:  LDR.W           R0, [R0,#0x59C]
42794C:  CMP             R0, #1
42794E:  IT LS
427950:  STRLS.W         R9, [R10]
427954:  LDR             R0, [R6]
427956:  TST.W           R0, #0x40004
42795A:  ITT NE
42795C:  MOVNE           R0, R4; this
42795E:  BLXNE           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
427962:  CMP             R5, #0
427964:  BNE             loc_427902
427966:  B               loc_427972
427968:  MOV             R0, R4; this
42796A:  BLX             j__ZN6CWorld33RemoveEntityInsteadOfProcessingItEP7CEntity; CWorld::RemoveEntityInsteadOfProcessingIt(CEntity *)
42796E:  CMP             R5, #0
427970:  BNE             loc_427902
427972:  LDR.W           R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x42797E)
427976:  LDR.W           R1, =(_ZN6CWorld20bForceProcessControlE_ptr - 0x427980)
42797A:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
42797C:  ADD             R1, PC; _ZN6CWorld20bForceProcessControlE_ptr
42797E:  LDR             R0, [R0]; CWorld::ms_listMovingEntityPtrs ...
427980:  LDR             R1, [R1]; CWorld::bForceProcessControl ...
427982:  LDR             R5, [R0]; CWorld::ms_listMovingEntityPtrs
427984:  MOVS            R0, #1
427986:  STRB            R0, [R1]; CWorld::bForceProcessControl
427988:  B               loc_427990
42798A:  MOV             R0, R4; this
42798C:  BLX             j__ZN6CWorld33RemoveEntityInsteadOfProcessingItEP7CEntity; CWorld::RemoveEntityInsteadOfProcessingIt(CEntity *)
427990:  CBZ             R5, loc_4279CA
427992:  LDRD.W          R4, R5, [R5]
427996:  MOV             R6, R4
427998:  LDR.W           R0, [R6,#0x1C]!
42799C:  TST.W           R0, #0x40
4279A0:  BEQ             loc_427990
4279A2:  LSLS            R0, R0, #0x14
4279A4:  BMI             loc_42798A
4279A6:  B.W             sub_3F65BC
