; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity20StoppedUsingBankSlotEs
; Address            : 0x3AC468 - 0x3AC494
; =========================================================

3AC468:  MOVS            R1, #0xFFF90000
3AC46E:  ADD.W           R0, R1, R0,LSL#16
3AC472:  CMP.W           R0, #0x90000
3AC476:  IT HI
3AC478:  BXHI            LR
3AC47A:  LDR             R1, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC482)
3AC47C:  MOVS            R2, #0
3AC47E:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC480:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC482:  ADD.W           R0, R1, R0,LSR#14
3AC486:  LDRSH.W         R1, [R0,#2]
3AC48A:  CMP             R1, #0
3AC48C:  IT GT
3AC48E:  SUBGT           R2, R1, #1
3AC490:  STRH            R2, [R0,#2]
3AC492:  BX              LR
