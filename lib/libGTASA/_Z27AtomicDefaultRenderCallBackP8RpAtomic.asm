; =========================================================
; Game Engine Function: _Z27AtomicDefaultRenderCallBackP8RpAtomic
; Address            : 0x21395C - 0x21398A
; =========================================================

21395C:  PUSH            {R4,R6,R7,LR}
21395E:  ADD             R7, SP, #8
213960:  MOV             R4, R0
213962:  LDR             R0, [R4,#0x6C]
213964:  CBNZ            R0, loc_21397A
213966:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x21396E)
213968:  LDR             R1, =(RwEngineInstance_ptr - 0x213970)
21396A:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
21396C:  ADD             R1, PC; RwEngineInstance_ptr
21396E:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
213970:  LDR             R1, [R1]; RwEngineInstance
213972:  LDR             R0, [R0]
213974:  LDR             R1, [R1]
213976:  ADD             R0, R1
213978:  LDR             R0, [R0,#0x3C]
21397A:  MOV             R1, R4
21397C:  MOVS            R2, #1
21397E:  BLX             j__Z17RxPipelineExecuteP10RxPipelinePvi; RxPipelineExecute(RxPipeline *,void *,int)
213982:  CMP             R0, #0
213984:  IT NE
213986:  MOVNE           R0, R4
213988:  POP             {R4,R6,R7,PC}
