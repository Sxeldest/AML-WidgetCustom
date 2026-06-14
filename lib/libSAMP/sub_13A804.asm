; =========================================================
; Game Engine Function: sub_13A804
; Address            : 0x13A804 - 0x13A874
; =========================================================

13A804:  PUSH            {R4,R5,R7,LR}
13A806:  ADD             R7, SP, #8
13A808:  SUB             SP, SP, #0x28; float
13A80A:  MOV             R4, R0
13A80C:  BL              sub_12BC78
13A810:  LDR             R0, =(_ZTV11DialogTitle - 0x13A816); `vtable for'DialogTitle ...
13A812:  ADD             R0, PC; `vtable for'DialogTitle
13A814:  ADDS            R0, #8
13A816:  STR             R0, [R4]
13A818:  MOVS            R0, #0x78 ; 'x'; unsigned int
13A81A:  BLX             j__Znwj; operator new(uint)
13A81E:  LDR             R1, =(aTitle - 0x13A826); "Title" ...
13A820:  MOV             R5, R0
13A822:  ADD             R1, PC; "Title"
13A824:  ADD             R0, SP, #0x30+var_14; int
13A826:  BL              sub_DC6DC
13A82A:  LDR             R0, =(off_234980 - 0x13A83A)
13A82C:  VMOV.F32        S0, #0.5
13A830:  VMOV.F32        Q8, #1.0
13A834:  ADD             R2, SP, #0x30+var_28; int
13A836:  ADD             R0, PC; off_234980
13A838:  LDR             R0, [R0]; dword_238EC0
13A83A:  VST1.64         {D16-D17}, [R2]
13A83E:  VLDR            S2, [R0]
13A842:  VMUL.F32        S0, S2, S0
13A846:  ADD             R1, SP, #0x30+var_14; int
13A848:  MOV             R0, R5; int
13A84A:  MOVS            R3, #0; int
13A84C:  VSTR            S0, [SP,#0x30+var_30]
13A850:  BL              sub_13D3DC
13A854:  LDRB.W          R0, [SP,#0x30+var_14]
13A858:  STR             R5, [R4,#0x54]
13A85A:  LSLS            R0, R0, #0x1F
13A85C:  BEQ             loc_13A866
13A85E:  LDR             R0, [SP,#0x30+var_C]; void *
13A860:  BLX             j__ZdlPv; operator delete(void *)
13A864:  LDR             R5, [R4,#0x54]
13A866:  MOV             R0, R4
13A868:  MOV             R1, R5
13A86A:  BL              sub_12BDF6
13A86E:  MOV             R0, R4
13A870:  ADD             SP, SP, #0x28 ; '('
13A872:  POP             {R4,R5,R7,PC}
