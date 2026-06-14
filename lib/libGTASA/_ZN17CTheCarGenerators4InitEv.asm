; =========================================================
; Game Engine Function: _ZN17CTheCarGenerators4InitEv
; Address            : 0x56E59C - 0x56E64A
; =========================================================

56E59C:  PUSH            {R4,R6,R7,LR}
56E59E:  ADD             R7, SP, #8
56E5A0:  LDR.W           LR, =(_ZN17CTheCarGenerators34GenerateEvenIfPlayerIsCloseCounterE_ptr - 0x56E5AC)
56E5A4:  LDR             R1, =(_ZN17CTheCarGenerators21m_SpecialPlateHandlerE_ptr - 0x56E5AE)
56E5A6:  LDR             R0, =(_ZN17CTheCarGenerators14ProcessCounterE_ptr - 0x56E5B4)
56E5A8:  ADD             LR, PC; _ZN17CTheCarGenerators34GenerateEvenIfPlayerIsCloseCounterE_ptr
56E5AA:  ADD             R1, PC; _ZN17CTheCarGenerators21m_SpecialPlateHandlerE_ptr
56E5AC:  LDR.W           R12, =(_ZN17CTheCarGenerators18NumOfCarGeneratorsE_ptr - 0x56E5BC)
56E5B0:  ADD             R0, PC; _ZN17CTheCarGenerators14ProcessCounterE_ptr
56E5B2:  LDR.W           R2, [LR]; CTheCarGenerators::GenerateEvenIfPlayerIsCloseCounter ...
56E5B6:  LDR             R1, [R1]; CTheCarGenerators::m_SpecialPlateHandler ...
56E5B8:  ADD             R12, PC; _ZN17CTheCarGenerators18NumOfCarGeneratorsE_ptr
56E5BA:  LDR             R4, [R0]; CTheCarGenerators::ProcessCounter ...
56E5BC:  MOVS            R0, #0
56E5BE:  STRB            R0, [R2]; CTheCarGenerators::GenerateEvenIfPlayerIsCloseCounter
56E5C0:  MOV.W           R2, #0xFFFFFFFF
56E5C4:  STR.W           R0, [R1,#(dword_A065B8 - 0xA064C8)]
56E5C8:  STR             R2, [R1]; CTheCarGenerators::m_SpecialPlateHandler
56E5CA:  STRB            R0, [R1,#(byte_A064CC - 0xA064C8)]
56E5CC:  STR             R2, [R1,#(dword_A064D8 - 0xA064C8)]
56E5CE:  STRB            R0, [R1,#(byte_A064DC - 0xA064C8)]
56E5D0:  STRB.W          R0, [R1,#(byte_A064EC - 0xA064C8)]
56E5D4:  STR             R2, [R1,#(dword_A064E8 - 0xA064C8)]
56E5D6:  STR             R2, [R1,#(dword_A064F8 - 0xA064C8)]
56E5D8:  STRB.W          R0, [R1,#(byte_A064FC - 0xA064C8)]
56E5DC:  STR             R2, [R1,#(dword_A06508 - 0xA064C8)]
56E5DE:  STRB.W          R0, [R1,#(byte_A0650C - 0xA064C8)]
56E5E2:  STR             R2, [R1,#(dword_A06518 - 0xA064C8)]
56E5E4:  STRB.W          R0, [R1,#(byte_A0651C - 0xA064C8)]
56E5E8:  STRB.W          R0, [R1,#(byte_A0652C - 0xA064C8)]
56E5EC:  STR             R2, [R1,#(dword_A06528 - 0xA064C8)]
56E5EE:  STRB.W          R0, [R1,#(byte_A0653C - 0xA064C8)]
56E5F2:  STR             R2, [R1,#(dword_A06538 - 0xA064C8)]
56E5F4:  STRB.W          R0, [R1,#(byte_A0654C - 0xA064C8)]
56E5F8:  STR.W           R2, [R1,#(dword_A06548 - 0xA064C8)]
56E5FC:  STRB.W          R0, [R1,#(byte_A0655C - 0xA064C8)]
56E600:  STR.W           R2, [R1,#(dword_A06558 - 0xA064C8)]
56E604:  STRB.W          R0, [R1,#(byte_A0656C - 0xA064C8)]
56E608:  STR.W           R2, [R1,#(dword_A06568 - 0xA064C8)]
56E60C:  STRB.W          R0, [R1,#(byte_A0657C - 0xA064C8)]
56E610:  STR.W           R2, [R1,#(dword_A06578 - 0xA064C8)]
56E614:  STRB.W          R0, [R1,#(byte_A0658C - 0xA064C8)]
56E618:  STR.W           R2, [R1,#(dword_A06588 - 0xA064C8)]
56E61C:  STRB.W          R0, [R1,#(byte_A0659C - 0xA064C8)]
56E620:  STR.W           R2, [R1,#(dword_A06598 - 0xA064C8)]
56E624:  STRB.W          R0, [R1,#(byte_A065AC - 0xA064C8)]
56E628:  STR.W           R2, [R1,#(dword_A065A8 - 0xA064C8)]
56E62C:  MOVS            R2, #0
56E62E:  LDR             R1, =(_ZN17CTheCarGenerators17CarGeneratorArrayE_ptr - 0x56E638)
56E630:  LDR.W           R3, [R12]; CTheCarGenerators::NumOfCarGenerators ...
56E634:  ADD             R1, PC; _ZN17CTheCarGenerators17CarGeneratorArrayE_ptr
56E636:  STRB            R0, [R4]; CTheCarGenerators::ProcessCounter
56E638:  LDR             R1, [R1]; CTheCarGenerators::CarGeneratorArray ...
56E63A:  STR             R0, [R3]; CTheCarGenerators::NumOfCarGenerators
56E63C:  ADDS            R3, R1, R2
56E63E:  ADDS            R2, #0x20 ; ' '
56E640:  CMP.W           R2, #0x3E80
56E644:  STRB            R0, [R3,#0x1D]
56E646:  BNE             loc_56E63C
56E648:  POP             {R4,R6,R7,PC}
