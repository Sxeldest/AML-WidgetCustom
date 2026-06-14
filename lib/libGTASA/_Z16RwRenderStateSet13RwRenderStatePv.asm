; =========================================================
; Game Engine Function: _Z16RwRenderStateSet13RwRenderStatePv
; Address            : 0x1E2914 - 0x1E2942
; =========================================================

1E2914:  LDR             R2, =(RwEngineInstance_ptr - 0x1E291A)
1E2916:  ADD             R2, PC; RwEngineInstance_ptr
1E2918:  LDR             R2, [R2]; RwEngineInstance
1E291A:  LDR             R2, [R2]
1E291C:  LDR             R3, [R2]
1E291E:  CBZ             R3, loc_1E2924
1E2920:  LDR             R2, [R2,#0x20]
1E2922:  BX              R2
1E2924:  PUSH            {R7,LR}
1E2926:  MOV             R7, SP
1E2928:  SUB             SP, SP, #8
1E292A:  MOVS            R0, #0
1E292C:  STR             R0, [SP,#0x10+var_10]
1E292E:  MOVS            R0, #0x10; int
1E2930:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E2934:  STR             R0, [SP,#0x10+var_C]
1E2936:  MOV             R0, SP
1E2938:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E293C:  MOVS            R0, #0
1E293E:  ADD             SP, SP, #8
1E2940:  POP             {R7,PC}
