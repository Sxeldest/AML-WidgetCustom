; =========================================================
; Game Engine Function: _Z22LoadSomeStaticSettingsv
; Address            : 0x488C64 - 0x488C90
; =========================================================

488C64:  PUSH            {R7,LR}
488C66:  MOV             R7, SP
488C68:  LDR             R0, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x488C70)
488C6A:  MOVS            R1, #byte_4; void *
488C6C:  ADD             R0, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
488C6E:  LDR             R0, [R0]; this
488C70:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488C74:  LDR             R0, =(_ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr - 0x488C7C)
488C76:  MOVS            R1, #(stderr+1); void *
488C78:  ADD             R0, PC; _ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr
488C7A:  LDR             R0, [R0]; this
488C7C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488C80:  LDR             R0, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x488C88)
488C82:  MOVS            R1, #byte_4; void *
488C84:  ADD             R0, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
488C86:  LDR             R0, [R0]; this
488C88:  POP.W           {R7,LR}
488C8C:  B.W             sub_193B88
