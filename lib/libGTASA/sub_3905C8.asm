; =========================================================
; Game Engine Function: sub_3905C8
; Address            : 0x3905C8 - 0x3905EE
; =========================================================

3905C8:  PUSH            {R4,R5,R7,LR}
3905CA:  ADD             R7, SP, #8
3905CC:  MOV             R4, R0
3905CE:  MOV             R5, R1
3905D0:  LDR             R0, [R4,#0x14]; int
3905D2:  BLX             j__Z23ConvertBoneTag2BoneNamei; ConvertBoneTag2BoneName(int)
3905D6:  MOV             R1, R0; char *
3905D8:  CBZ             R1, locret_3905EC
3905DA:  MOV             R0, R5; char *
3905DC:  BLX             strcasecmp
3905E0:  CMP             R0, #0
3905E2:  IT NE
3905E4:  POPNE           {R4,R5,R7,PC}
3905E6:  LDR             R0, =(dword_942EC8 - 0x3905EC)
3905E8:  ADD             R0, PC; dword_942EC8
3905EA:  STR             R4, [R0]
3905EC:  POP             {R4,R5,R7,PC}
