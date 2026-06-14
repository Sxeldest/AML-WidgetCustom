; =========================================================
; Game Engine Function: _ZN14MainMenuScreen6UpdateEf
; Address            : 0x29BFFC - 0x29C02A
; =========================================================

29BFFC:  PUSH            {R4,R5,R7,LR}
29BFFE:  ADD             R7, SP, #8
29C000:  MOV             R5, R0
29C002:  MOV             R4, R1
29C004:  LDRB            R0, [R5,#0xD]
29C006:  CBNZ            R0, loc_29C01E
29C008:  MOVS            R0, #0
29C00A:  BLX             j__Z17LIB_KeyboardState13OSKeyboardKey; LIB_KeyboardState(OSKeyboardKey)
29C00E:  CMP             R0, #3
29C010:  BNE             loc_29C01E
29C012:  LDR             R0, =(RsGlobal_ptr - 0x29C01A)
29C014:  MOVS            R1, #1
29C016:  ADD             R0, PC; RsGlobal_ptr
29C018:  LDR             R0, [R0]; RsGlobal
29C01A:  STR             R1, [R0,#(dword_9FC90C - 0x9FC8FC)]
29C01C:  POP             {R4,R5,R7,PC}
29C01E:  MOV             R0, R5; this
29C020:  MOV             R1, R4; float
29C022:  POP.W           {R4,R5,R7,LR}
29C026:  B.W             j_j__ZN10FlowScreen6UpdateEf; j_FlowScreen::Update(float)
