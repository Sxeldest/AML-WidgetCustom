; =========================================================
; Game Engine Function: _Z19RpWorldRemoveCameraP7RpWorldP8RwCamera
; Address            : 0x21E028 - 0x21E060
; =========================================================

21E028:  PUSH            {R4,R5,R7,LR}
21E02A:  ADD             R7, SP, #8
21E02C:  MOV             R4, R0
21E02E:  LDR             R0, =(dword_6BD638 - 0x21E034)
21E030:  ADD             R0, PC; dword_6BD638
21E032:  LDR             R0, [R0]
21E034:  ADDS            R5, R1, R0
21E036:  LDR             R0, [R5,#0xC]
21E038:  CBZ             R0, loc_21E05A
21E03A:  LDR             R0, [R5]
21E03C:  CBZ             R0, loc_21E04C
21E03E:  LDR             R1, =(RwEngineInstance_ptr - 0x21E044)
21E040:  ADD             R1, PC; RwEngineInstance_ptr
21E042:  LDR             R1, [R1]; RwEngineInstance
21E044:  LDR             R1, [R1]
21E046:  LDR.W           R1, [R1,#0x130]
21E04A:  BLX             R1
21E04C:  MOVS            R0, #0
21E04E:  STRD.W          R0, R0, [R5]
21E052:  STRD.W          R0, R0, [R5,#8]
21E056:  MOV             R0, R4
21E058:  POP             {R4,R5,R7,PC}
21E05A:  MOVS            R4, #0
21E05C:  MOV             R0, R4
21E05E:  POP             {R4,R5,R7,PC}
