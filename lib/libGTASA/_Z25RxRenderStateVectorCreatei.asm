; =========================================================
; Game Engine Function: _Z25RxRenderStateVectorCreatei
; Address            : 0x1E18D0 - 0x1E197E
; =========================================================

1E18D0:  PUSH            {R4-R7,LR}
1E18D2:  ADD             R7, SP, #0xC
1E18D4:  PUSH.W          {R11}
1E18D8:  SUB             SP, SP, #8
1E18DA:  MOV             R6, R0
1E18DC:  LDR             R0, =(RwEngineInstance_ptr - 0x1E18E4)
1E18DE:  MOVS            R5, #0x13
1E18E0:  ADD             R0, PC; RwEngineInstance_ptr
1E18E2:  MOVT            R5, #0x8000
1E18E6:  LDR             R0, [R0]; RwEngineInstance
1E18E8:  LDR             R0, [R0]
1E18EA:  LDR.W           R1, [R0,#0x148]
1E18EE:  CMP             R1, #3
1E18F0:  BNE             loc_1E191A
1E18F2:  LDR.W           R1, [R0,#0x12C]
1E18F6:  MOVS            R0, #0x2C ; ','
1E18F8:  BLX             R1
1E18FA:  MOV             R4, R0
1E18FC:  CBZ             R4, loc_1E1926
1E18FE:  CBZ             R6, loc_1E1944
1E1900:  MOV             R0, R4
1E1902:  BLX             j__Z34RxRenderStateVectorLoadDriverStateP19RxRenderStateVector; RxRenderStateVectorLoadDriverState(RxRenderStateVector *)
1E1906:  CBNZ            R0, loc_1E193A
1E1908:  LDR             R0, =(RwEngineInstance_ptr - 0x1E190E)
1E190A:  ADD             R0, PC; RwEngineInstance_ptr
1E190C:  LDR             R0, [R0]; RwEngineInstance
1E190E:  LDR             R0, [R0]
1E1910:  LDR.W           R1, [R0,#0x130]
1E1914:  MOV             R0, R4
1E1916:  BLX             R1
1E1918:  B               loc_1E193A
1E191A:  ADDS            R0, R5, #5; int
1E191C:  MOVS            R4, #0
1E191E:  STR             R4, [SP,#0x18+var_18]
1E1920:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E1924:  B               loc_1E1932
1E1926:  MOVS            R4, #0
1E1928:  MOV             R0, R5; int
1E192A:  MOVS            R1, #0x2C ; ','
1E192C:  STR             R4, [SP,#0x18+var_18]
1E192E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E1932:  STR             R0, [SP,#0x18+var_14]
1E1934:  MOV             R0, SP
1E1936:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E193A:  MOV             R0, R4
1E193C:  ADD             SP, SP, #8
1E193E:  POP.W           {R11}
1E1942:  POP             {R4-R7,PC}
1E1944:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x1E194C)
1E1946:  LDR             R1, =(RwEngineInstance_ptr - 0x1E194E)
1E1948:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
1E194A:  ADD             R1, PC; RwEngineInstance_ptr
1E194C:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
1E194E:  LDR             R1, [R1]; RwEngineInstance
1E1950:  LDR             R0, [R0]
1E1952:  LDR             R1, [R1]
1E1954:  ADD             R0, R1
1E1956:  ADDS            R1, R0, #4
1E1958:  VLD1.32         {D16-D17}, [R1]
1E195C:  ADD.W           R1, R0, #0x14
1E1960:  ADDS            R0, #0x20 ; ' '
1E1962:  VLD1.32         {D20-D21}, [R0]
1E1966:  ADD.W           R0, R4, #0x1C
1E196A:  VLD1.32         {D18-D19}, [R1]
1E196E:  VST1.32         {D20-D21}, [R0]
1E1972:  MOV             R0, R4
1E1974:  VST1.32         {D16-D17}, [R0]!
1E1978:  VST1.32         {D18-D19}, [R0]
1E197C:  B               loc_1E193A
