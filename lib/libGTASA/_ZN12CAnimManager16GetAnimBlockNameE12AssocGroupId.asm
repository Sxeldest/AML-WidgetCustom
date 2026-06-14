; =========================================================
; Game Engine Function: _ZN12CAnimManager16GetAnimBlockNameE12AssocGroupId
; Address            : 0x38DFB8 - 0x38DFCA
; =========================================================

38DFB8:  LDR             R1, =(_ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr - 0x38DFC2)
38DFBA:  ADD.W           R0, R0, R0,LSL#1
38DFBE:  ADD             R1, PC; _ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr
38DFC0:  LDR             R1, [R1]; "default" ...
38DFC2:  ADD.W           R0, R1, R0,LSL#4
38DFC6:  ADDS            R0, #0x10
38DFC8:  BX              LR
