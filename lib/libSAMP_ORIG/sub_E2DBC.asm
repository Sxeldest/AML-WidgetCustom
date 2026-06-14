; =========================================================
; Game Engine Function: sub_E2DBC
; Address            : 0xE2DBC - 0xE2DCE
; =========================================================

E2DBC:  PUSH            {R7,LR}
E2DBE:  MOV             R7, SP
E2DC0:  MOV             R2, R0
E2DC2:  LDR             R0, [R0]
E2DC4:  STR             R1, [R2]
E2DC6:  CBZ             R0, locret_E2DCC
E2DC8:  LDR             R1, [R2,#4]
E2DCA:  BLX             R1
E2DCC:  POP             {R7,PC}
