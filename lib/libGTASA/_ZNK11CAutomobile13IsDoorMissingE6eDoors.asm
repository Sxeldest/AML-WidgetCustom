; =========================================================
; Game Engine Function: _ZNK11CAutomobile13IsDoorMissingE6eDoors
; Address            : 0x550AC0 - 0x550AD8
; =========================================================

550AC0:  PUSH            {R7,LR}
550AC2:  MOV             R7, SP
550AC4:  ADDW            R0, R0, #0x5B4
550AC8:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
550ACC:  UXTB            R1, R0
550ACE:  MOVS            R0, #0
550AD0:  CMP             R1, #4
550AD2:  IT EQ
550AD4:  MOVEQ           R0, #1
550AD6:  POP             {R7,PC}
