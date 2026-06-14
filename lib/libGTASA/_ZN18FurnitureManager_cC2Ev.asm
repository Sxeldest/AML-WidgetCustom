; =========================================================
; Game Engine Function: _ZN18FurnitureManager_cC2Ev
; Address            : 0x444914 - 0x44497E
; =========================================================

444914:  PUSH            {R4,R5,R7,LR}
444916:  ADD             R7, SP, #8
444918:  MOV             R4, R0
44491A:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
44491E:  ADD.W           R0, R4, #0xC; this
444922:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
444926:  ADD.W           R0, R4, #0x18; this
44492A:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
44492E:  ADD.W           R0, R4, #0x24 ; '$'; this
444932:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
444936:  ADD.W           R0, R4, #0x30 ; '0'; this
44493A:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
44493E:  ADD.W           R0, R4, #0x3C ; '<'; this
444942:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
444946:  ADD.W           R0, R4, #0x48 ; 'H'; this
44494A:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
44494E:  ADD.W           R0, R4, #0x54 ; 'T'; this
444952:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
444956:  ADD.W           R0, R4, #0x60 ; '`'; this
44495A:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
44495E:  MOVS            R5, #0
444960:  ADDS            R0, R4, R5
444962:  ADDS            R0, #0x6C ; 'l'; this
444964:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
444968:  ADDS            R5, #0x10
44496A:  CMP.W           R5, #0x2000
44496E:  BNE             loc_444960
444970:  MOVW            R0, #0x206C
444974:  ADD             R0, R4; this
444976:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
44497A:  MOV             R0, R4
44497C:  POP             {R4,R5,R7,PC}
