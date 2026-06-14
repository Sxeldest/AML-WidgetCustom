; =========================================================
; Game Engine Function: sub_139C78
; Address            : 0x139C78 - 0x139CC8
; =========================================================

139C78:  PUSH            {R4,R5,R7,LR}
139C7A:  ADD             R7, SP, #8
139C7C:  LDR             R1, =(unk_3141C8 - 0x139C8C)
139C7E:  VMOV.I32        Q8, #0
139C82:  LDR             R0, =(sub_138A7C+1 - 0x139C90)
139C84:  MOV.W           R3, #0x3F800000
139C88:  ADD             R1, PC; unk_3141C8 ; obj
139C8A:  LDR             R4, =(off_22A540 - 0x139C94)
139C8C:  ADD             R0, PC; sub_138A7C ; lpfunc
139C8E:  MOV             R2, R1
139C90:  ADD             R4, PC; off_22A540
139C92:  VST1.64         {D16-D17}, [R2]!
139C96:  STR             R3, [R2]
139C98:  MOV             R2, R4; lpdso_handle
139C9A:  BLX             __cxa_atexit
139C9E:  LDR             R1, =(dword_3141E8 - 0x139CAA)
139CA0:  MOVS            R5, #0
139CA2:  LDR             R0, =(sub_138A80+1 - 0x139CAC)
139CA4:  MOV             R2, R4; lpdso_handle
139CA6:  ADD             R1, PC; dword_3141E8 ; obj
139CA8:  ADD             R0, PC; sub_138A80 ; lpfunc
139CAA:  STRD.W          R5, R5, [R1]
139CAE:  STR             R5, [R1,#(dword_3141F0 - 0x3141E8)]
139CB0:  BLX             __cxa_atexit
139CB4:  LDR             R1, =(dword_3141C4 - 0x139CBE)
139CB6:  MOV             R2, R4
139CB8:  LDR             R0, =(sub_1119DE+1 - 0x139CC0)
139CBA:  ADD             R1, PC; dword_3141C4
139CBC:  ADD             R0, PC; sub_1119DE
139CBE:  STR             R5, [R1]
139CC0:  POP.W           {R4,R5,R7,LR}
139CC4:  B.W             sub_224250
