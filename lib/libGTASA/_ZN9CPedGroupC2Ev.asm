; =========================================================
; Game Engine Function: _ZN9CPedGroupC2Ev
; Address            : 0x4B6CC4 - 0x4B6D02
; =========================================================

4B6CC4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CPedGroup::CPedGroup(void)'
4B6CC6:  ADD             R7, SP, #8
4B6CC8:  MOV             R4, R0
4B6CCA:  MOVS            R0, #0x42700000
4B6CD0:  VMOV.I32        Q8, #0
4B6CD4:  STR             R0, [R4,#0x2C]
4B6CD6:  ADD.W           R0, R4, #0x1C
4B6CDA:  VST1.32         {D16-D17}, [R0]
4B6CDE:  ADD.W           R0, R4, #0xC
4B6CE2:  VST1.32         {D16-D17}, [R0]
4B6CE6:  ADD.W           R0, R4, #0x30 ; '0'; this
4B6CEA:  BLX             j__ZN21CPedGroupIntelligenceC2Ev; CPedGroupIntelligence::CPedGroupIntelligence(void)
4B6CEE:  MOVS            R0, #0
4B6CF0:  STRB.W          R0, [R4,#0x2D0]
4B6CF4:  STR             R0, [R4]
4B6CF6:  MOVS            R0, #1
4B6CF8:  STRB            R0, [R4,#4]
4B6CFA:  MOV             R0, R4
4B6CFC:  STR             R4, [R4,#8]
4B6CFE:  STR             R4, [R4,#0x30]
4B6D00:  POP             {R4,R6,R7,PC}
