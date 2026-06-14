; =========================================================
; Game Engine Function: _ZN12CAnimManager12GetAnimationEjPK10CAnimBlock
; Address            : 0x38DF70 - 0x38DF9E
; =========================================================

38DF70:  LDR             R3, [R1,#0x18]
38DF72:  MOV             R12, R0
38DF74:  CMP             R3, #1
38DF76:  BLT             loc_38DF9A
38DF78:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38DF80)
38DF7A:  LDR             R1, [R1,#0x14]
38DF7C:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38DF7E:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38DF80:  ADD.W           R1, R1, R1,LSL#1
38DF84:  ADD.W           R0, R0, R1,LSL#3
38DF88:  MOVS            R1, #0
38DF8A:  LDR             R2, [R0]
38DF8C:  CMP             R2, R12
38DF8E:  IT EQ
38DF90:  BXEQ            LR
38DF92:  ADDS            R1, #1
38DF94:  ADDS            R0, #0x18
38DF96:  CMP             R1, R3
38DF98:  BLT             loc_38DF8A
38DF9A:  MOVS            R0, #0
38DF9C:  BX              LR
