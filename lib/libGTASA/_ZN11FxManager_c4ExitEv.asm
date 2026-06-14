; =========================================================
; Game Engine Function: _ZN11FxManager_c4ExitEv
; Address            : 0x36D11A - 0x36D196
; =========================================================

36D11A:  PUSH            {R4,R5,R7,LR}
36D11C:  ADD             R7, SP, #8
36D11E:  MOV             R4, R0
36D120:  LDR             R1, [R4,#0xC]; FxSystem_c *
36D122:  CBZ             R1, loc_36D132
36D124:  MOV             R0, R4; this
36D126:  LDR             R5, [R1,#4]
36D128:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
36D12C:  CMP             R5, #0
36D12E:  MOV             R1, R5
36D130:  BNE             loc_36D124
36D132:  MOV             R0, R4; this
36D134:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
36D138:  MOVS            R0, #0
36D13A:  STR             R0, [R4,#0x18]
36D13C:  ADD.W           R0, R4, #0x1C; this
36D140:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
36D144:  LDR             R0, [R4,#0x28]; this
36D146:  BLX             j__ZN9CTxdStore13RemoveTxdSlotEi; CTxdStore::RemoveTxdSlot(int)
36D14A:  LDR.W           R0, [R4,#0x8C]
36D14E:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
36D152:  LDR.W           R0, [R4,#0x90]
36D156:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
36D15A:  LDR.W           R0, [R4,#0x94]
36D15E:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
36D162:  LDR.W           R0, [R4,#0x98]
36D166:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
36D16A:  LDR.W           R0, [R4,#0x9C]
36D16E:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
36D172:  LDR.W           R0, [R4,#0xA0]
36D176:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
36D17A:  LDR.W           R0, [R4,#0xA4]
36D17E:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
36D182:  LDR.W           R0, [R4,#0xA8]
36D186:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
36D18A:  ADD.W           R0, R4, #0xAC; this
36D18E:  POP.W           {R4,R5,R7,LR}
36D192:  B.W             sub_196218
