; =========================================================
; Game Engine Function: _ZN13CWaterCannons6UpdateEv
; Address            : 0x5CBAD0 - 0x5CBB42
; =========================================================

5CBAD0:  PUSH            {R4,R6,R7,LR}
5CBAD2:  ADD             R7, SP, #8
5CBAD4:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBADA)
5CBAD6:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBAD8:  LDR             R4, [R0]; CWaterCannons::aCannons ...
5CBADA:  ADD.W           R0, R4, #0x32C; this
5CBADE:  BLX.W           j__ZN25CAEWaterCannonAudioEntity7ServiceEv; CAEWaterCannonAudioEntity::Service(void)
5CBAE2:  LDR             R0, [R4]; CWaterCannons::aCannons
5CBAE4:  CBZ             R0, loc_5CBAF2
5CBAE6:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBAEE)
5CBAE8:  MOVS            R1, #0; __int16
5CBAEA:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBAEC:  LDR             R0, [R0]; this
5CBAEE:  BLX.W           j__ZN12CWaterCannon19Update_OncePerFrameEs; CWaterCannon::Update_OncePerFrame(short)
5CBAF2:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBAF8)
5CBAF4:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBAF6:  LDR             R4, [R0]; CWaterCannons::aCannons ...
5CBAF8:  ADD.W           R0, R4, #0x6F8; this
5CBAFC:  BLX.W           j__ZN25CAEWaterCannonAudioEntity7ServiceEv; CAEWaterCannonAudioEntity::Service(void)
5CBB00:  LDR.W           R0, [R4,#(dword_A7C72C - 0xA7C360)]
5CBB04:  CBZ             R0, loc_5CBB16
5CBB06:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBB0E)
5CBB08:  MOVS            R1, #1; __int16
5CBB0A:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBB0C:  LDR             R0, [R0]; CWaterCannons::aCannons ...
5CBB0E:  ADD.W           R0, R0, #0x3CC; this
5CBB12:  BLX.W           j__ZN12CWaterCannon19Update_OncePerFrameEs; CWaterCannon::Update_OncePerFrame(short)
5CBB16:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBB1C)
5CBB18:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBB1A:  LDR             R4, [R0]; CWaterCannons::aCannons ...
5CBB1C:  ADDW            R0, R4, #0xAC4; this
5CBB20:  BLX.W           j__ZN25CAEWaterCannonAudioEntity7ServiceEv; CAEWaterCannonAudioEntity::Service(void)
5CBB24:  LDR.W           R0, [R4,#(dword_A7CAF8 - 0xA7C360)]
5CBB28:  CMP             R0, #0
5CBB2A:  IT EQ
5CBB2C:  POPEQ           {R4,R6,R7,PC}
5CBB2E:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBB36)
5CBB30:  MOVS            R1, #2; __int16
5CBB32:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBB34:  LDR             R0, [R0]; CWaterCannons::aCannons ...
5CBB36:  ADD.W           R0, R0, #0x798; this
5CBB3A:  POP.W           {R4,R6,R7,LR}
5CBB3E:  B.W             _ZN12CWaterCannon19Update_OncePerFrameEs; CWaterCannon::Update_OncePerFrame(short)
