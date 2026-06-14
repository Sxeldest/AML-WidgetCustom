; =========================================================
; Game Engine Function: sub_115930
; Address            : 0x115930 - 0x115970
; =========================================================

115930:  PUSH            {R7,LR}
115932:  MOV             R7, SP
115934:  LDR             R0, =(byte_2634D0 - 0x11593A)
115936:  ADD             R0, PC; byte_2634D0
115938:  LDRB            R0, [R0]
11593A:  DMB.W           ISH
11593E:  LSLS            R0, R0, #0x1F
115940:  IT NE
115942:  POPNE           {R7,PC}
115944:  LDR             R0, =(byte_2634D0 - 0x11594A)
115946:  ADD             R0, PC; byte_2634D0 ; __guard *
115948:  BLX             j___cxa_guard_acquire
11594C:  CBZ             R0, locret_11596E
11594E:  LDR             R1, =(unk_2634B8 - 0x11595A)
115950:  MOVS            R3, #0
115952:  LDR             R0, =(sub_115328+1 - 0x11595C)
115954:  LDR             R2, =(off_22A540 - 0x11595E)
115956:  ADD             R1, PC; unk_2634B8 ; obj
115958:  ADD             R0, PC; sub_115328 ; lpfunc
11595A:  ADD             R2, PC; off_22A540 ; lpdso_handle
11595C:  STR             R3, [R1,#(dword_2634C8 - 0x2634B8)]
11595E:  BLX             __cxa_atexit
115962:  LDR             R0, =(byte_2634D0 - 0x115968)
115964:  ADD             R0, PC; byte_2634D0
115966:  POP.W           {R7,LR}
11596A:  B.W             sub_2242B0
11596E:  POP             {R7,PC}
