; =========================================================
; Game Engine Function: _ZNK17CVehicleModelInfo18CLinkedUpgradeList16FindOtherUpgradeEs
; Address            : 0x386DAE - 0x386DE6
; =========================================================

386DAE:  PUSH            {R7,LR}
386DB0:  MOV             R7, SP
386DB2:  LDR             R2, [R0,#0x78]
386DB4:  ADD.W           R0, R0, R2,LSL#1
386DB8:  NEGS            R2, R2
386DBA:  ADDS            R0, #0x3A ; ':'
386DBC:  CBZ             R2, loc_386DDC
386DBE:  LDRH.W          R12, [R0]
386DC2:  UXTH            R3, R1
386DC4:  LDRH.W          LR, [R0,#-0x3C]
386DC8:  CMP             LR, R3
386DCA:  BEQ             loc_386DD6
386DCC:  SUBS            R0, #2
386DCE:  ADDS            R2, #1
386DD0:  CMP             R12, R3
386DD2:  BNE             loc_386DBC
386DD4:  MOV             R12, LR
386DD6:  SXTH.W          R0, R12
386DDA:  POP             {R7,PC}
386DDC:  MOVW            R12, #0xFFFF
386DE0:  SXTH.W          R0, R12
386DE4:  POP             {R7,PC}
