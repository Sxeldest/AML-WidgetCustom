; =========================================================
; Game Engine Function: _ZN12CAnimManager12GetAnimationEPKcPK10CAnimBlock
; Address            : 0x38DF34 - 0x38DF6A
; =========================================================

38DF34:  PUSH            {R4,R6,R7,LR}
38DF36:  ADD             R7, SP, #8
38DF38:  MOV             R4, R1
38DF3A:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
38DF3E:  LDR             R2, [R4,#0x18]
38DF40:  MOV             R1, R0
38DF42:  CMP             R2, #1
38DF44:  BLT             loc_38DF66
38DF46:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38DF4E)
38DF48:  LDR             R3, [R4,#0x14]
38DF4A:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38DF4C:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
38DF4E:  ADD.W           R3, R3, R3,LSL#1
38DF52:  ADD.W           R0, R0, R3,LSL#3
38DF56:  MOVS            R3, #0
38DF58:  LDR             R4, [R0]
38DF5A:  CMP             R4, R1
38DF5C:  BEQ             locret_38DF68
38DF5E:  ADDS            R3, #1
38DF60:  ADDS            R0, #0x18
38DF62:  CMP             R3, R2
38DF64:  BLT             loc_38DF58
38DF66:  MOVS            R0, #0
38DF68:  POP             {R4,R6,R7,PC}
