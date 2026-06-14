; =========================================================
; Game Engine Function: _Z16RpWorldAddCameraP7RpWorldP8RwCamera
; Address            : 0x21E004 - 0x21E022
; =========================================================

21E004:  PUSH            {R4,R5,R7,LR}
21E006:  ADD             R7, SP, #8
21E008:  MOV             R4, R0
21E00A:  LDR             R0, =(dword_6BD638 - 0x21E010)
21E00C:  ADD             R0, PC; dword_6BD638
21E00E:  LDR             R2, [R0]
21E010:  LDR             R0, [R1,#4]
21E012:  ADDS            R5, R1, R2
21E014:  CMP             R0, #0
21E016:  IT NE
21E018:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
21E01C:  MOV             R0, R4
21E01E:  STR             R4, [R5,#0xC]
21E020:  POP             {R4,R5,R7,PC}
