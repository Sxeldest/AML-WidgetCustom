; =========================================================
; Game Engine Function: _ZN20CTaskSimpleIKManager17RemoveIKChainTaskEi
; Address            : 0x4EFD42 - 0x4EFD5E
; =========================================================

4EFD42:  PUSH            {R4,R6,R7,LR}
4EFD44:  ADD             R7, SP, #8
4EFD46:  ADD.W           R4, R0, R1,LSL#2
4EFD4A:  LDR.W           R0, [R4,#8]!
4EFD4E:  CMP             R0, #0
4EFD50:  ITTT NE
4EFD52:  LDRNE           R1, [R0]
4EFD54:  LDRNE           R1, [R1,#4]
4EFD56:  BLXNE           R1
4EFD58:  MOVS            R0, #0
4EFD5A:  STR             R0, [R4]
4EFD5C:  POP             {R4,R6,R7,PC}
