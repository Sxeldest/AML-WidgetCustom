; =========================================================
; Game Engine Function: _ZN10CPlayerPed25Clear3rdPersonMouseTargetEv
; Address            : 0x4C5774 - 0x4C5798
; =========================================================

4C5774:  MOV             R1, R0
4C5776:  LDR.W           R0, [R1,#0x7A4]; this
4C577A:  CMP             R0, #0
4C577C:  IT EQ
4C577E:  BXEQ            LR
4C5780:  PUSH            {R4,R6,R7,LR}
4C5782:  ADD             R7, SP, #0x10+var_8
4C5784:  ADDW            R4, R1, #0x7A4
4C5788:  MOV             R1, R4; CEntity **
4C578A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C578E:  MOVS            R0, #0
4C5790:  STR             R0, [R4]
4C5792:  POP.W           {R4,R6,R7,LR}
4C5796:  BX              LR
