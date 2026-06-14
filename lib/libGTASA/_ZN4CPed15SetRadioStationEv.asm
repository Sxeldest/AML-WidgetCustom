; =========================================================
; Game Engine Function: _ZN4CPed15SetRadioStationEv
; Address            : 0x4A77F0 - 0x4A7846
; =========================================================

4A77F0:  PUSH            {R4-R7,LR}
4A77F2:  ADD             R7, SP, #0xC
4A77F4:  PUSH.W          {R11}
4A77F8:  MOV             R4, R0
4A77FA:  LDR.W           R0, [R4,#0x59C]
4A77FE:  CMP             R0, #2
4A7800:  BCC             loc_4A7810
4A7802:  LDR.W           R0, [R4,#0x590]
4A7806:  CBZ             R0, loc_4A7810
4A7808:  LDR.W           R0, [R0,#0x464]
4A780C:  CMP             R0, R4
4A780E:  BEQ             loc_4A7816
4A7810:  POP.W           {R11}
4A7814:  POP             {R4-R7,PC}
4A7816:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4A7820)
4A7818:  LDRSH.W         R1, [R4,#0x26]
4A781C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4A781E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4A7820:  LDR.W           R5, [R0,R1,LSL#2]
4A7824:  ADD.W           R6, R5, #0x50 ; 'P'
4A7828:  BLX             rand
4A782C:  LDR.W           R1, [R4,#0x590]
4A7830:  TST.W           R0, #1
4A7834:  IT EQ
4A7836:  ADDEQ.W         R6, R5, #0x51 ; 'Q'
4A783A:  LDRB            R0, [R6]
4A783C:  STRB.W          R0, [R1,#0x1D6]
4A7840:  POP.W           {R11}
4A7844:  POP             {R4-R7,PC}
