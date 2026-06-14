; =========================================================
; Game Engine Function: _ZN23CScriptedBrainTaskStore7GetTaskEPK4CPed
; Address            : 0x4F1988 - 0x4F19AE
; =========================================================

4F1988:  LDR             R1, =(_ZN23CScriptedBrainTaskStore10ms_entriesE_ptr - 0x4F1992)
4F198A:  MOV.W           R2, #0xFFFFFFFF
4F198E:  ADD             R1, PC; _ZN23CScriptedBrainTaskStore10ms_entriesE_ptr
4F1990:  LDR             R1, [R1]; CScriptedBrainTaskStore::ms_entries ...
4F1992:  ADDS            R1, #0xC
4F1994:  LDR.W           R3, [R1,#-0xC]; CScriptedBrainTaskStore::ms_entries
4F1998:  CMP             R3, R0
4F199A:  ITT EQ
4F199C:  LDREQ           R0, [R1]
4F199E:  BXEQ            LR
4F19A0:  ADDS            R2, #1
4F19A2:  ADDS            R1, #0x10
4F19A4:  CMP             R2, #0x2F ; '/'
4F19A6:  ITT GE
4F19A8:  MOVGE           R0, #0
4F19AA:  BXGE            LR
4F19AC:  B               loc_4F1994
