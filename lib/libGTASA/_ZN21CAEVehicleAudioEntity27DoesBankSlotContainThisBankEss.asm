; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity27DoesBankSlotContainThisBankEss
; Address            : 0x3AC498 - 0x3AC4C0
; =========================================================

3AC498:  MOVS            R2, #0xFFF90000
3AC49E:  ADD.W           R2, R2, R0,LSL#16
3AC4A2:  MOVS            R0, #0
3AC4A4:  CMP.W           R2, #0x90000
3AC4A8:  IT HI
3AC4AA:  BXHI            LR
3AC4AC:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC4B6)
3AC4AE:  LSRS            R2, R2, #0xE
3AC4B0:  UXTH            R1, R1
3AC4B2:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC4B4:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC4B6:  LDRH            R2, [R3,R2]
3AC4B8:  CMP             R2, R1
3AC4BA:  IT EQ
3AC4BC:  MOVEQ           R0, #1
3AC4BE:  BX              LR
