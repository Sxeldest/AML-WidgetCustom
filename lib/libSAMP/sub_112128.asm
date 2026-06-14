; =========================================================
; Game Engine Function: sub_112128
; Address            : 0x112128 - 0x112168
; =========================================================

112128:  PUSH            {R7,LR}
11212A:  MOV             R7, SP
11212C:  LDR             R0, =(byte_263458 - 0x112132)
11212E:  ADD             R0, PC; byte_263458
112130:  LDRB            R0, [R0]
112132:  DMB.W           ISH
112136:  LSLS            R0, R0, #0x1F
112138:  IT NE
11213A:  POPNE           {R7,PC}
11213C:  LDR             R0, =(byte_263458 - 0x112142)
11213E:  ADD             R0, PC; byte_263458 ; __guard *
112140:  BLX             j___cxa_guard_acquire
112144:  CBZ             R0, locret_112166
112146:  LDR             R1, =(unk_263440 - 0x112152)
112148:  MOVS            R3, #0
11214A:  LDR             R0, =(sub_10CC6C+1 - 0x112154)
11214C:  LDR             R2, =(off_22A540 - 0x112156)
11214E:  ADD             R1, PC; unk_263440 ; obj
112150:  ADD             R0, PC; sub_10CC6C ; lpfunc
112152:  ADD             R2, PC; off_22A540 ; lpdso_handle
112154:  STR             R3, [R1,#(dword_263450 - 0x263440)]
112156:  BLX             __cxa_atexit
11215A:  LDR             R0, =(byte_263458 - 0x112160)
11215C:  ADD             R0, PC; byte_263458
11215E:  POP.W           {R7,LR}
112162:  B.W             sub_2242B0
112166:  POP             {R7,PC}
