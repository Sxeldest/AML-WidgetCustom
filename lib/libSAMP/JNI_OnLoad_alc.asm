; =========================================================
; Game Engine Function: JNI_OnLoad_alc
; Address            : 0x1B9B70 - 0x1B9BA0
; =========================================================

1B9B70:  PUSH            {R11,LR}
1B9B74:  MOV             R11, SP
1B9B78:  LDR             R1, =(dword_382774 - 0x1B9B8C)
1B9B7C:  LDR             R2, =(dword_382778 - 0x1B9B90)
1B9B80:  LDR             R3, =(sub_1B9BAC - 0x1B9B94)
1B9B84:  STR             R0, [PC,R1]; dword_382774
1B9B88:  ADD             R0, PC, R2; dword_382778 ; key
1B9B8C:  ADD             R1, PC, R3; sub_1B9BAC ; destr_function
1B9B90:  BL              pthread_key_create
1B9B94:  MOV             R0, #0x10002
1B9B9C:  POP             {R11,PC}
