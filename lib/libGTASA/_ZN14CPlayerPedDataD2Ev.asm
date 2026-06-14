; =========================================================
; Game Engine Function: _ZN14CPlayerPedDataD2Ev
; Address            : 0x40C804 - 0x40C830
; =========================================================

40C804:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CPlayerPedData::~CPlayerPedData()'
40C806:  ADD             R7, SP, #8
40C808:  MOV             R4, R0
40C80A:  LDR             R5, [R4]
40C80C:  CBZ             R5, loc_40C820
40C80E:  ADD.W           R0, R5, #0x21C; this
40C812:  BLX             j__ZN27CAEPoliceScannerAudioEntityD2Ev; CAEPoliceScannerAudioEntity::~CAEPoliceScannerAudioEntity()
40C816:  MOV             R0, R5; void *
40C818:  BLX             _ZdlPv; operator delete(void *)
40C81C:  MOVS            R0, #0
40C81E:  STR             R0, [R4]
40C820:  LDR             R0, [R4,#4]; void *
40C822:  CBZ             R0, loc_40C82C
40C824:  BLX             _ZdlPv; operator delete(void *)
40C828:  MOVS            R0, #0
40C82A:  STR             R0, [R4,#4]
40C82C:  MOV             R0, R4
40C82E:  POP             {R4,R5,R7,PC}
