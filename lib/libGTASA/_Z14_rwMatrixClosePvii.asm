; =========================================================
; Game Engine Function: _Z14_rwMatrixClosePvii
; Address            : 0x1E3140 - 0x1E317C
; =========================================================

1E3140:  PUSH            {R4,R6,R7,LR}
1E3142:  ADD             R7, SP, #8
1E3144:  MOV             R4, R0
1E3146:  LDR             R0, =(RwEngineInstance_ptr - 0x1E314E)
1E3148:  LDR             R1, =(dword_6BD044 - 0x1E3150)
1E314A:  ADD             R0, PC; RwEngineInstance_ptr
1E314C:  ADD             R1, PC; dword_6BD044
1E314E:  LDR             R0, [R0]; RwEngineInstance
1E3150:  LDR             R1, [R1]
1E3152:  LDR             R0, [R0]
1E3154:  LDR             R0, [R0,R1]
1E3156:  CBZ             R0, loc_1E316E
1E3158:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1E315C:  LDR             R0, =(RwEngineInstance_ptr - 0x1E3166)
1E315E:  MOVS            R2, #0
1E3160:  LDR             R1, =(dword_6BD044 - 0x1E3168)
1E3162:  ADD             R0, PC; RwEngineInstance_ptr
1E3164:  ADD             R1, PC; dword_6BD044
1E3166:  LDR             R0, [R0]; RwEngineInstance
1E3168:  LDR             R1, [R1]
1E316A:  LDR             R0, [R0]
1E316C:  STR             R2, [R0,R1]
1E316E:  LDR             R0, =(dword_6BD048 - 0x1E3174)
1E3170:  ADD             R0, PC; dword_6BD048
1E3172:  LDR             R1, [R0]
1E3174:  SUBS            R1, #1
1E3176:  STR             R1, [R0]
1E3178:  MOV             R0, R4
1E317A:  POP             {R4,R6,R7,PC}
