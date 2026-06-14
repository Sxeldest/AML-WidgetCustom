; =========================================================
; Game Engine Function: _ZN14CPlayerPedData15SetInitialStateEv
; Address            : 0x40C76A - 0x40C804
; =========================================================

40C76A:  PUSH            {R4,R5,R7,LR}
40C76C:  ADD             R7, SP, #8
40C76E:  VMOV.I32        Q8, #0
40C772:  MOV             R4, R0
40C774:  MOVS            R5, #0
40C776:  MOVS            R0, #0x63 ; 'c'
40C778:  ADD.W           R1, R4, #8
40C77C:  STRH            R5, [R4,#0x20]
40C77E:  STRD.W          R5, R5, [R4,#0x24]
40C782:  STRD.W          R5, R5, [R4,#0x2C]
40C786:  STRB.W          R5, [R4,#0x42]
40C78A:  STRH.W          R5, [R4,#0x40]
40C78E:  STR             R5, [R4,#0x3C]
40C790:  STRB.W          R0, [R4,#0x43]
40C794:  STRD.W          R5, R5, [R4,#0x50]
40C798:  STR             R5, [R4,#0x58]
40C79A:  STRH.W          R5, [R4,#0x84]
40C79E:  STRB.W          R5, [R4,#0x86]
40C7A2:  STR.W           R5, [R4,#0x88]
40C7A6:  LDRH            R0, [R4,#0x34]
40C7A8:  VST1.32         {D16-D17}, [R1]
40C7AC:  ADD.W           R1, R4, #0x74 ; 't'
40C7B0:  VST1.32         {D16-D17}, [R1]
40C7B4:  ADD.W           R1, R4, #0x64 ; 'd'
40C7B8:  VST1.32         {D16-D17}, [R1]
40C7BC:  MOVW            R1, #0xE7A0
40C7C0:  ANDS            R0, R1
40C7C2:  MOVW            R1, #0x1010
40C7C6:  ORRS            R0, R1
40C7C8:  STRH            R0, [R4,#0x34]
40C7CA:  MOVS            R0, #1
40C7CC:  STRB.W          R0, [R4,#0x8D]
40C7D0:  MOVS            R0, #7
40C7D2:  STRB.W          R5, [R4,#0x8C]
40C7D6:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
40C7DA:  STRD.W          R0, R5, [R4,#0x18]
40C7DE:  MOVS            R0, #8
40C7E0:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
40C7E4:  STR             R0, [R4,#0x44]
40C7E6:  MOV.W           R0, #0x80000000
40C7EA:  LDRH            R1, [R4,#0x34]
40C7EC:  MOV.W           R2, #0xFFFFFFFF
40C7F0:  STRD.W          R5, R5, [R4,#0x94]
40C7F4:  STRD.W          R2, R0, [R4,#0x9C]
40C7F8:  BIC.W           R0, R1, #0x80
40C7FC:  STRD.W          R5, R5, [R4,#0xA4]
40C800:  STRH            R0, [R4,#0x34]
40C802:  POP             {R4,R5,R7,PC}
