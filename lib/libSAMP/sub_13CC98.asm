; =========================================================
; Game Engine Function: sub_13CC98
; Address            : 0x13CC98 - 0x13CCBC
; =========================================================

13CC98:  PUSH            {R4,R6,R7,LR}
13CC9A:  ADD             R7, SP, #8
13CC9C:  LDR             R1, =(_ZTVN13TabListWidget10ItemWidgetE - 0x13CCA6); `vtable for'TabListWidget::ItemWidget ...
13CC9E:  MOV             R4, R0
13CCA0:  LDR             R0, [R0,#0x5C]; void *
13CCA2:  ADD             R1, PC; `vtable for'TabListWidget::ItemWidget
13CCA4:  ADD.W           R1, R1, #8
13CCA8:  STR             R1, [R4]
13CCAA:  CBZ             R0, loc_13CCB2
13CCAC:  STR             R0, [R4,#0x60]
13CCAE:  BLX             j__ZdlPv; operator delete(void *)
13CCB2:  MOV             R0, R4
13CCB4:  POP.W           {R4,R6,R7,LR}
13CCB8:  B.W             sub_12BCE4
