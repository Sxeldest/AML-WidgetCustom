; =========================================================
; Game Engine Function: _Z23GetClothesModelFromNamePKc
; Address            : 0x4578F0 - 0x457996
; =========================================================

4578F0:  PUSH            {R4,R6,R7,LR}
4578F2:  ADD             R7, SP, #8
4578F4:  LDR             R1, =(aPlayerTorso+7 - 0x4578FC); "torso"
4578F6:  MOV             R4, R0
4578F8:  ADD             R1, PC; char *
4578FA:  BLX             strcmp
4578FE:  CBZ             R0, loc_457972
457900:  LDR             R1, =(aShead+1 - 0x457908); "head"
457902:  MOV             R0, R4; char *
457904:  ADD             R1, PC; "head"
457906:  BLX             strcmp
45790A:  CBZ             R0, loc_457976
45790C:  ADR             R1, aHands; "hands"
45790E:  MOV             R0, R4; char *
457910:  BLX             strcmp
457914:  CBZ             R0, loc_45797A
457916:  LDR             R1, =(aPlayerLegs+7 - 0x45791E); "legs"
457918:  MOV             R0, R4; char *
45791A:  ADD             R1, PC; char *
45791C:  BLX             strcmp
457920:  CBZ             R0, loc_45797E
457922:  LDR             R1, =(aPlayerFeet+7 - 0x45792A); "feet"
457924:  MOV             R0, R4; char *
457926:  ADD             R1, PC; char *
457928:  BLX             strcmp
45792C:  CBZ             R0, loc_457982
45792E:  LDR             R1, =(aNecklace - 0x457936); "necklace"
457930:  MOV             R0, R4; char *
457932:  ADD             R1, PC; "necklace"
457934:  BLX             strcmp
457938:  CBZ             R0, loc_457986
45793A:  LDR             R1, =(aStopwatch+4 - 0x457942); "watch"
45793C:  MOV             R0, R4; char *
45793E:  ADD             R1, PC; "watch"
457940:  BLX             strcmp
457944:  CBZ             R0, loc_45798A
457946:  LDR             R1, =(aGlasses - 0x45794E); "glasses"
457948:  MOV             R0, R4; char *
45794A:  ADD             R1, PC; "glasses"
45794C:  BLX             strcmp
457950:  CBZ             R0, loc_45798E
457952:  ADR             R1, off_4579BC; char *
457954:  MOV             R0, R4; char *
457956:  BLX             strcmp
45795A:  CBZ             R0, loc_457992
45795C:  LDR             R1, =(aExtra1 - 0x457964); "extra1"
45795E:  MOV             R0, R4; char *
457960:  ADD             R1, PC; "extra1"
457962:  BLX             strcmp
457966:  MOV             R1, R0
457968:  MOVS            R0, #0
45796A:  CMP             R1, #0
45796C:  IT EQ
45796E:  MOVEQ           R0, #9
457970:  POP             {R4,R6,R7,PC}
457972:  MOVS            R0, #0
457974:  POP             {R4,R6,R7,PC}
457976:  MOVS            R0, #1
457978:  POP             {R4,R6,R7,PC}
45797A:  MOVS            R0, #2
45797C:  POP             {R4,R6,R7,PC}
45797E:  MOVS            R0, #3
457980:  POP             {R4,R6,R7,PC}
457982:  MOVS            R0, #4
457984:  POP             {R4,R6,R7,PC}
457986:  MOVS            R0, #5
457988:  POP             {R4,R6,R7,PC}
45798A:  MOVS            R0, #6
45798C:  POP             {R4,R6,R7,PC}
45798E:  MOVS            R0, #7
457990:  POP             {R4,R6,R7,PC}
457992:  MOVS            R0, #8
457994:  POP             {R4,R6,R7,PC}
