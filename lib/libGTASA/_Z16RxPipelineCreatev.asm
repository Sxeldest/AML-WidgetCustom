; =========================================================
; Game Engine Function: _Z16RxPipelineCreatev
; Address            : 0x1DE944 - 0x1DE9A0
; =========================================================

1DE944:  PUSH            {R4,R6,R7,LR}
1DE946:  ADD             R7, SP, #8
1DE948:  SUB             SP, SP, #8
1DE94A:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x1DE952)
1DE94C:  LDR             R1, =(RwEngineInstance_ptr - 0x1DE954)
1DE94E:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
1DE950:  ADD             R1, PC; RwEngineInstance_ptr
1DE952:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
1DE954:  LDR             R1, [R1]; RwEngineInstance
1DE956:  LDR             R0, [R0]
1DE958:  LDR             R1, [R1]
1DE95A:  LDR             R0, [R1,R0]
1DE95C:  LDR.W           R1, [R1,#0x13C]
1DE960:  BLX             R1
1DE962:  MOV             R4, R0
1DE964:  CBZ             R4, loc_1DE982
1DE966:  MOVS            R0, #0
1DE968:  VMOV.I32        Q8, #0
1DE96C:  STR             R0, [R4,#0x30]
1DE96E:  ADD.W           R0, R4, #0x20 ; ' '
1DE972:  VST1.32         {D16-D17}, [R0]
1DE976:  MOV             R0, R4
1DE978:  VST1.32         {D16-D17}, [R0]!
1DE97C:  VST1.32         {D16-D17}, [R0]
1DE980:  B               loc_1DE99A
1DE982:  MOVS            R0, #0x13
1DE984:  MOVS            R4, #0
1DE986:  MOVT            R0, #0x8000; int
1DE98A:  MOVS            R1, #0x34 ; '4'
1DE98C:  STR             R4, [SP,#0x10+var_10]
1DE98E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DE992:  STR             R0, [SP,#0x10+var_C]
1DE994:  MOV             R0, SP
1DE996:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DE99A:  MOV             R0, R4
1DE99C:  ADD             SP, SP, #8
1DE99E:  POP             {R4,R6,R7,PC}
