; =========================================================
; Game Engine Function: _ZN13CPedAttractor13SetTaskForPedEP4CPedP5CTask
; Address            : 0x4A877C - 0x4A898A
; =========================================================

4A877C:  PUSH            {R4-R7,LR}
4A877E:  ADD             R7, SP, #0xC
4A8780:  PUSH.W          {R8-R11}
4A8784:  SUB             SP, SP, #4
4A8786:  MOV             R10, R0
4A8788:  MOV             R8, R2
4A878A:  LDR.W           R5, [R10,#0x28]
4A878E:  MOV             R6, R1
4A8790:  CMP             R5, #1
4A8792:  BLT             loc_4A87B0
4A8794:  LDR.W           R0, [R10,#0x2C]
4A8798:  ADD.W           R4, R0, #0x10
4A879C:  MOVS            R0, #0
4A879E:  LDR.W           R1, [R4,#-0x10]
4A87A2:  CMP             R1, R6
4A87A4:  BEQ.W           loc_4A88BA
4A87A8:  ADDS            R0, #1
4A87AA:  ADDS            R4, #0x14
4A87AC:  CMP             R0, R5
4A87AE:  BLT             loc_4A879E
4A87B0:  LDR.W           R1, [R10,#0x24]
4A87B4:  ADDS            R0, R5, #1
4A87B6:  CMP             R1, R0
4A87B8:  BCS             loc_4A8806
4A87BA:  MOVW            R1, #0xAAAB
4A87BE:  LSLS            R0, R0, #2
4A87C0:  MOVT            R1, #0xAAAA
4A87C4:  UMULL.W         R0, R1, R0, R1
4A87C8:  MOVS            R0, #3
4A87CA:  ADD.W           R11, R0, R1,LSR#1
4A87CE:  ADD.W           R0, R11, R11,LSL#2
4A87D2:  LSLS            R0, R0, #2; byte_count
4A87D4:  BLX             malloc
4A87D8:  LDR.W           R9, [R10,#0x2C]
4A87DC:  MOV             R4, R0
4A87DE:  CMP.W           R9, #0
4A87E2:  BEQ             loc_4A87FC
4A87E4:  ADD.W           R0, R5, R5,LSL#2
4A87E8:  MOV             R1, R9; src
4A87EA:  LSLS            R2, R0, #2; n
4A87EC:  MOV             R0, R4; dest
4A87EE:  BLX             memmove_1
4A87F2:  MOV             R0, R9; p
4A87F4:  BLX             free
4A87F8:  LDR.W           R5, [R10,#0x28]
4A87FC:  STR.W           R4, [R10,#0x2C]
4A8800:  STR.W           R11, [R10,#0x24]
4A8804:  B               loc_4A880A
4A8806:  LDR.W           R4, [R10,#0x2C]
4A880A:  ADD.W           R1, R5, R5,LSL#2
4A880E:  MOV.W           R2, #0xFFFFFFFF
4A8812:  MOVS            R3, #0
4A8814:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A8822)
4A8816:  STR.W           R6, [R4,R1,LSL#2]
4A881A:  ADD.W           R1, R4, R1,LSL#2
4A881E:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A8820:  STRD.W          R8, R2, [R1,#4]
4A8824:  STR             R3, [R1,#0xC]
4A8826:  STRB            R3, [R1,#0x10]
4A8828:  LDRB.W          R2, [R7,#var_1D]
4A882C:  LDRH.W          R3, [R7,#var_1F]
4A8830:  STRB            R2, [R1,#0x13]
4A8832:  STRH.W          R3, [R1,#0x11]
4A8836:  LDR.W           R1, [R10,#0x28]
4A883A:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A883C:  ADDS            R1, #1
4A883E:  STR.W           R1, [R10,#0x28]
4A8842:  LDRD.W          R1, R6, [R0]; CPedAttractor::ms_tasks
4A8846:  ADDS            R0, R6, #1
4A8848:  CMP             R1, R0
4A884A:  BCS             loc_4A889A
4A884C:  MOVW            R1, #0xAAAB
4A8850:  LSLS            R0, R0, #2
4A8852:  MOVT            R1, #0xAAAA
4A8856:  UMULL.W         R0, R1, R0, R1
4A885A:  MOVS            R0, #3
4A885C:  ADD.W           R9, R0, R1,LSR#1
4A8860:  MOV.W           R0, R9,LSL#2; byte_count
4A8864:  BLX             malloc
4A8868:  MOV             R5, R0
4A886A:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A8870)
4A886C:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A886E:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A8870:  LDR             R4, [R0,#(dword_9EE2C4 - 0x9EE2BC)]
4A8872:  CBZ             R4, loc_4A888C
4A8874:  LSLS            R2, R6, #2; n
4A8876:  MOV             R0, R5; dest
4A8878:  MOV             R1, R4; src
4A887A:  BLX             memmove_1
4A887E:  MOV             R0, R4; p
4A8880:  BLX             free
4A8884:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A888A)
4A8886:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A8888:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A888A:  LDR             R6, [R0,#(dword_9EE2C0 - 0x9EE2BC)]
4A888C:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A8892)
4A888E:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A8890:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A8892:  STR             R5, [R0,#(dword_9EE2C4 - 0x9EE2BC)]
4A8894:  STR.W           R9, [R0]; CPedAttractor::ms_tasks
4A8898:  B               loc_4A88A2
4A889A:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A88A0)
4A889C:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A889E:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A88A0:  LDR             R5, [R0,#(dword_9EE2C4 - 0x9EE2BC)]
4A88A2:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A88A8)
4A88A4:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A88A6:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A88A8:  STR.W           R8, [R5,R6,LSL#2]
4A88AC:  LDR             R1, [R0,#(dword_9EE2C0 - 0x9EE2BC)]
4A88AE:  ADDS            R1, #1
4A88B0:  STR             R1, [R0,#(dword_9EE2C0 - 0x9EE2BC)]
4A88B2:  ADD             SP, SP, #4
4A88B4:  POP.W           {R8-R11}
4A88B8:  POP             {R4-R7,PC}
4A88BA:  LDRB            R0, [R4]
4A88BC:  CBNZ            R0, loc_4A8912
4A88BE:  LDR.W           R0, [R4,#-0xC]
4A88C2:  CBZ             R0, loc_4A8912
4A88C4:  LDR             R1, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A88CA)
4A88C6:  ADD             R1, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A88C8:  LDR             R1, [R1]; CPedAttractor::ms_tasks ...
4A88CA:  LDR             R1, [R1,#(dword_9EE2C0 - 0x9EE2BC)]
4A88CC:  CBZ             R1, loc_4A890C
4A88CE:  LDR             R2, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A88D6)
4A88D0:  MOVS            R6, #0
4A88D2:  ADD             R2, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A88D4:  LDR             R3, [R2]; CPedAttractor::ms_tasks ...
4A88D6:  MOV             R2, #0xFFFFFFFC
4A88DA:  ADD.W           R2, R2, R1,LSL#2; n
4A88DE:  LDR             R3, [R3,#(dword_9EE2C4 - 0x9EE2BC)]
4A88E0:  LDR             R5, [R3]
4A88E2:  CMP             R5, R0
4A88E4:  BEQ             loc_4A88F2
4A88E6:  ADDS            R6, #1
4A88E8:  ADDS            R3, #4
4A88EA:  SUBS            R2, #4
4A88EC:  CMP             R6, R1
4A88EE:  BCC             loc_4A88E0
4A88F0:  B               loc_4A890A
4A88F2:  ADDS            R1, R3, #4; src
4A88F4:  MOV             R0, R3; dest
4A88F6:  BLX             memmove_1
4A88FA:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A8900)
4A88FC:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A88FE:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A8900:  LDR             R1, [R0,#(dword_9EE2C0 - 0x9EE2BC)]
4A8902:  SUBS            R1, #1
4A8904:  STR             R1, [R0,#(dword_9EE2C0 - 0x9EE2BC)]
4A8906:  LDR.W           R0, [R4,#-0xC]
4A890A:  CBZ             R0, loc_4A8912
4A890C:  LDR             R1, [R0]
4A890E:  LDR             R1, [R1,#4]
4A8910:  BLX             R1
4A8912:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A891C)
4A8914:  MOVS            R1, #0
4A8916:  STRB            R1, [R4]
4A8918:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A891A:  STR.W           R8, [R4,#-0xC]
4A891E:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A8920:  LDRD.W          R1, R6, [R0]; CPedAttractor::ms_tasks
4A8924:  ADDS            R0, R6, #1
4A8926:  CMP             R1, R0
4A8928:  BCS             loc_4A897C
4A892A:  MOVW            R1, #0xAAAB
4A892E:  LSLS            R0, R0, #2
4A8930:  MOVT            R1, #0xAAAA
4A8934:  UMULL.W         R0, R1, R0, R1
4A8938:  MOVS            R0, #3
4A893A:  ADD.W           R9, R0, R1,LSR#1
4A893E:  MOV.W           R0, R9,LSL#2; byte_count
4A8942:  BLX             malloc
4A8946:  MOV             R5, R0
4A8948:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A894E)
4A894A:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A894C:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A894E:  LDR             R4, [R0,#(dword_9EE2C4 - 0x9EE2BC)]
4A8950:  CBZ             R4, loc_4A896A
4A8952:  LSLS            R2, R6, #2; n
4A8954:  MOV             R0, R5; dest
4A8956:  MOV             R1, R4; src
4A8958:  BLX             memmove_1
4A895C:  MOV             R0, R4; p
4A895E:  BLX             free
4A8962:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A8968)
4A8964:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A8966:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A8968:  LDR             R6, [R0,#(dword_9EE2C0 - 0x9EE2BC)]
4A896A:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A8970)
4A896C:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A896E:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A8970:  STR             R5, [R0,#(dword_9EE2C4 - 0x9EE2BC)]
4A8972:  STR.W           R9, [R0]; CPedAttractor::ms_tasks
4A8976:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A897C)
4A8978:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A897A:  B               loc_4A88A6
4A897C:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A8982)
4A897E:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A8980:  LDR             R0, [R0]; CPedAttractor::ms_tasks ...
4A8982:  LDR             R5, [R0,#(dword_9EE2C4 - 0x9EE2BC)]
4A8984:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x4A898A)
4A8986:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
4A8988:  B               loc_4A88A6
