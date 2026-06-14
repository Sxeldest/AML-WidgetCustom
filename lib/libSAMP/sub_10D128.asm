; =========================================================
; Game Engine Function: sub_10D128
; Address            : 0x10D128 - 0x10D168
; =========================================================

10D128:  PUSH            {R7,LR}
10D12A:  MOV             R7, SP
10D12C:  LDR             R0, =(byte_263248 - 0x10D132)
10D12E:  ADD             R0, PC; byte_263248
10D130:  LDRB            R0, [R0]
10D132:  DMB.W           ISH
10D136:  LSLS            R0, R0, #0x1F
10D138:  IT NE
10D13A:  POPNE           {R7,PC}
10D13C:  LDR             R0, =(byte_263248 - 0x10D142)
10D13E:  ADD             R0, PC; byte_263248 ; __guard *
10D140:  BLX             j___cxa_guard_acquire
10D144:  CBZ             R0, locret_10D166
10D146:  LDR             R1, =(unk_263230 - 0x10D152)
10D148:  MOVS            R3, #0
10D14A:  LDR             R0, =(sub_10D054+1 - 0x10D154)
10D14C:  LDR             R2, =(off_22A540 - 0x10D156)
10D14E:  ADD             R1, PC; unk_263230 ; obj
10D150:  ADD             R0, PC; sub_10D054 ; lpfunc
10D152:  ADD             R2, PC; off_22A540 ; lpdso_handle
10D154:  STR             R3, [R1,#(dword_263240 - 0x263230)]
10D156:  BLX             __cxa_atexit
10D15A:  LDR             R0, =(byte_263248 - 0x10D160)
10D15C:  ADD             R0, PC; byte_263248
10D15E:  POP.W           {R7,LR}
10D162:  B.W             sub_2242B0
10D166:  POP             {R7,PC}
