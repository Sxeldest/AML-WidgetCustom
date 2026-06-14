; =========================================================
; Game Engine Function: _Z23GetSavedGameDateAndTimei
; Address            : 0x4D3A50 - 0x4D3A5E
; =========================================================

4D3A50:  LDR             R1, =(_ZN19CGenericGameStorage15ms_SlotSaveDateE_ptr - 0x4D3A58)
4D3A52:  MOVS            R2, #0x8C
4D3A54:  ADD             R1, PC; _ZN19CGenericGameStorage15ms_SlotSaveDateE_ptr
4D3A56:  LDR             R1, [R1]; CGenericGameStorage::ms_SlotSaveDate ...
4D3A58:  MLA.W           R0, R0, R2, R1
4D3A5C:  BX              LR
