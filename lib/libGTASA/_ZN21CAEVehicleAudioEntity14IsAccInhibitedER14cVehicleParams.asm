; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity14IsAccInhibitedER14cVehicleParams
; Address            : 0x3B3918 - 0x3B3962
; =========================================================

3B3918:  PUSH            {R4,R6,R7,LR}
3B391A:  ADD             R7, SP, #8
3B391C:  LDR             R2, =(AEAudioHardware_ptr - 0x3B3928)
3B391E:  MOV             R4, R1
3B3920:  LDRH.W          R1, [R0,#0xDE]; unsigned __int16
3B3924:  ADD             R2, PC; AEAudioHardware_ptr
3B3926:  LDR             R0, [R2]; AEAudioHardware ; this
3B3928:  MOVS            R2, #0x28 ; '('; __int16
3B392A:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B392E:  CBZ             R0, loc_3B3950
3B3930:  LDRSH.W         R0, [R4,#0x22]
3B3934:  CMP             R0, #0
3B3936:  BGT             loc_3B3950
3B3938:  LDRB.W          R0, [R4,#0x39]
3B393C:  CBNZ            R0, loc_3B3950
3B393E:  VMOV.F32        S0, #5.0
3B3942:  VLDR            S2, [R4,#0x40]
3B3946:  VCMPE.F32       S2, S0
3B394A:  VMRS            APSR_nzcv, FPSCR
3B394E:  BLE             loc_3B3954
3B3950:  MOVS            R0, #1
3B3952:  POP             {R4,R6,R7,PC}
3B3954:  LDRB.W          R1, [R4,#0x46]
3B3958:  MOVS            R0, #0
3B395A:  CMP             R1, #0
3B395C:  IT EQ
3B395E:  MOVEQ           R0, #1
3B3960:  POP             {R4,R6,R7,PC}
