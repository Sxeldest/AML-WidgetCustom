; =========================================================
; Game Engine Function: _ZN6CWorld19TestForUnusedModelsER8CPtrListPi
; Address            : 0x42BD70 - 0x42BDA4
; =========================================================

42BD70:  LDR             R0, [R0]
42BD72:  CMP             R0, #0
42BD74:  IT EQ
42BD76:  BXEQ            LR
42BD78:  LDR             R2, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42BD7E)
42BD7A:  ADD             R2, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42BD7C:  LDR             R2, [R2]; CWorld::ms_nCurrentScanCode ...
42BD7E:  LDRH.W          R12, [R2]; CWorld::ms_nCurrentScanCode
42BD82:  LDR             R3, [R0]
42BD84:  LDRH            R2, [R3,#0x30]
42BD86:  CMP             R2, R12
42BD88:  BEQ             loc_42BD9C
42BD8A:  LDRSH.W         R2, [R3,#0x26]
42BD8E:  STRH.W          R12, [R3,#0x30]
42BD92:  LDR.W           R3, [R1,R2,LSL#2]
42BD96:  ADDS            R3, #1
42BD98:  STR.W           R3, [R1,R2,LSL#2]
42BD9C:  LDR             R0, [R0,#4]
42BD9E:  CMP             R0, #0
42BDA0:  BNE             loc_42BD82
42BDA2:  BX              LR
