; =========================================================
; Game Engine Function: _ZN9CPedStats10InitialiseEv
; Address            : 0x470D90 - 0x470E26
; =========================================================

470D90:  PUSH            {R4-R7,LR}
470D92:  ADD             R7, SP, #0xC
470D94:  PUSH.W          {R8-R10}
470D98:  MOVW            R0, #0x8BC; unsigned int
470D9C:  BLX             _Znaj; operator new[](uint)
470DA0:  LDR             R1, =(_ZN9CPedStats13ms_apPedStatsE_ptr - 0x470DB0)
470DA2:  MOVW            R9, #0
470DA6:  LDR             R3, =(_ZN9CPedStats13ms_apPedStatsE_ptr - 0x470DB6)
470DA8:  MOVW            R10, #0
470DAC:  ADD             R1, PC; _ZN9CPedStats13ms_apPedStatsE_ptr
470DAE:  MOVW            R6, #0x4C50
470DB2:  ADD             R3, PC; _ZN9CPedStats13ms_apPedStatsE_ptr
470DB4:  MOVS            R2, #0x2B ; '+'
470DB6:  LDR             R1, [R1]; CPedStats::ms_apPedStats ...
470DB8:  MOVW            LR, #0x5245
470DBC:  LDR.W           R12, [R3]; CPedStats::ms_apPedStats ...
470DC0:  MOVS            R3, #0
470DC2:  MOV.W           R4, #0x3F800000
470DC6:  MOV.W           R8, #0x32323232
470DCA:  STR             R0, [R1]; CPedStats::ms_apPedStats
470DCC:  MOVS            R1, #0x32 ; '2'
470DCE:  MOVT            R9, #0x41A0
470DD2:  MOVT            R10, #0x4170
470DD6:  MOVT            R6, #0x5941
470DDA:  ADD             R0, R1
470DDC:  SUBS            R2, #1
470DDE:  STR.W           R3, [R0,#-0x32]
470DE2:  LDR.W           R0, [R12]; this
470DE6:  ADD.W           R5, R0, R1
470DEA:  STRB            R3, [R0,R1]
470DEC:  ADD.W           R1, R1, #0x34 ; '4'
470DF0:  STRB.W          R3, [R5,#-0x28]
470DF4:  STRH.W          LR, [R5,#-0x2A]
470DF8:  STR.W           R4, [R5,#-0xA]
470DFC:  STR.W           R8, [R5,#-0xE]
470E00:  STR.W           R9, [R5,#-0x16]
470E04:  STR.W           R10, [R5,#-0x12]
470E08:  STR.W           R6, [R5,#-0x2E]
470E0C:  STR.W           R4, [R5,#-6]
470E10:  STRH.W          R3, [R5,#-2]
470E14:  BNE             loc_470DDA
470E16:  BLX             j__ZN9CPedStats12LoadPedStatsEv; CPedStats::LoadPedStats(void)
470E1A:  POP.W           {R8-R10}
470E1E:  POP.W           {R4-R7,LR}
470E22:  B.W             _ZN29CDecisionMakerTypesFileLoader24LoadDefaultDecisionMakerEv; CDecisionMakerTypesFileLoader::LoadDefaultDecisionMaker(void)
