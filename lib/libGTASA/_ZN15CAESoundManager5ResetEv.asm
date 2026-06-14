; =========================================================
; Game Engine Function: _ZN15CAESoundManager5ResetEv
; Address            : 0x3A8092 - 0x3A80D0
; =========================================================

3A8092:  PUSH            {R4-R7,LR}
3A8094:  ADD             R7, SP, #0xC
3A8096:  PUSH.W          {R8}
3A809A:  ADD.W           R4, R0, #0x5C ; '\'
3A809E:  MOV.W           R5, #0x12C
3A80A2:  MOVS            R6, #1
3A80A4:  MOV.W           R8, #0
3A80A8:  LDRH            R0, [R4]
3A80AA:  CBZ             R0, loc_3A80C2
3A80AC:  MOV             R1, R4
3A80AE:  LDR.W           R0, [R1,#-0x50]!; CEntity **
3A80B2:  CMP             R0, #0
3A80B4:  STRH.W          R6, [R1,#0x60]
3A80B8:  BEQ             loc_3A80C2
3A80BA:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3A80BE:  STR.W           R8, [R4,#-0x50]
3A80C2:  SUBS            R5, #1
3A80C4:  ADD.W           R4, R4, #0x74 ; 't'
3A80C8:  BNE             loc_3A80A8
3A80CA:  POP.W           {R8}
3A80CE:  POP             {R4-R7,PC}
