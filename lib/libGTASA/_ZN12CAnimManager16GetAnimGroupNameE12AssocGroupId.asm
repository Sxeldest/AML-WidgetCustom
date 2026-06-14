; =========================================================
; Game Engine Function: _ZN12CAnimManager16GetAnimGroupNameE12AssocGroupId
; Address            : 0x38DFA4 - 0x38DFB4
; =========================================================

38DFA4:  LDR             R1, =(_ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr - 0x38DFAE)
38DFA6:  ADD.W           R0, R0, R0,LSL#1
38DFAA:  ADD             R1, PC; _ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr
38DFAC:  LDR             R1, [R1]; "default" ...
38DFAE:  ADD.W           R0, R1, R0,LSL#4
38DFB2:  BX              LR
