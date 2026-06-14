; =========================================================
; Game Engine Function: _ZN21CVehicleSaveStructure9ConstructEP8CVehicle
; Address            : 0x4848F8 - 0x484980
; =========================================================

4848F8:  PUSH            {R4,R5,R7,LR}
4848FA:  ADD             R7, SP, #8
4848FC:  MOV             R5, R1
4848FE:  MOV             R4, R0
484900:  LDR             R1, [R5,#0x14]
484902:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
484906:  LDRB.W          R0, [R5,#0x438]
48490A:  STRB.W          R0, [R4,#0x49]
48490E:  LDRB.W          R0, [R5,#0x439]
484912:  STRB.W          R0, [R4,#0x4A]
484916:  LDRB.W          R0, [R5,#0x43A]
48491A:  STRB.W          R0, [R4,#0x4B]
48491E:  LDRB.W          R0, [R5,#0x43B]
484922:  STRB.W          R0, [R4,#0x4C]
484926:  LDRH.W          R0, [R5,#0x460]
48492A:  STRH.W          R0, [R4,#0x4E]
48492E:  LDRB.W          R0, [R5,#0x48C]
484932:  STRB.W          R0, [R4,#0x50]
484936:  LDR.W           R0, [R5,#0x498]
48493A:  STR             R0, [R4,#0x54]
48493C:  LDR.W           R0, [R5,#0x4A0]
484940:  STR             R0, [R4,#0x58]
484942:  LDR.W           R0, [R5,#0x4A4]
484946:  STR             R0, [R4,#0x5C]
484948:  LDR.W           R0, [R5,#0x42C]
48494C:  LDR.W           R1, [R5,#0x430]
484950:  STR             R1, [R4,#0x64]
484952:  STR             R0, [R4,#0x60]
484954:  LDRB.W          R0, [R5,#0x4A8]
484958:  STRB.W          R0, [R4,#0x48]
48495C:  LDR.W           R0, [R5,#0x4CC]
484960:  STR             R0, [R4,#0x68]
484962:  LDR.W           R0, [R5,#0x508]
484966:  STR             R0, [R4,#0x6C]
484968:  LDR             R0, [R5,#0x44]
48496A:  STR             R0, [R4,#0x70]
48496C:  LDR.W           R0, [R5,#0x90]
484970:  STR             R0, [R4,#0x74]
484972:  LDR.W           R0, [R5,#0x94]
484976:  STR             R0, [R4,#0x78]
484978:  LDR.W           R0, [R5,#0xA4]
48497C:  STR             R0, [R4,#0x7C]
48497E:  POP             {R4,R5,R7,PC}
