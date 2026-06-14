; =========================================================
; Game Engine Function: sub_13C048
; Address            : 0x13C048 - 0x13C06C
; =========================================================

13C048:  PUSH            {R4,R6,R7,LR}
13C04A:  ADD             R7, SP, #8
13C04C:  LDR             R1, =(_ZTVN10ListWidget10ItemWidgetE - 0x13C056); `vtable for'ListWidget::ItemWidget ...
13C04E:  MOV             R4, R0
13C050:  LDR             R0, [R0,#0x5C]; void *
13C052:  ADD             R1, PC; `vtable for'ListWidget::ItemWidget
13C054:  ADD.W           R1, R1, #8
13C058:  STR             R1, [R4]
13C05A:  CBZ             R0, loc_13C062
13C05C:  STR             R0, [R4,#0x60]
13C05E:  BLX             j__ZdlPv; operator delete(void *)
13C062:  MOV             R0, R4
13C064:  POP.W           {R4,R6,R7,LR}
13C068:  B.W             sub_12BCE4
