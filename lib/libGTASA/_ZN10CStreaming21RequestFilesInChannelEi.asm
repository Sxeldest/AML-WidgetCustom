; =========================================================
; Game Engine Function: _ZN10CStreaming21RequestFilesInChannelEi
; Address            : 0x2D493C - 0x2D4986
; =========================================================

2D493C:  PUSH            {R4-R7,LR}
2D493E:  ADD             R7, SP, #0xC
2D4940:  PUSH.W          {R8,R9,R11}
2D4944:  LDR             R1, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D494E)
2D4946:  MOVS            R2, #0x98
2D4948:  MOVS            R6, #0
2D494A:  ADD             R1, PC; _ZN10CStreaming10ms_channelE_ptr
2D494C:  LDR             R1, [R1]; int
2D494E:  MLA.W           R8, R0, R2, R1
2D4952:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D4958)
2D4954:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D4956:  LDR.W           R9, [R0]; CStreaming::ms_aInfoForModel ...
2D495A:  LDR.W           R4, [R8,R6,LSL#2]
2D495E:  ADDS            R0, R4, #1
2D4960:  BEQ             loc_2D497A
2D4962:  ADD.W           R0, R4, R4,LSL#2
2D4966:  ADD.W           R0, R9, R0,LSL#2
2D496A:  LDRB            R5, [R0,#6]
2D496C:  MOV             R0, R4; this
2D496E:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D4972:  MOV             R0, R4; this
2D4974:  MOV             R1, R5; int
2D4976:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D497A:  ADDS            R6, #1
2D497C:  CMP             R6, #0x10
2D497E:  BNE             loc_2D495A
2D4980:  POP.W           {R8,R9,R11}
2D4984:  POP             {R4-R7,PC}
