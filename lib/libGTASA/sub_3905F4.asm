; =========================================================
; Game Engine Function: sub_3905F4
; Address            : 0x3905F4 - 0x390618
; =========================================================

3905F4:  PUSH            {R4,R5,R7,LR}
3905F6:  ADD             R7, SP, #8
3905F8:  MOV             R4, R0
3905FA:  MOV             R5, R1
3905FC:  LDR             R0, [R4,#0x10]
3905FE:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
390602:  MOV             R1, R0; char *
390604:  MOV             R0, R5; char *
390606:  BLX             strcasecmp
39060A:  CMP             R0, #0
39060C:  IT NE
39060E:  POPNE           {R4,R5,R7,PC}
390610:  LDR             R0, =(dword_942EC8 - 0x390616)
390612:  ADD             R0, PC; dword_942EC8
390614:  STR             R4, [R0]
390616:  POP             {R4,R5,R7,PC}
