; =========================================================
; Game Engine Function: sub_390698
; Address            : 0x390698 - 0x3906B8
; =========================================================

390698:  PUSH            {R4,R5,R7,LR}
39069A:  ADD             R7, SP, #8
39069C:  MOV             R4, R0
39069E:  MOV             R5, R1
3906A0:  LDR             R0, [R4,#0x10]
3906A2:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
3906A6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
3906AA:  CMP             R0, R5
3906AC:  IT NE
3906AE:  POPNE           {R4,R5,R7,PC}
3906B0:  LDR             R0, =(dword_942EC8 - 0x3906B6)
3906B2:  ADD             R0, PC; dword_942EC8
3906B4:  STR             R4, [R0]
3906B6:  POP             {R4,R5,R7,PC}
