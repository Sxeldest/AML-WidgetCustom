; =========================================================
; Game Engine Function: sub_13CCC0
; Address            : 0x13CCC0 - 0x13CCE8
; =========================================================

13CCC0:  PUSH            {R4,R6,R7,LR}
13CCC2:  ADD             R7, SP, #8
13CCC4:  LDR             R1, =(_ZTVN13TabListWidget10ItemWidgetE - 0x13CCCE); `vtable for'TabListWidget::ItemWidget ...
13CCC6:  MOV             R4, R0
13CCC8:  LDR             R0, [R0,#0x5C]; void *
13CCCA:  ADD             R1, PC; `vtable for'TabListWidget::ItemWidget
13CCCC:  ADD.W           R1, R1, #8
13CCD0:  STR             R1, [R4]
13CCD2:  CBZ             R0, loc_13CCDA
13CCD4:  STR             R0, [R4,#0x60]
13CCD6:  BLX             j__ZdlPv; operator delete(void *)
13CCDA:  MOV             R0, R4
13CCDC:  BL              sub_12BCE4
13CCE0:  POP.W           {R4,R6,R7,LR}
13CCE4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
