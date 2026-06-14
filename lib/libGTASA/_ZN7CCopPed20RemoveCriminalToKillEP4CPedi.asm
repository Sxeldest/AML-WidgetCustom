; =========================================================
; Game Engine Function: _ZN7CCopPed20RemoveCriminalToKillEP4CPedi
; Address            : 0x49ED04 - 0x49ED2A
; =========================================================

49ED04:  ADD.W           R1, R0, R2,LSL#2
49ED08:  LDR.W           R0, [R1,#0x7B4]; this
49ED0C:  CMP             R0, #0
49ED0E:  IT EQ
49ED10:  BXEQ            LR
49ED12:  PUSH            {R4,R6,R7,LR}
49ED14:  ADD             R7, SP, #0x10+var_8
49ED16:  ADDW            R4, R1, #0x7B4
49ED1A:  MOV             R1, R4; CEntity **
49ED1C:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49ED20:  MOVS            R0, #0
49ED22:  STR             R0, [R4]
49ED24:  POP.W           {R4,R6,R7,LR}
49ED28:  BX              LR
