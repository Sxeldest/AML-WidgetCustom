; =========================================================
; Game Engine Function: sub_21E424
; Address            : 0x21E424 - 0x21E44C
; =========================================================

21E424:  PUSH            {R4-R7,LR}
21E426:  ADD             R7, SP, #0xC
21E428:  PUSH.W          {R11}
21E42C:  MOV             R4, R0
21E42E:  LDR             R0, =(dword_6BD638 - 0x21E436)
21E430:  MOV             R5, R1
21E432:  ADD             R0, PC; dword_6BD638
21E434:  LDR             R1, [R0]
21E436:  LDR             R0, [R4,#4]
21E438:  ADDS            R6, R4, R1
21E43A:  CMP             R0, #0
21E43C:  IT NE
21E43E:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
21E442:  STR             R5, [R6,#0xC]
21E444:  MOV             R0, R4
21E446:  POP.W           {R11}
21E44A:  POP             {R4-R7,PC}
