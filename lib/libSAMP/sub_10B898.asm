; =========================================================
; Game Engine Function: sub_10B898
; Address            : 0x10B898 - 0x10B8CE
; =========================================================

10B898:  PUSH            {R4,R6,R7,LR}
10B89A:  ADD             R7, SP, #8
10B89C:  LDR             R0, =(sub_10A770+1 - 0x10B8A6)
10B89E:  LDR             R1, =(dword_263080 - 0x10B8A8)
10B8A0:  LDR             R4, =(off_22A540 - 0x10B8AA)
10B8A2:  ADD             R0, PC; sub_10A770 ; lpfunc
10B8A4:  ADD             R1, PC; dword_263080 ; obj
10B8A6:  ADD             R4, PC; off_22A540
10B8A8:  MOV             R2, R4; lpdso_handle
10B8AA:  BLX             __cxa_atexit
10B8AE:  LDR             R0, =(sub_10A984+1 - 0x10B8B8)
10B8B0:  MOV             R2, R4; lpdso_handle
10B8B2:  LDR             R1, =(dword_263078 - 0x10B8BA)
10B8B4:  ADD             R0, PC; sub_10A984 ; lpfunc
10B8B6:  ADD             R1, PC; dword_263078 ; obj
10B8B8:  BLX             __cxa_atexit
10B8BC:  LDR             R0, =(sub_10A9BA+1 - 0x10B8C6)
10B8BE:  MOV             R2, R4
10B8C0:  LDR             R1, =(dword_263070 - 0x10B8C8)
10B8C2:  ADD             R0, PC; sub_10A9BA
10B8C4:  ADD             R1, PC; dword_263070
10B8C6:  POP.W           {R4,R6,R7,LR}
10B8CA:  B.W             sub_224250
