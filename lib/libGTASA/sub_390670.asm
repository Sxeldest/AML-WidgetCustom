; =========================================================
; Game Engine Function: sub_390670
; Address            : 0x390670 - 0x390692
; =========================================================

390670:  PUSH            {R4,R5,R7,LR}
390672:  ADD             R7, SP, #8
390674:  MOV             R4, R0
390676:  MOV             R5, R1
390678:  LDR             R0, [R4,#0x14]; int
39067A:  BLX             j__Z23ConvertBoneTag2BoneNamei; ConvertBoneTag2BoneName(int)
39067E:  CBZ             R0, locret_390690
390680:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
390684:  CMP             R0, R5
390686:  IT NE
390688:  POPNE           {R4,R5,R7,PC}
39068A:  LDR             R0, =(dword_942EC8 - 0x390690)
39068C:  ADD             R0, PC; dword_942EC8
39068E:  STR             R4, [R0]
390690:  POP             {R4,R5,R7,PC}
