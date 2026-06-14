; =========================================================
; Game Engine Function: _ZN14CPlayerPedData14DeAllocateDataEv
; Address            : 0x40C884 - 0x40C8AE
; =========================================================

40C884:  PUSH            {R4,R5,R7,LR}
40C886:  ADD             R7, SP, #8
40C888:  MOV             R4, R0
40C88A:  LDR             R5, [R4]
40C88C:  CBZ             R5, loc_40C89C
40C88E:  ADD.W           R0, R5, #0x21C; this
40C892:  BLX             j__ZN27CAEPoliceScannerAudioEntityD2Ev; CAEPoliceScannerAudioEntity::~CAEPoliceScannerAudioEntity()
40C896:  MOV             R0, R5; void *
40C898:  BLX             _ZdlPv; operator delete(void *)
40C89C:  LDR             R0, [R4,#4]; void *
40C89E:  MOVS            R5, #0
40C8A0:  STR             R5, [R4]
40C8A2:  CMP             R0, #0
40C8A4:  IT NE
40C8A6:  BLXNE           _ZdlPv; operator delete(void *)
40C8AA:  STR             R5, [R4,#4]
40C8AC:  POP             {R4,R5,R7,PC}
