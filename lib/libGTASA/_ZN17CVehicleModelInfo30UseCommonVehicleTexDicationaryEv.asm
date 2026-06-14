; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo30UseCommonVehicleTexDicationaryEv
; Address            : 0x386E08 - 0x386E26
; =========================================================

386E08:  PUSH            {R4,R5,R7,LR}
386E0A:  ADD             R7, SP, #8
386E0C:  LDR             R0, =(_ZN17CVehicleModelInfo13FindTextureCBEPKc_ptr - 0x386E14)
386E0E:  LDR             R5, =(dword_931878 - 0x386E16)
386E10:  ADD             R0, PC; _ZN17CVehicleModelInfo13FindTextureCBEPKc_ptr
386E12:  ADD             R5, PC; dword_931878
386E14:  LDR             R4, [R0]; CVehicleModelInfo::FindTextureCB(char const*)
386E16:  BLX             j__Z24RwTextureGetFindCallBackv; RwTextureGetFindCallBack(void)
386E1A:  STR             R0, [R5]
386E1C:  MOV             R0, R4
386E1E:  POP.W           {R4,R5,R7,LR}
386E22:  B.W             sub_1A16E0
