; =========================================================
; Game Engine Function: _Z24LoadingScreenLoadingFilePKc
; Address            : 0x466958 - 0x46698C
; =========================================================

466958:  PUSH            {R4,R5,R7,LR}
46695A:  ADD             R7, SP, #8
46695C:  MOVS            R1, #0x5C ; '\'; int
46695E:  MOV             R4, R0
466960:  BLX             strrchr
466964:  LDR             R2, =(gString_ptr - 0x466972)
466966:  CMP             R0, #0
466968:  LDR             R1, =(aLoadingS_0 - 0x466974); "Loading %s"
46696A:  IT NE
46696C:  ADDNE           R4, R0, #1
46696E:  ADD             R2, PC; gString_ptr
466970:  ADD             R1, PC; "Loading %s"
466972:  LDR             R5, [R2]; gString
466974:  MOV             R2, R4
466976:  MOV             R0, R5
466978:  BL              sub_5E6BC0
46697C:  LDR             R0, =(aLoadingTheGame_0 - 0x466986); "Loading the Game"
46697E:  MOV             R1, R5; char *
466980:  MOVS            R2, #0; char *
466982:  ADD             R0, PC; "Loading the Game"
466984:  POP.W           {R4,R5,R7,LR}
466988:  B.W             sub_198DCC
