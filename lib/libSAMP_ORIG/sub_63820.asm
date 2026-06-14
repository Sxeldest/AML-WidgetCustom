; =========================================================
; Game Engine Function: sub_63820
; Address            : 0x63820 - 0x638C2
; =========================================================

63820:  PUSH            {R4-R7,LR}
63822:  ADD             R7, SP, #0xC
63824:  PUSH.W          {R11}
63828:  MOV             R4, R2
6382A:  LDR             R2, =(dword_1A3A6C - 0x63834)
6382C:  LDR             R3, =(dword_1A3A68 - 0x63836)
6382E:  LDR             R5, =(off_1A3A74 - 0x6383A)
63830:  ADD             R2, PC; dword_1A3A6C
63832:  ADD             R3, PC; dword_1A3A68
63834:  LDR             R6, =(dword_1A3A70 - 0x63840)
63836:  ADD             R5, PC; off_1A3A74
63838:  STR             R1, [R2]
6383A:  STR             R0, [R3]
6383C:  ADD             R6, PC; dword_1A3A70
6383E:  LDR             R3, [R5]
63840:  MOV             R2, R4
63842:  STR             R4, [R6]
63844:  BLX             R3
63846:  CBZ             R4, loc_63878
63848:  LDR             R0, =(byte_1A3BD8 - 0x6384E)
6384A:  ADD             R0, PC; byte_1A3BD8
6384C:  LDRB            R0, [R0]
6384E:  DMB.W           ISH
63852:  LSLS            R0, R0, #0x1F
63854:  BEQ             loc_63880
63856:  LDR             R5, =(unk_1A3BC0 - 0x6385C)
63858:  ADD             R5, PC; unk_1A3BC0
6385A:  MOV             R0, R5
6385C:  BL              sub_61DFE
63860:  LDR             R0, =(off_114B6C - 0x6386A)
63862:  MOV             R2, R5; fmt
63864:  LDR             R1, =(aSampOrig - 0x6386C); "SAMP_ORIG" ...
63866:  ADD             R0, PC; off_114B6C
63868:  ADD             R1, PC; "SAMP_ORIG"
6386A:  LDR             R6, [R0]; dword_116D04
6386C:  MOVS            R0, #4; prio
6386E:  LDR             R3, [R6]
63870:  BLX             __android_log_print
63874:  LDR             R0, [R6]
63876:  STR             R0, [R4,#0x14]
63878:  MOVS            R0, #0
6387A:  POP.W           {R11}
6387E:  POP             {R4-R7,PC}
63880:  LDR             R0, =(byte_1A3BD8 - 0x63886)
63882:  ADD             R0, PC; byte_1A3BD8 ; __guard *
63884:  BLX             j___cxa_guard_acquire
63888:  CMP             R0, #0
6388A:  BEQ             loc_63856
6388C:  LDR             R1, =(unk_1A3BC0 - 0x6389C)
6388E:  ADR             R0, dword_638D0
63890:  VLD1.64         {D16-D17}, [R0@128]
63894:  MOVW            R3, #0x5A3E
63898:  ADD             R1, PC; unk_1A3BC0 ; obj
6389A:  MOVW            R6, #0x603F
6389E:  LDR             R0, =(loc_61DE8+1 - 0x638B2)
638A0:  MOVT            R6, #0x7F7A
638A4:  LDR             R2, =(off_110560 - 0x638B4)
638A6:  STRH            R3, [R1,#(word_1A3BD4 - 0x1A3BC0)]
638A8:  MOV             R3, R1
638AA:  VST1.8          {D16-D17}, [R3@128]!
638AE:  ADD             R0, PC; loc_61DE8 ; lpfunc
638B0:  ADD             R2, PC; off_110560 ; lpdso_handle
638B2:  STR             R6, [R3]
638B4:  BLX             __cxa_atexit
638B8:  LDR             R0, =(byte_1A3BD8 - 0x638BE)
638BA:  ADD             R0, PC; byte_1A3BD8 ; __guard *
638BC:  BLX             j___cxa_guard_release
638C0:  B               loc_63856
