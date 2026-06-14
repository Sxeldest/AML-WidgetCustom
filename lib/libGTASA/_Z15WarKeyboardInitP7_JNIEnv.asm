; =========================================================
; Game Engine Function: _Z15WarKeyboardInitP7_JNIEnv
; Address            : 0x2685B0 - 0x268602
; =========================================================

2685B0:  PUSH            {R4,R5,R7,LR}
2685B2:  ADD             R7, SP, #8
2685B4:  MOV             R4, R0
2685B6:  LDR             R1, =(aComWardrumstud_1 - 0x2685BE); "com/wardrumstudios/utils/WarMedia"
2685B8:  LDR             R0, [R4]
2685BA:  ADD             R1, PC; "com/wardrumstudios/utils/WarMedia"
2685BC:  LDR             R2, [R0,#0x18]
2685BE:  MOV             R0, R4
2685C0:  BLX             R2
2685C2:  MOV             R1, R0
2685C4:  LDR             R0, =(WarKeyboard_class_ptr - 0x2685CC)
2685C6:  LDR             R2, =(aShowkeyboard - 0x2685D0); "ShowKeyboard"
2685C8:  ADD             R0, PC; WarKeyboard_class_ptr
2685CA:  LDR             R3, =(aIV - 0x2685D4); "(I)V"
2685CC:  ADD             R2, PC; "ShowKeyboard"
2685CE:  LDR             R5, [R0]; WarKeyboard_class
2685D0:  ADD             R3, PC; "(I)V"
2685D2:  STR             R1, [R5]
2685D4:  LDR             R0, [R4]
2685D6:  LDR.W           R12, [R0,#0x84]
2685DA:  MOV             R0, R4
2685DC:  BLX             R12
2685DE:  LDR             R1, =(s_ShowKeyboard_ptr - 0x2685E8)
2685E0:  ADR             R3, dword_26861C
2685E2:  LDR             R2, =(aIskeyboardshow - 0x2685EA); "IsKeyboardShown"
2685E4:  ADD             R1, PC; s_ShowKeyboard_ptr
2685E6:  ADD             R2, PC; "IsKeyboardShown"
2685E8:  LDR             R1, [R1]; s_ShowKeyboard
2685EA:  STR             R0, [R1]
2685EC:  LDR             R0, [R4]
2685EE:  LDR             R1, [R5]
2685F0:  LDR.W           R5, [R0,#0x84]
2685F4:  MOV             R0, R4
2685F6:  BLX             R5
2685F8:  LDR             R1, =(s_IsKeyboardShown_ptr - 0x2685FE)
2685FA:  ADD             R1, PC; s_IsKeyboardShown_ptr
2685FC:  LDR             R1, [R1]; s_IsKeyboardShown
2685FE:  STR             R0, [R1]
268600:  POP             {R4,R5,R7,PC}
