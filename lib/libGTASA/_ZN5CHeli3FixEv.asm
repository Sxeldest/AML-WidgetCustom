; =========================================================
; Game Engine Function: _ZN5CHeli3FixEv
; Address            : 0x572DC0 - 0x572DDC
; =========================================================

572DC0:  PUSH            {R4,R6,R7,LR}
572DC2:  ADD             R7, SP, #8
572DC4:  MOV             R4, R0
572DC6:  ADDW            R0, R4, #0x5B4; this
572DCA:  BLX             j__ZN14CDamageManager17ResetDamageStatusEv; CDamageManager::ResetDamageStatus(void)
572DCE:  LDR.W           R0, [R4,#0x42C]
572DD2:  BIC.W           R0, R0, #0x10000
572DD6:  STR.W           R0, [R4,#0x42C]
572DDA:  POP             {R4,R6,R7,PC}
